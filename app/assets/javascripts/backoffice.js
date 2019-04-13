/*
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
*/

$(function(){
    $("#botao-nova-categoria-js").click(function(){
        $("#nova-categoria").removeClass("d-none");
        $("#category_description").val("");
    });
    $("#submit-button").click(function(){
        $("#nova-categoria").addClass("d-none");
        $("#insert-category").prepend("<tr>" +
                                         "<td><i class='fas fa-check-circle'></i></td>" + 
                                         "<td>" + $("#category_description").val() + "</td>" + 
                                         "<td>0</td>" + 
                                         "<td>0</td>" + 
                                         "<td>" +
                                            "<a href='#' class='btn btn-info btn-circle'>" +
                                                "<i class='fas fa-edit'></i>" +
                                            "</a>" +
                                            "<a href='#' class='btn btn-danger btn-circle'>" +
                                                "<i class='fas fa-trash'></i>" +
                                            "</a>" +
                                        "</td>" + 
                                    "</tr>");
    });
}) 