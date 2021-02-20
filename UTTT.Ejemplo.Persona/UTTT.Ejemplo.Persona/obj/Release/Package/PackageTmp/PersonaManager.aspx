<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonaManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.PersonaManager" debug=false%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-1.4.1.min.js"></script>
    <script type="text/javascript">

        

        function mensajes() {
           
            var clave, nombre, apellidoP, cExpre, nExpre, coExpre,correo,codigoP,sexoo,codExpre,rfc12ex,rfc;
            clave = document.getElementById('txtClaveUnica').value;
            nombre = document.getElementById("txtNombre").value;
            apellidoP = document.getElementById("txtAPaterno").value;
            sexoo = document.getElementById("ddlSexo").value;
            fechanacimiento = document.getElementById("txtFechadenacimiento").value;
            correo = document.getElementById("txtCorreoE").value;
            codigoP = document.getElementById("txtCodigoPostal").value;
            rfc = document.getElementById("txtRFC").value;
            cExpre = /^\d{3}$/;
            nExpre = /^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]{3,15}$/;
            coExpre = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;//validacion de correo
            codExpre = /^[0-9]{5}$/;


            //^([0-9]{5}$)/;//validacion de codigo postal
            rfc12ex = /^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$/;
            //rfc13ex =/^(([A-Z]|[a-z]|\s){1})(([A-Z]|[a-z]){3})([0-9]{6})((([A-Z]|[a-z]|[0-9]){3}))/;

            

            

            if (clave == "") {
                alert("Clave unica esta vacio");


                return false;

            }
            if (nombre == "") {
                alert("Nombre  esta vacio");


                return false;

            }
            if (apellidoP == "") {
                alert("Apellido Paterno esta vacio");


                return false;

            }
            if (sexoo == -1) {
                alert("No a elegido un sexo ");


                return false;

            }
            if (correo == "") {
                alert("Correo electronico esta vacio");


                return false;

            }
            if (codigoP == "") {
                alert("Codigo Postal esta vacio");


                return false;

            }
            if (rfc == "") {
                alert("El RFC esta vacio");


                return false;

            } 
            ///Validar sexo
            if (sexoo == -1) {
                alert("Seleccione Masculino o Femenino");
                return false;
            }
            

            ///validacion de la clave unica
            if (!cExpre.test(clave)) {
                alert("ERROR: La clave solo debe contener 3 numeros");
                return false;
            }


            

            //validacion de nombre

            if (!nExpre.test(nombre)) {

                alert("ERROR:: EL NOMBRE DEBE CONTENER MINIMO 3 LETRAS Y MAXIMO 15 ");
                return false;
            } 
           

           
            ////validacion del apellido paterno
            if (!nExpre.test(apellidoP)) {
                alert("ERROR:: EL APELLIDO PATERNO DEBE CONTENER MINIMO 3 LETRAS Y MAXIMO 15");
                return false;
            }
            if (!coExpre.test(correo)) {
                alert("ERROR:: El correo  " + "'" + correo + "'"
                    + " no tiene la sintaxis correcta \n .:: ejemplo: alguien@alguien.com ::.");
                return false;
            }
            if (!codExpre.test(codigoP)) {
                alert("ERROR:: EL CODIGO POSTAL SOLO DEBE TENER 5 NÚMEROS");
                return false;
            }
            if (!rfc12ex.test(rfc)) {
                alert("ERROR:: EL RFC ES INCORRECTO");
                return false;
            }

            

            return true;

            


            
            
        }


    </script>
</head>
    
