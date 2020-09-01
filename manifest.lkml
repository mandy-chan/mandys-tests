# project_name: "project_import_1"

# # # Use local_dependency: To enable referencing of another project
# # # on this instance with include: statements

# local_dependency: {
# project: "project_import_2"
# }

constant: begin_link { value: "{% if link_mode._parameter_value == 'default' %}<a href='#drillmenu' target='_self'>{{rendered_value}}</a>{% elsif link_mode._parameter_value == 'none' %}{{rendered_value}}{% else %}" }
constant: end_link { value: "{% endif %}" }
constant: dashboard_path { value: "/dashboards-next/"}
# constant: product_page_filters {
#   value:
#   "{% if link_mode._parameter_value == 'filters' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{_filters['product_page.group_name']|url_encode}}&Seller={{_filters['product_page.seller_name']|url_encode}}&Country={{_filters['product_page.country_code']|url_encode}}&SKU={{_filters['product_page.sku']|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'group' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{product_page.group_name._value|url_encode}}&Seller={{_filters['product_page.seller_name']|url_encode}}&Country={{_filters['product_page.country_code']|url_encode}}&SKU={{_filters['product_page.sku']|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'seller' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{_filters['product_page.group_name']|url_encode}}&Seller={{product_page.seller_name._value|url_encode}}&Country={{_filters['product_page.country_code']|url_encode}}&SKU={{_filters['product_page.sku']|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'country' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{_filters['product_page.group_name']|url_encode}}&Seller={{_filters['product_page.seller_name']|url_encode}}&Country={{product_page.country_code._value|url_encode}}&SKU={{_filters['product_page.sku']|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'sku' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{_filters['product_page.group_name']|url_encode}}&Seller={{_filters['product_page.seller_name']|url_encode}}&Country={{product_page.country_code._value|url_encode}}&SKU={{_filters['product_page.sku']|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'group_seller' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{product_page.group_name._value|url_encode}}&Seller={{product_page.seller_name._value|url_encode}}&Country={{_filters['product_page.country_code']|url_encode}}&SKU={{_filters['product_page.sku']|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'group_seller_country_sku' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{product_page.group_name._value|url_encode}}&Seller={{product_page.seller_name._value|url_encode}}&Country={{product_page.country_code._value|url_encode}}&SKU={{product_page.sku._value|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'group_country' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{product_page.group_name._value|url_encode}}&Seller={{_filters['product_page.seller_name']|url_encode}}&Country={{product_page.country_code._value|url_encode}}&SKU={{_filters['product_page.sku']|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'group_country_sku' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{product_page.group_name._value|url_encode}}&Seller={{_filters['product_page.seller_name']|url_encode}}&Country={{product_page.country_code._value|url_encode}}&SKU={{product_page.sku._value|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'seller_country' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{_filters['product_page.group_name']|url_encode}}&Seller={{product_page.seller_name._value|url_encode}}&Country={{product_page.country_code._value|url_encode}}&SKU={{_filters['product_page.sku']|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'seller_country_sku' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{_filters['product_page.group_name']|url_encode}}&Seller={{product_page.seller_name._value|url_encode}}&Country={{product_page.country_code._value|url_encode}}&SKU={{product_page.sku._value|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% elsif link_mode._parameter_value == 'country_sku' %}Account+Key={{_filters['product_page.account_key']|url_encode}}&Group={{_filters['product_page.group_name']|url_encode}}&Seller={{_filters['product_page.seller_name']|url_encode}}&Country={{product_page.country_code._value|url_encode}}&SKU={{product_page.sku._value|url_encode}}&Date={{_filters['product_page.__date']|url_encode}}
#   {% endif %}"
# }
