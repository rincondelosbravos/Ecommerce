package com.braco96.ecommerce.backend.domain.port;

import com.braco96.ecommerce.backend.domain.model.Category;

public interface ICategoryRepository {
    Category save (Category category);
    Iterable<Category> findAll();
    Category findById(Integer id);
    void deleteById(Integer id);

}
