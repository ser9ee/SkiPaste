Attribute VB_Name = "Module1"
Option Explicit

Sub PasteToVisibleCellsOnly()
    Dim DataObj As Object
    Dim ClipText As String
    Dim Lines() As String
    Dim TargetCell As Range
    Dim ws As Worksheet
    
    Dim visRange As Range
    Dim area As Range
    Dim lineIdx As Long
    Dim rCount As Long
    Dim i As Long
    Dim totalRows As Long
    Dim blockArr() As Variant
    
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
    
    On Error Resume Next
    Set visRange = ws.Range(TargetCell, ws.Cells(ws.Rows.Count, TargetCell.Column)).SpecialCells(xlCellTypeVisible)
    On Error GoTo Cleanup
    
    If visRange Is Nothing Then
        MsgBox "No visible cells found to paste into. Check your filter.", vbExclamation, "SkiPaste"
        GoTo Cleanup
    End If
    
    lineIdx = 0
    
    For Each area In visRange.Areas
        rCount = area.Rows.Count
        
        If lineIdx + rCount > totalRows Then
            rCount = totalRows - lineIdx
        End If
        
        If rCount > 0 Then
            ReDim blockArr(1 To rCount, 1 To 1)
            For i = 1 To rCount
                blockArr(i, 1) = Lines(lineIdx + i - 1)
            Next i
            area.Resize(rCount, 1).Value = blockArr
            lineIdx = lineIdx + rCount
        End If
        
        If lineIdx >= totalRows Then Exit For
    Next area
    
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
