package com.codegym.service;

import com.codegym.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1,new Product(1,"Imac",1000.05,"Personal Computer","Apple"));
        products.put(2,new Product(2,"Iphone13ProMax",1200,"SmartPhone","Apple"));
        products.put(3,new Product(3,"MacbookPro",1500.,"Portable Laptop","Apple"));
    }
    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product customer) {
        products.put(customer.getId(), customer);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product customer) {
        products.put(id, customer);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
