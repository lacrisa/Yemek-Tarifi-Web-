<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Mesajlar.aspx.cs" Inherits="YemekTarifleri.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style13 {
            background-color: #CCCCCC;
        }

        .auto-style18 {
            width: 32px;
        }

        .auto-style20 {
            font-weight: bold;
            font-size: x-large;
        }
    
        .auto-style19 {
            width: 39px;
        }

        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            width: 351px;
        }
        .auto-style23 {
            text-align: right;
            width: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style13">
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style20" Height="34px" Text="+" Width="30px" OnClick="Button1_Click"/>
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style20" Height="36px" Text="-" Width="30px" OnClick="Button2_Click"/>
                    </strong></td>
                <td><strong>Mesaj Listesi</strong></td>
            </tr>
        </table>
        <strong></strong>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style22">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <a href='<%# Eval("MesajId", "MesajDetay.aspx?MesajId={0}") %>'><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/read.png" Width="30px" /> </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
