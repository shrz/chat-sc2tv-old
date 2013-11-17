var urlPattern = '((?:(?:ht|f)tps?)(?:://))' + // протокол (1)
	// URL без протокола (2)
	'(((?:(?:[a-z\u0430-\u0451\\d](?:[a-z\u0430-\u0451\\d-]*[a-z\u0430-\u0451\\d])*)\\.)+(?:[a-z]{2,}|\u0440\u0444)' + // хост (3)
	'|(?:(?:\\d{1,3}\\.){3}\\d{1,3}))' + // хост в формате IPv4 (3)
	'(:\\d+)?' + // порт (4)
	'(/[-a-z\u0430-\u0451\\d%_~\\+\\(\\):]*(?:[\\.,][-a-z\u0430-\u0451\\d%_~\\+\\(\\):]+)*)*' + // путь (5)
	'(\\?(?:&amp;|&quot;|&#039|[&"\'.:;a-z\u0430-\u0451\\d%_~\\+=-])*)?' + // параметры (6)
	'(#(?:&amp;|&quot;|&#039|[\*!\(\)\/&"\'.:;a-z\u0430-\u0451\\d%_~\\+=-])*)?)'; // якорь (7)

var bbToUrlPattern = new RegExp('\\[url\\]' + urlPattern + '\\[\/url\\]()', 'gi');//пусто(8)
var bbToUrlPatternWithText = new RegExp('\\[url=' + urlPattern + '\\]([\u0020-\u007E\u0400-\u045F\u0490\u0491\u0207\u0239\u2012\u2013\u2014]+?)\\[\/url\\]', 'gi');//текст для ссылки(8)
var urlPattern = new RegExp(urlPattern, 'gi');

//преобразуем бб код в хтмл
function bbCodeUrlToHtml(str, proto, url, host, port, path, query, fragment, text){
	//удаляем смайлы из ссылок
	url = url.replace(/:s:/gi, ':%73:' );
	if (!text) {
		text = url;
	}
	if ( text.length > 60 ) {
		length = text.length;
		return '<a rel="nofollow" href="' + proto + url + '" target="_blank" title="' + proto + url + '">' + text.substring( 0, 30 ) + '...' + text.substring( length - 20) + '</a>';
	}
	return '<a rel="nofollow" href="' + proto + url + '" title="' + proto + url + '" target="_blank">' + text + '</a>';
}