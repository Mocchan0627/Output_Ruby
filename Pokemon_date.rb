class Pokemon
    attr_accessor :name
    attr_accessor :type
    attr_accessor :hp
    attr_accessor :at
    attr_accessor :bl
    attr_accessor :co
    attr_accessor :di
    attr_accessor :sp
    attr_accessor :s1_name
    attr_accessor :s1_type
    attr_accessor :s1_pow
    attr_accessor :s2_name
    attr_accessor :s2_type
    attr_accessor :s2_pow
    attr_accessor :s3_name
    attr_accessor :s3_type
    attr_accessor :s3_pow
    attr_accessor :s4_name
    attr_accessor :s4_type
    attr_accessor :s4_pow


    def initialize(name:,type:,hp:,at:,bl:,co:,di:,sp:)
        #,s1_name:,s1_type:,s1_pow:,s2_name:,s2_type:,s2_pow:,
        #s3_name:,s3_type:,s3_pow:,s4_name:,s4_type:,s4_pow:
        self.name = name
        self.type = type
        self.hp = hp
        self.at = at
        self.bl = bl
        self.co = co
        self.di = di
        self.sp = sp
        #self.s_name = s1_name
        #self.s_type = s1_type
        #self.s_pow = s1_pow
        #self.s_name = s2_name
        #self.s_type = s2_type
        #self.s_pow = s2_pow
        #self.s_name = s3_name
        #self.s_type = s3_type
        #self.s_pow = s3_pow
        #self.s_name = s4_name
        #self.s_type = s4_type
        #self.s_pow = s4_pow
    end

end


