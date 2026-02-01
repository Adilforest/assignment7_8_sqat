def after_scenario(context, scenario):
    if hasattr(context, "driver") and context.driver:
        try:
            context.driver.quit()
        except Exception:
            pass
