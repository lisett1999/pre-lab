VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7275
   ClientLeft      =   3915
   ClientTop       =   2385
   ClientWidth     =   9870
   LinkTopic       =   "Form1"
   ScaleHeight     =   7275
   ScaleWidth      =   9870
   Begin VB.Timer Timer2 
      Interval        =   2
      Left            =   6480
      Top             =   3000
   End
   Begin VB.Timer Timer1 
      Interval        =   2
      Left            =   6480
      Top             =   2280
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      Height          =   1095
      Left            =   720
      Top             =   360
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
Form1.Height = 5500
Form1.Width = 12000

Shape1.Top = 0
Shape1.Left = 0
End Sub
Private Sub Timer1_Timer()
If Timer1.Interval = 1 Then
Shape1.Left = Shape1.Left - 30

If Shape1.Left < -80 Then
Timer1.Interval = 2
Else
Shape1.Left = Shape1.Left - 40
End If
End If

If Timer1.Interval = 2 Then
Shape1.Left = Shape1.Left + 40

If Shape1.Left > 5000 Then
Timer1.Interval = 1
Else
Shape1.Left = Shape1.Left + 30
End If
End If
End Sub
Private Sub Timer2_Timer()

If Timer2.Interval = 1 Then
Shape1.Top = Shape1.Top - 40

If Shape1.Top = 0 Then
Timer2.Interval = 2
Else

Shape1.Top = Shape1.Top - 40
End If
End If

If Timer2.Interval = 2 Then
Shape1.Top = Shape1.Top + 40

If Shape1.Top = 3480 Then
Timer2.Interval = 1
Else
Shape1.Top = Shape1.Top + 40
End If
End If
End Sub

