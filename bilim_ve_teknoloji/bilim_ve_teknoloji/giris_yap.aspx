<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="giris_yap.aspx.cs" Inherits="bilim_ve_teknoloji.giris_yap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 291px;
            margin-top: -290px;
        }
        .met_sag {
  text-align: right;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
        <table align="center">
            <tr>
                <td class="met_sag">Email:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="met_sag">Şifre:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click"  />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center"> 
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>