<body style="height: 569px">


     <div class="container well">

    
    <form id="form1" runat="server"   >
    <div class="font-weight-bold  text-center text-warning h1 font-italic">
        <%--persona  style="font-family: Arial; font-size: medium; font-weight: bold"  class="form-inline"  --%>
    
        

        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Persona
       
        </div>
        <div class="text-primary text-center font-weight-bold ">
        
          <div> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="True" ></asp:Label>
        
        </div>
            
        </div>
        
        <div>

        </div>
        <div>

        </div>
            <div>

        <div class="form-group  ">  
             <asp:Label ID="lblsexo" runat="server" Text="Sexo:" CssClass="col-sm-2 col-form-label badge badge-primary text-wrap"></asp:Label>
            
            <asp:DropDownList ID="ddlSexo" runat="server" 
                 
            class="form-control input-lg"
               >
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlSexo" ErrorMessage="*OBLIGATORIO" InitialValue="-1"></asp:RequiredFieldValidator>
    </div>

        </div>
        
        <div class="form-group  "> 
        
            
        <asp:Label ID="lblClave" runat="server" Text="Clave Unica:" CssClass="col-sm-2 col-form-label  badge badge-primary text-wrap"></asp:Label>
            
            <asp:TextBox ID="txtClaveUnica" runat="server" 
                 ViewStateMode="Disabled" class="form-control" Required="" placeholder="clave unica solo 3 números" maxlength="3" >
                
            </asp:TextBox>
        
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtClaveUnica" ErrorMessage="La clave debe de ser entre 100 y 999" ForeColor="Black" MaximumValue="999" MinimumValue="100"></asp:RangeValidator>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClaveUnica" ErrorMessage="*OBLIGATORIO"></asp:RequiredFieldValidator>
        
            <asp:RegularExpressionValidator ID="revClaveunica" runat="server" ControlToValidate="txtClaveUnica" ErrorMessage="La clave unica debe ser de 3 numeros" ForeColor="#3333FF" ValidationExpression="\d{3}"></asp:RegularExpressionValidator>
        
        </div>
            
        <div class="form-group " >
        
            <asp:Label ID="lblNombre" runat="server" Text="Nombre:" CssClass="col-sm-2 col-form-label badge badge-primary text-wrap"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server"  class="form-control" ViewStateMode="Disabled"  Required="" placeholder="Nombre mínimo 3 y máximo 15 letras" maxlength="15"></asp:TextBox>
        
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNombre" ErrorMessage="*OBLIGATORIO"></asp:RequiredFieldValidator>
        
            <asp:RegularExpressionValidator ID="RevNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre debe de ser minimo de 3 letras" ValidationExpression="^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]{3,15}$" ForeColor="Blue"></asp:RegularExpressionValidator>
        
        </div>
        <div class="form-group text-primary "> 
             <asp:Label ID="lblAPaterno" runat="server" Text="A Paterno:" CssClass="col-sm-2 col-form-label  badge badge-primary text-wrap"></asp:Label>
            
            <asp:TextBox ID="txtAPaterno" runat="server"  ViewStateMode="Disabled" class="form-control" Required="" placeholder="Apellido P. mínimo 3 y máximo 15 letras" maxlength="15"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAPaterno" ErrorMessage="*OBLIGATORIO"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RevApellido" runat="server" ControlToValidate="txtAPaterno" ErrorMessage="El apellido debe de tener minimo 3 letras" ForeColor="Blue" ValidationExpression="^[a-zA-ZÀ-ÿ\u00f1\u00d1]+(\s*[a-zA-ZÀ-ÿ\u00f1\u00d1]*)*[a-zA-ZÀ-ÿ\u00f1\u00d1]{3,15}$"></asp:RegularExpressionValidator>
        </div>
    <div> 
    
        <div class="form-group text-primary ">
        <asp:Label ID="lblAMaterno" runat="server" Text=" A Materno:" CssClass="col-sm-2 col-form-label badge badge-primary text-wrap"></asp:Label>
            
            <asp:TextBox ID="txtAMaterno" runat="server" 
                ViewStateMode="Disabled" placeholder="Apellido M. mínimo 3 y máximo 15 letras" class="form-control" maxlength="15"></asp:TextBox>
        
            <br />
        
        </div>
    
    </div>
    
        
        <div class="form-group text-primary ">
            <asp:Label ID="lblFecha" runat="server" Text=" Fecha de Nacimiento:" CssClass="col-sm-2 col-form-label badge badge-dark text-wrap"></asp:Label>
         <asp:TextBox ID="txtFechadenacimiento" runat="server" class="form-control"  disabled ></asp:TextBox>
            </div>

            <div class="form-group text-primary ">
         <asp:Label ID="lblCElectronico" runat="server" Text="Correo Electronico:" CssClass="col-sm-2 col-form-label badge badge-primary text-wrap"></asp:Label>
           <asp:TextBox ID="txtCorreoE" runat="server" class="form-control" placeholder="ejemplo@alguien.com"  maxlength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoE" ErrorMessage="*OBLIGATORIO"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCorreoE" ErrorMessage="El correo no tiene la sintaxis correcta" ForeColor="Blue" ValidationExpression="^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$"></asp:RegularExpressionValidator>
       </div>
                <div class="form-group text-primary ">
               <asp:Label ID="lblCPostal" runat="server" Text="Codigo Postal:" CssClass="col-sm-2 col-form-label badge badge-primary text-wrap"></asp:Label>
        
            <asp:TextBox ID="txtCodigoPostal" runat="server" class="form-control" placeholder="Codigo solo contiene 5 números" maxlength="5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="REVCODIGOPOSTAL" runat="server" ControlToValidate="txtCodigoPostal" ErrorMessage="*OBLIGATORIO"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RexCodigoP" runat="server" ControlToValidate="txtCodigoPostal" ErrorMessage="Codigo postal solo consta de 5 números" ForeColor="Blue" ValidationExpression="^[0-9]{5}$"></asp:RegularExpressionValidator>
       
                    </div>
        <div class="form-group text-primary " >
            <asp:Label ID="lblRFC" runat="server" Text=" RFC:" CssClass="col-sm-2 col-form-label badge badge-primary text-wrap"></asp:Label>
            <asp:TextBox ID="txtRFC" runat="server" class="form-control " placeholder="RFC ejemplo. GASI991018243" maxlength="13"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRFC" ErrorMessage="*OBLIGATORIO"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="Revrfc" runat="server" ControlToValidate="txtRFC" ErrorMessage="RFC invalido" ForeColor="Blue" class="alert alert-primary" role="alert" ValidationExpression="^[A-Z]{4}[0-9]{6}[A-Z0-9]{3}$"></asp:RegularExpressionValidator>
        
            
        
        </div>

           <div>

           
        
            <asp:Calendar ID="txtCalendar" runat="server" Height="121px" style="margin-left: 222px" Width="277px" SelectedDate="01/24/2021 00:36:52"></asp:Calendar>
        
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
         </div>   
        <asp:Label ID="lblMensaje" runat="server" Text="..."></asp:Label>
        
        <div class="col text-center">
            <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" 
            onclick="btnAceptar_Click" ViewStateMode="Disabled" OnClientClick="return mensajes();" class="btn btn-info btn-lg btn-block" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar"
            OnClick="btnCancelar_Click" ViewStateMode="Disabled" class="btn btn-danger btn-lg btn-block" />

        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>

      </div>  
</body>
</html>
