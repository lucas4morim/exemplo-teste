class Helper
    def evidence(name_file, folder = "")
        local_file = "#{folder}/#{name_file}.png"
        FileUtils.mkdir_p(folder) unless File.exist?(folder)
        Capybara.page.driver.browser.save_screenshot(local_file)
    end
end