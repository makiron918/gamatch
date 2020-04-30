$(function(){
  // editページのみJS
  if (document.URL.match("edit")) {
  // カテゴリーセレクトボックスのオプションを作成
  function appendOption(game){
    let html = `<option value="${game.id}" data-category="${game.id}">${game.platform}</option>`;
    return html;
  }
  // 子カテゴリーの表示作成
  function appendChildrenBox(insertHTML){
    let childSelectHtml = '';
    childSelectHtml = `<div class='game-category' id= 'children_wrapper'>
                        <select class="game_select" id="child_category" name="user[game_ids][]">
                          <option value="---" data-category="---">---</option>
                          ${insertHTML}
                        <select>
                      </div>`;
    $('.game-category').append(childSelectHtml);
  }
  // 親カテゴリー選択後のイベント
  $('#game_select').on('change', function(){
    let parentCategory = document.getElementById('game_select').value; //選択された親カテゴリーの名前を取得
    if (parentCategory != "---"){ //親カテゴリーが初期値でないことを確認
      $.ajax({
        url: '/users/get_game_children',
        type: 'GET',
        data: { parent_platform: parentCategory},
        dataType: 'json'
      })
      .done(function(children){
        $('#children_wrapper').remove(); //親が変更された時、子以下を削除する
        let insertHTML = '';
        children.forEach(function(child){
          insertHTML += appendOption(child);
        });
        appendChildrenBox(insertHTML);
      })
      .fail(function(){
        alert('カテゴリー取得に失敗しました');
        console.log("XMLHttpRequest : " + XMLHttpRequest.status);
        console.log("textStatus     : " + textStatus);
        console.log("errorThrown    : " + errorThrown.message);
      })
    }else{
      $('#children_wrapper').remove(); //親カテゴリーが初期値になった時、子以下を削除する
    }
  });
  }
});