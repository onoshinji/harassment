module ApplicationHelper
  def page_title(page_title = '')
  base_title = 'これってハラスメント？'

  page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def admin_page_title(admin_page_title = '')
  base_title = 'これってハラスメント？(管理画面)'

  page_title.empty? ? base_title : admin_page_title + ' | ' + base_title
  end
end
