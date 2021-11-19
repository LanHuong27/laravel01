function addTocart(event)
{
    event.preventDefault();
    let urlShoppingCart = $(this).data('url');
    $.ajax({
        type:"GET",
        url:urlShoppingCart,
        dataType: 'json',
        success:function(data){
            if(data.code === 200)
            {
                alert('add product success')
            }
        },
        error(){
            
        }
    });
}
$(function(){
    $('.add-to-cart').on('click', addTocart);
})


function cartUpdate(event) { 
    event.preventDefault();
    let urlUpdateCart = $('.update_cart_url').data('url');
    let id = $(this).data('id');
    let quantity = $(this).parents('tr').find('input.quantity').val();
    $.ajax({
        type:"GET",
        url: urlUpdateCart,
        data:{id: id,quantity: quantity},
        success: function(data){
            if(data.code === 200)
            {
                $('.cart_Waraper').html(data.cart_components);
                alert('success update');
            }
        },
        error: function(data){

        }
    });


}
function deleteCart(event)
{
    event.preventDefault();
    let urlDeleteCart = $('.cart_info').data('url');
    let id = $(this).data('id');
    $.ajax({
        type:"GET",
        url: urlDeleteCart,
        data:{id: id},
        success: function(data){
            if(data.code === 200)
            {
                $('.cart_Waraper').html(data.cart_components);
                alert('success delete');
            }
        },
        error: function(data){

        }
    });

}
$(function () 
{
    $(document).on('click', '.cart_update', cartUpdate);
    $(document).on('click', '.cart_delete1', deleteCart);
})