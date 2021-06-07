<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifleri.Yemekler" %>
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
        
        .auto-style16 {
            text-align: left;
            width: 1074px;
        }

        .auto-style15 {
            font-size: large;
        }

        .auto-style14 {
            text-align: right;
        }

        .auto-style21 {
            margin-left: 40px;
        }
        .auto-style22 {
            border: 2px solid #456879;
            border-radius: 10px;
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
                <td><strong>Yemek Listesi</strong></td>
            </tr>
        </table>
        <strong></strong>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="449px">
            <ItemTemplate>
                <table class="auto-style9">
                    <tr>
                        <td class="auto-style16">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style15" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style14"><a href='<%# Eval("YemekId", "Yemekler.aspx?YemekId={0}") %>&islem=sil'>
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/iconlar/delete.jpg" Width="32px" />
                            </a></td>
                        <td class="auto-style14"><a href='<%# Eval("YemekId", "YemekDuzenle.aspx?YemekId={0}") %>'>
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/iconlar/update.png" Width="30px" />
                            </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style13" style="margin-top:15px;">
        <table class="auto-style9">
            <tr>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style20" Height="34px" Text="+" Width="30px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style19"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style20" Height="36px" Text="-" Width="30px" OnClick="Button4_Click" />
                    </strong></td>
                <td><strong>Yemek Ekleme</strong></td>
            </tr>
        </table>
        <strong></strong>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style9">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Yemek Ad : </td>
                <td>
                    <asp:TextBox ID="tb_yemekad" runat="server" CssClass="tb5"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Malzeme : </td>
                <td>
                    <asp:TextBox ID="tb_yemekmalzeme" runat="server" CssClass="auto-style22" Height="72px" TextMode="MultiLine" Width="231px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Tarif : </td>
                <td class="auto-style21">
                    <asp:TextBox ID="tb_yemektarif" runat="server" CssClass="auto-style22" Height="88px" TextMode="MultiLine" Width="232px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Yemek Resim : </td>
                <td class="auto-style21">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" />
                </td>
            </tr>
            <tr>
                <td>Kategori : </td>
                <td class="auto-style21">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="146px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="Button5" runat="server" CssClass="fb8" Height="35px" Text="Ekle" Width="120px" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
