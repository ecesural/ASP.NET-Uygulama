<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="AspTemplateUyg.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphIcerik" runat="server">
    <div class="box">
        <div>
            <div id="contact" class="body">
                <h1>Contact</h1>
                <div>
                    <table>
                        <tbody>
                            <tr>
                                <td>İsim:</td>
                                <td>
                                    <asp:TextBox ID="txtIsim" runat="server" CssClass="txtfield"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>
                                     <asp:TextBox ID="txtEmail" runat="server" CssClass="txtfield"></asp:TextBox>
                                  </td>
                            </tr>
                            <tr>
                                <td>Konu:</td>
                                <td>
                                     <asp:TextBox ID="txtKonu" runat="server" CssClass="txtfield"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td class="txtarea">Mesaj:</td>
                                <td>
                                    <asp:TextBox ID="txtMesaj" runat="server" CssClass="txtfield" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="btnGonder" runat="server" Text="" CssClass="btn" OnClick="btnGonder_Click" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <h2>Bhaccasyoniztas Beach Resort</h2>
                <p>
                    <span>Address:</span> 123 Lorem Ipsum Cove, Sed Ut City, LI 12345
						
                </p>
                <p>
                    <span>Telephone Number:</span> 1-800-999-9999
						
                </p>
                <p>
                    <span>Fax Number:</span> 1-800-111-1111
						
                </p>
            </div>
        </div>
    </div>
</asp:Content>
