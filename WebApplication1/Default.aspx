<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        &nbsp;GUEST BOOK
    </h2>
    <table class="table1">
        <tr class="tieude">
            <td class="style3">
                <asp:Label ID="LabelTieude" runat="server" Text="Tiêu đề"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTieuDe" runat="server" class="textbox" style="margin-left: 0px" ></asp:TextBox>
            </td>
        </tr>
        <tr class="tieude">
            <td class="style3">

                <asp:Label ID="LabelHoten" runat="server" Text="Họ tên"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="txtHoten" runat="server" class="textbox" style="margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr class="tieude">
            <td class="style3">
                <asp:Label ID="LabelEmail" runat="server" Text="Email"></asp:Label> 
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" class="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr class="tieude" id="comment">
            <td  class="style3">
                <asp:Label ID="LabelNoidung" runat="server" Text="Nội dung"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNoidung" runat="server" class="textbox" TextMode="MultiLine" Rows = 6></asp:TextBox>
            </td>
        </tr>
        <tr class="tieude">
            <td colspan="2">
                <asp:Button ID="Btn_GoiND" runat="server" Text="Gửi nội dung" 
                    onclick="Btn_GoiND_Click" />
            </td>
        </tr>
    </table>
    <br />

    <h1>DANH SÁCH COMMENT</h1>

    <p>
        <span id="EntryComment" runat="server"></span>
    </p>

    
</asp:Content>
