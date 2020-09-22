VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Custom Popup Menus"
   ClientHeight    =   1245
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   3450
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1245
   ScaleWidth      =   3450
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txt 
      Height          =   630
      Left            =   330
      TabIndex        =   0
      Text            =   "Click Me"
      Top             =   255
      Width           =   2820
   End
   Begin VB.Menu mnupopup 
      Caption         =   "filr"
      Visible         =   0   'False
      Begin VB.Menu mnupopup1 
         Caption         =   "pop"
      End
      Begin VB.Menu mnupopup2 
         Caption         =   "goes"
      End
      Begin VB.Menu mnupopup3 
         Caption         =   "the"
      End
      Begin VB.Menu mnupopup4 
         Caption         =   "weasle"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub txt_MouseDown(Button As Integer, _
    Shift As Integer, _
    X As Single, Y As Single)

    If Button = vbRightButton Then
        txt.Enabled = False
        txt.Enabled = True
        PopupMenu mnupopup
    End If

End Sub
