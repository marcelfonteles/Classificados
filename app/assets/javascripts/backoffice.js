$(function(){
    $("#botao-nova-categoria").click(function(){
        if ($("#nova-categoria").text().length == 0) {
            $("#nova-categoria").append("<script>" +
                                            "$('#enviar-categoria').click(function(){" +
                                                "console.log('batata');" +
                                                "$('#nova-categoria').empty();" +
                                            "});" +
                                        "</script>" +
                                        "<div class='form-group'>" +
                                        "<p>" +
                                            "Categoria:" +
                                            "<input type='email' class='form-control form-control-user' id='exampleInputEmail' placeholder='Nome da categoria'>" +
                                            "<p><button id='enviar-categoria' class='btn btn-primary'>Enviar</button></p>" +
                                        "</p>" +
                                        "</div>");
        };
    });
    
})