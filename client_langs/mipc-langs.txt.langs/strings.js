    /* 
    Localizable.strings
    Created by mining code-gen base Mining Frameworks.
    More about : http://www.shenzhenmining.com
    */
    var 
        mcs_home,
        mcs_nearby,
        mcs_recommend,
        mcs_find,
        mcs_mine,
        mcs_food,
        mcs_activity,
        mcs_explore;
    function mcs_init_langs(lang)
    {
        if(lang == "en")
        {
            mcs_home                    = "Home";
            mcs_nearby                  = "nearby";
            mcs_recommend               = "Recommend";
            mcs_find                    = "Find";
            mcs_mine                    = "Mine";
            mcs_food                    = "food";
            mcs_activity                = "activity";
            mcs_explore                 = "explore";
        }/* en */
        else if(lang == "zh")
        {
            mcs_home                    = "首页";
            mcs_nearby                  = "附近";
            mcs_recommend               = "推荐";
            mcs_find                    = "发现";
            mcs_mine                    = "我";
            mcs_food                    = "美食";
            mcs_activity                = "活动";
            mcs_explore                 = "逛店";
        }/* zh */
    }/* mcs_init_langs */

