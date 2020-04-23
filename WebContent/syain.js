// AjaxでJSONを取得する
function executeAjax () {
//	'use strict';
//
//	// ?以降のパラメータを取得
//	// 今回で言うとhttp://localhost:8080/wt1/hobby.html?q=0001でいう0001が取得される
//	var parameter  = location.search.substring( 1, location.search.length );
//	parameter = decodeURIComponent( parameter );
//	parameter = parameter.split('=')[1];
//
	// --------------- TODO 編集ここから---------------
	var requestQuery = {
			syainId : parameter
		};
	$.ajax({
		type : 'GET',
		dataType:'json',
		url : '/SyainServlet',
		data : requestQuery,
		success : function(json) {
			// サーバーとの通信に成功した時の処理
			// 確認のために返却値を出力
			console.log(json);


			// 取得したデータを画面に表示する
			var tableElemnt = '';
			for (var i=0; i < json.length; i++) {
			var syain = json[i];
			tableElemnt += '<tr> <td>' + syain.syainId + '</td><td>' + syain.syainName + '</td><tr>'+
			'<td><button id="button_hensyu">編集</button></td>' +
			'<td><button id="button_sakuzyo">削除</button></td>';
			}
			// HTMLに挿入
			$('#syain').append(tableElemnt);

		},
		error:function(XMLHttpRequest, textStatus, errorThrown){
			// サーバーとの通信に失敗した時の処理
			alert('データの通信に失敗しました');
			console.log(errorThrown)
		}
	});
}