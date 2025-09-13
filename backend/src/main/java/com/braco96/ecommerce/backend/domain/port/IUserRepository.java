package com.braco96.ecommerce.backend.domain.port;

import com.braco96.ecommerce.backend.domain.model.User;

public interface IUserRepository {
    User save(User user);
    User findByEmail(String email);
    User findById(Integer id);
}
