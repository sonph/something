// Function to grab the headers and display in the aside as a small interactive
// table of contents.
$(function () {
  var link,
      contents;

  link = function (guide, article) {
    var guideLink,
        anchor,
        articleAnchor,
        articleName,
        articleId;

    guide = $(guide);
    article = $(article);

    guideLink = $('<a>'),
    anchor = $('<hr>'),
    articleAnchor = article.find('h1'),
    articleName = articleAnchor.text(),
    articleId = gajus.contents.id(articleName);

    anchor
        .attr('id', articleId)
        .insertBefore(article);

    guideLink
        .text(articleName)
        .attr('href', '#' + articleId)
        .prependTo(guide);
  };

  contents = gajus
      .contents({
        contents: $('aside.contents')[0],
        // h1 is omitted here because it's the article title. Some articles
        // don't have any subsections and so we don't want to just re-display
        // the article title on the aside.
        articles: $('article').find('h2, h3, h4, h5, h6').get(),
      });

  contents.eventProxy.on('ready', function () {
    $('a').smoothScroll();
  })
  contents.eventProxy.on('change', function (data) {
    if (data.previous) {
      $(data.previous.guide)
          .removeClass('active')
          .parents('li')
          .removeClass('active-child');
    }

    $(data.current.guide)
        .addClass('active')
        .parents('li')
        .addClass('active-child');
  });
});

