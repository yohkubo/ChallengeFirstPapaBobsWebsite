<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ChallengeFirstPapaBobsWebsite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-family: Arial;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border: thin solid #C0C0C0; background-color: #CCFFFF">
            <asp:Image ID="Image1" runat="server" Height="205px" Width="205px" ImageUrl="~/PapaBob.png" />
            <span class="auto-style1"><span class="auto-style2"><strong>Papa Bob&#39;s Pizza and Software</strong></span></span></div>
        <asp:RadioButton ID="size10RadioButton" runat="server" GroupName="sizeGroup" Text="Baby Bob Size (10&quot;) - $10" />
        <br />
        <asp:RadioButton ID="size13RadioButton" runat="server" GroupName="sizeGroup" Text="Mama Bob Size (13&quot;) - $13" />
        <br />
        <asp:RadioButton ID="size16RadioButton" runat="server" GroupName="sizeGroup" Text="Papa Bob Size (16&quot;) - $16" />
        <br />
        <br />
        <asp:RadioButton ID="thinCrustRadioButton" runat="server" GroupName="crustGroup" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepDishRadioButton" runat="server" GroupName="crustGroup" Text="Deep Dish (+$2)" />
        <br />
        <br />
        <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+$1.50)" />
        <br />
        <asp:CheckBox ID="onionsCheckBox" runat="server" Text="Onions (+$0.75)" />
        <br />
        <asp:CheckBox ID="greenPeppersCheckBox" runat="server" Text="Green Peppers (+$0.50)" />
        <br />
        <asp:CheckBox ID="redPeppersCheckBox" runat="server" Text="Red Peppers (+$0.75)" />
&nbsp;<br />
        <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2.00)" />
        <h2 style="font-family: Arial">Papa Bob&#39;s <span class="auto-style3">Special Deal </span></h2>
        <p>
            Save $2.00 when you add Peppernoni, Green Peppers and Anchovies OR Peppernoni, Red Peppers and Onions to your pizza.</p>
        <p>
            <asp:Button ID="purchaseButton" runat="server" OnClick="purchaseButton_Click" Text="Purchase" />
            <asp:Label ID="warningLabel" runat="server" ForeColor="Red"></asp:Label>
        </p>
        <p>
            Total:&nbsp; $<asp:Label ID="priceLabel" runat="server"></asp:Label>
        </p>
        <p>
            Sorry, at this time you can only order one pizza online, and pick-up only ... we need a better website!</p>
    </form>
</body>
</html>
