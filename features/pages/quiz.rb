class Quiz < SitePrism::Page

    set_url 'https://pt.quizur.com'

    element :listas, 'a[class="item"][href="/type/list"]'
    element :menulateral, 'span[class=burger]'
    element :persona, :xpath, '//span[contains(text(), "QUIZ DE PERSONALIDADE")]'
    element :tipo, 'body > div.bodyWrapper > div.fullWrapper > div.carousel > div > div:nth-child(1) > a > span > span'
    element :titulos, 'h1[class="coverTitle"]'

end