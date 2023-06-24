<%@ Page Title="" Language="C#" MasterPageFile="~/sablon.Master" AutoEventWireup="true" CodeBehind="forum.aspx.cs" Inherits="bilim_ve_teknoloji.forum" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 208px;
            margin-top: -290px;
        }
        .met_sag {
  text-align: right;
           }
        .auto-style7 {
            width: 461px;
        }

        .auto-style8 {
            width: 509px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style6">
        <table align="center" class="auto-style7" >
            <tr>
                <td class="met_sag">Konu:</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="konu_adi" DataValueField="konu_adi" AutoPostBack="True" Width="243px"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJE_DBConnectionString %>" SelectCommand="SELECT DISTINCT [konu_adi] FROM [TBL_KONU]"></asp:SqlDataSource>
                </td>
            </tr> 
            <tr>
                <td class="met_sag">Nickname:</td>
                <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="243px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="met_sag">Mesaj:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="81px" TextMode="MultiLine" Width="243px"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Gönder" Font-Bold="True" OnClick="Button1_Click" style="height: 29px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="met_ort">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                     <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="bilim_ve_teknoloji.DataSet1TableAdapters.TBL_MESAJTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_metin_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="nickname" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="konu" PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="TextBox2" Name="mesaj" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="Label1" Name="tarih" PropertyName="Text" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nickname" Type="String" />
                            <asp:Parameter Name="konu" Type="String" />
                            <asp:Parameter Name="mesaj" Type="String" />
                            <asp:Parameter Name="tarih" Type="String" />
                            <asp:Parameter Name="Original_metin_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
        </table>
    </div> <br /> 
    <div>
        <table align="center" class="auto-style8">
            <tr>
                <td>

                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PROJE_DBConnectionString %>" DeleteCommand="DELETE FROM [TBL_MESAJ] WHERE [metin_id] = @metin_id" InsertCommand="INSERT INTO [TBL_MESAJ] ([nickname], [konu], [mesaj], [tarih]) VALUES (@nickname, @konu, @mesaj, @tarih)" SelectCommand="SELECT * FROM [TBL_MESAJ] WHERE ([konu] = @konu)" UpdateCommand="UPDATE [TBL_MESAJ] SET [nickname] = @nickname, [konu] = @konu, [mesaj] = @mesaj, [tarih] = @tarih WHERE [metin_id] = @metin_id">
                        <DeleteParameters>
                            <asp:Parameter Name="metin_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="nickname" Type="String" />
                            <asp:Parameter Name="konu" Type="String" />
                            <asp:Parameter Name="mesaj" Type="String" />
                            <asp:Parameter Name="tarih" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="konu" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="nickname" Type="String" />
                            <asp:Parameter Name="konu" Type="String" />
                            <asp:Parameter Name="mesaj" Type="String" />
                            <asp:Parameter Name="tarih" Type="String" />
                            <asp:Parameter Name="metin_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="metin_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="574px" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="metin_id" HeaderText="metin_id" InsertVisible="False" ReadOnly="True" SortExpression="metin_id" Visible="False" />
                            <asp:BoundField DataField="nickname" HeaderText="Nickname" SortExpression="nickname" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="konu" HeaderText="Konu" InsertVisible="False" SortExpression="konu">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="mesaj" HeaderText="Mesaj" SortExpression="mesaj">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="tarih" HeaderText="Tarih" SortExpression="tarih" >
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>

                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
