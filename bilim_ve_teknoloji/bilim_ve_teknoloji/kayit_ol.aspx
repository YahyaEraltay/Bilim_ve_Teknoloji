<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="kayit_ol.aspx.cs" Inherits="bilim_ve_teknoloji.kayit_ol" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 291px;
            margin-top: -290px;
        }
        .met_sag {
  text-align: right;
           }
        .auto-style7 {
            width: 461px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
        <table align="center" class="auto-style7" >
            <tr>
                <td class="met_sag">İsim:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="İsminizi giriniz!" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
                
            </tr>
            <tr>
                <td class="met_sag">Soy İsim:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Soy isminizi giriniz!" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="met_sag">Email:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Email giriniz!" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="met_sag">Şifre:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Şifre giriniz!" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="met_sag">Cinsiyet:</td>
                <td> 
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="164px">
                        <asp:ListItem Value="E">Erkek</asp:ListItem>
                        <asp:ListItem Value="K">Kadın</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Cinsiyet seçiniz!" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <em>
                    <asp:Button ID="Button1" runat="server" Text="Kayıt Ol" OnClick="Button1_Click"   />
                    </em>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00CC00"></asp:Label>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
