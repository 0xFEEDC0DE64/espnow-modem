#include <esp_log.h>
#include <tickchrono.h>

using namespace std::chrono_literals;

namespace {
constexpr const char TAG[] = "MAIN";
} // namespace

extern "C" void app_main()
{
    while (true)
    {
        ESP_LOGI(TAG, "still up and running");

        espcpputils::delay(1000ms);
    }
}
