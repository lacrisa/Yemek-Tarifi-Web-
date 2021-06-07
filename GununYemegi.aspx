<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleri.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: x-large;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList2" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td><strong>
                        <asp:Label ID="Label13" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Malzemeler :</strong>
                        <asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Tarif :</strong>
                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Image ID="Image3" runat="server" Height="178px" ImageUrl='<%# Eval("YemekResim") %>' Width="312px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;<table class="auto-style1">
                            <tr>
                                <td class="auto-style11"><strong>Puan :</strong>&nbsp;<asp:Label ID="Label16" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    &nbsp;</td>
                                <td class="auto-style12"><strong>Eklenme Tarihi :</strong>&nbsp;<em><asp:Label ID="Label17" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    </em></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
</asp:Content>
