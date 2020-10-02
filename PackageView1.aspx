<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PackageView1.aspx.cs" Inherits="PackageView" MasterPageFile="~/MasterPage.master" %>

   <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div>
    
        <br />
        <br />
           <!-- showing data from package database -->
        <asp:DataList ID="DataList1" runat="server" CssClass="auto-style4" DataKeyField="Package_Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <table border="1" class="auto-style1">
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Package_Name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Package_Id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Package_Pic") %>' ImageAlign="Middle" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Discription") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="Label4" runat="server" Text="TK:"></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            <br />
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="133px" ImageUrl="~/Package/book now.png" Width="238px" PostBackUrl="~/Registration.aspx"/>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Package] WHERE ([Package_Id] = @Package_Id)">
            <!-- identify the package -->
            <SelectParameters>
                <asp:QueryStringParameter Name="Package_Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        width: 704px;
        height: 357px;
    }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
