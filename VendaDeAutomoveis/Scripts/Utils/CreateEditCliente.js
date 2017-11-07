﻿$('#btnCadastrar').click(function () {

    var isValid = validForm();

    if (isValid == false) {
        saveLead();
    }
    else {
        $('#form').submit();
    }
});

var msgs = [];
function validForm() {
    msgs = [];
    var campo;
    var isValid = true;

    campo = $("#Nome").val();
    if (!campo && campo.length <= 0) {
        isValid = false;
        $('#Nome').css({ "background-color": "#f8dbdb", "border-color": "#e77776" });
        msgs.push("É necessário preencha o cliente.");
    } else {
        $('#Nome').css({ "background-color": "#fff", "border-color": "#ccc" });
    }

    campo = $('#rg').val();
    if (!campo && campo.length <= 0) {
        isValid = false;
        $('#rg').css({ "background-color": "#f8dbdb", "border-color": "#e77776" });
        msgs.push("É necessário preencher o Modelo do veículo.");
    } else {
        $('#rg').css({ "background-color": "#fff", "border-color": "#ccc" });
    }

    campo = $('#Email').val();
    if (!campo && campo.length <= 0) {
        isValid = false;
        $('#Email').css({ "background-color": "#f8dbdb", "border-color": "#e77776" });
        msgs.push("É necessário preencher o Modelo do veículo.");
    } else {
        $('#Email').css({ "background-color": "#fff", "border-color": "#ccc" });
    }

    campo = $('#dtnascimento').val();
    if (!campo && campo.length <= 0) {
        isValid = false;
        $('#dtnascimento').css({ "background-color": "#f8dbdb", "border-color": "#e77776" });
        msgs.push("É necessário preencher o Modelo do veículo.");
    } else {
        $('#dtnascimento').css({ "background-color": "#fff", "border-color": "#ccc" });
    }

    campo = $("#cpf").val();
    campo = campo.replace(/[^\d]+/g, '')
    var cpfValido = validarCPF(campo);
    if (!campo && campo.length <= 0 || !cpfValido) {
        isValid = false;
        $('#cpf').css({ "background-color": "#f8dbdb", "border-color": "#e77776" });

        if (!cpfValido) {
            msgs.push("CPF inválido!");
        }
        else {
            msgs.push("CPF não preenchido!");
        }
    } else {
        $('#cpf').css({ "background-color": "#fff", "border-color": "#ccc" });
    }

    return isValid;
}