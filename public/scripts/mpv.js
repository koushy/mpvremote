$('.btn').click(function(){
    $.post('/mpv', {command: $(this).data('command') });
    $(this).blur();
    });