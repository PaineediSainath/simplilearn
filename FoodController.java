@RestController
@RequestMapping("/api")
public class FoodController {
    @Autowired
    private FoodService foodService;

    @GetMapping("/menu")
    public List<MenuItem> getMenu() {
        return foodService.getMenuItems();
    }
}

            