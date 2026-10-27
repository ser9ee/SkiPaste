Attribute VB_Name = "Module1"
Option Explicit

Public Sub PasteToVisibleCellsOnly(Optional control As IRibbonControl)
    Dim DataObj As Object
    Dim ClipText As String
    Dim Lines() As String
    Dim TargetCell As Range
    Dim ws As Worksheet
    
    Dim lineIdx As Long
    Dim totalRows As Long
    Dim r As Long
    Dim maxRow As Long
    
    Dim prevScreen As Boolean
    Dim prevEvents As Boolean
    Dim prevCalc As XlCalculation
    
    If TypeName(Selection) <> "Range" Then Exit Sub
    Set TargetCell = ActiveCell
    Set ws = TargetCell.Worksheet
    
    On Error Resume Next
    Set DataObj = CreateObject("new:{1C3B4210-F441-11CE-B9EA-00AA006B1A69}")
    If DataObj Is Nothing Then Exit Sub
    DataObj.GetFromClipboard
    ClipText = DataObj.GetText
    On Error GoTo 0
    
    If Len(ClipText) = 0 Then Exit Sub
    
    ClipText = Replace(ClipText, vbCrLf, vbLf)
    ClipText = Replace(ClipText, vbCr, vbLf)
    
    Do While Right$(ClipText, 1) = vbLf
        ClipText = Left$(ClipText, Len(ClipText) - 1)
        If Len(ClipText) = 0 Then Exit Sub
    Loop
    
    Lines = Split(ClipText, vbLf)
    totalRows = UBound(Lines) - LBound(Lines) + 1
    
    If totalRows <= 0 Then Exit Sub
    
    With Application
        prevScreen = .ScreenUpdating
        prevEvents = .EnableEvents
        prevCalc = .Calculation
        .ScreenUpdating = False
        .EnableEvents = False
        .Calculation = xlCalculationManual
    End With
    
    On Error GoTo Cleanup
    
    maxRow = ws.Rows.Count
    lineIdx = 0
    For r = TargetCell.Row To maxRow
        If Not ws.Rows(r).Hidden Then
            If lineIdx >= totalRows Then Exit For
            ws.Cells(r, TargetCell.Column).Value = Lines(lineIdx)
            lineIdx = lineIdx + 1
        End If
    Next r
    
    If lineIdx < totalRows Then
        MsgBox "Not enough visible cells to paste all " & totalRows & " lines. Pasted " & lineIdx & " lines.", vbExclamation, "SkiPaste"
    End If
    
Cleanup:
    With Application
        .Calculation = prevCalc
        .EnableEvents = prevEvents
        .ScreenUpdating = prevScreen
        .CutCopyMode = False
    End With
    
    If Err.Number <> 0 Then
        MsgBox "Error during paste:" & vbCrLf & Err.Description, vbCritical, "SkiPaste"
        Err.Clear
    End If
End Sub

Public Sub RunSkiPaste()
    PasteToVisibleCellsOnly
End Sub
