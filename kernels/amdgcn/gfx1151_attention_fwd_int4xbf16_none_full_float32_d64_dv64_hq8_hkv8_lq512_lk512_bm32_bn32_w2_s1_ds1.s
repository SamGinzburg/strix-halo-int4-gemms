	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x60
	s_load_b32 s5, s[0:1], 0x68
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 1, v0
	s_load_b256 s[8:15], s[0:1], 0x0
	v_dual_mov_b32 v49, 0x5410 :: v_dual_lshlrev_b32 v46, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s6, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v93, 0xff800000 :: v_dual_and_b32 v44, 16, v46
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s26, s4, s6
	s_mov_b32 s31, 0x31027000
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s30, 0x7ffffffe
	v_dual_mov_b32 v50, 0x7632 :: v_dual_and_b32 v47, 15, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v74, v0, 4, 1
	v_lshrrev_b32_e32 v51, 3, v0
	s_clause 0x1
	s_load_b64 s[36:37], s[0:1], 0x20
	s_load_b64 s[24:25], s[0:1], 0x38
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s34, v45
	s_mul_i32 s7, s34, s26
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e32 vcc_lo, s34, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v73, v45, 16, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v51, s6, v51
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, s2, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v2, v44, s7
	v_lshl_add_u32 v76, v47, 1, 0
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v73
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v45, s6, v45
	s_mov_b32 s16, 0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s2, s5, 0x3fb8aa3b
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s4, 0x200, v2
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[64:65], null, s34, v45, v[44:45]
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[40:43], v1, s[28:31], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s26, v73
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s29, s15, 0xffff
	s_mov_b32 s28, s14
	s_mov_b32 s23, s16
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v24, 0 :: v_dual_lshlrev_b32 v1, 1, v1
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v52, 1, v0
	v_and_b32_e32 v55, 24, v0
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v56, 7, v0
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s4
	v_mov_b32_e32 v25, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v57, v52, 30, v74
	v_mov_b32_e32 v28, v24
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v52, 24, v52
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v48, v1, s[28:31], 0 offen
	v_dual_mov_b32 v21, v24 :: v_dual_add_nc_u32 v78, 0, v46
	v_mov_b32_e32 v23, v24
	v_xor_b32_e32 v55, v46, v55
	.loc	1 774 26                        ; attention.py:774:26
	v_lshlrev_b32_e32 v46, 2, v57
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v77, 4, v56
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v9, v24 :: v_dual_add_nc_u32 v80, 0, v55
	v_xor_b32_e32 v56, 8, v55
	v_lshl_or_b32 v47, v47, 5, v52
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v52, 24, v51
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v55, 4, v46
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v53, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v11, v24 :: v_dual_add_nc_u32 v82, 0, v47
	v_xor_b32_e32 v59, 8, v47
	v_xor_b32_e32 v60, 16, v47
	v_xor_b32_e32 v61, 24, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v47, s35, v52
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v53
	v_dual_mov_b32 v15, v24 :: v_dual_lshlrev_b32 v54, 3, v0
	v_mov_b32_e32 v27, v24
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v58, 1, v74
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v54, 56, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v86, 1, v47
	v_cndmask_b32_e64 v47, 0x1054, v49, s0
	v_cndmask_b32_e64 v49, 0x3276, v50, s0
	v_lshl_or_b32 v79, s3, 10, v58
	v_or_b32_e32 v57, 16, v51
	v_or_b32_e32 v58, 8, v51
	v_lshl_or_b32 v47, v47, 8, v47
	v_lshl_or_b32 v49, v49, 8, v49
	v_mov_b32_e32 v10, v24
	v_mov_b32_e32 v7, v24
	v_dual_mov_b32 v16, v24 :: v_dual_add_nc_u32 v81, 0, v56
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s35, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v54, s35, v57
	v_mul_lo_u32 v56, s35, v58
	v_mul_lo_u32 v51, s35, v51
	v_mov_b32_e32 v3, v24
	s_mov_b32 s17, s16
	s_mov_b32 s18, s16
	s_mov_b32 s19, s16
	s_mov_b32 s20, s16
	s_mov_b32 s21, s16
	s_mov_b32 s22, s16
	s_delay_alu instid0(SALU_CYCLE_1)
	v_dual_mov_b32 v39, s23 :: v_dual_mov_b32 v38, s22
	v_dual_mov_b32 v37, s21 :: v_dual_mov_b32 v36, s20
	v_dual_mov_b32 v35, s19 :: v_dual_mov_b32 v34, s18
	v_dual_mov_b32 v33, s17 :: v_dual_mov_b32 v32, s16
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v75, 4, v0
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v83, 0, v59
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v85, 0, v61
	v_dual_mov_b32 v22, v24 :: v_dual_lshlrev_b32 v87, 1, v54
	v_dual_mov_b32 v8, v24 :: v_dual_lshlrev_b32 v89, 1, v51
	v_dual_mov_b32 v13, v24 :: v_dual_add_nc_u32 v84, 0, v60
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v0, v24
	v_dual_mov_b32 v1, v24 :: v_dual_lshlrev_b32 v88, 1, v56
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v94, v24
	s_and_b32 s11, s11, 0xffff
	s_movk_i32 s27, 0xffe0
	s_mov_b32 s38, s30
	s_mov_b32 s39, s31
	s_and_b32 s37, s37, 0xffff
	s_and_b32 s13, s13, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s16, s35, 6
	s_lshl_b32 s17, s34, 5
	s_mov_b32 s28, s10
	s_mov_b32 s29, s11
	s_mov_b32 s10, 0x76543210
	s_mov_b32 s14, s30
	s_mov_b32 s15, s31
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v52, v46, v40
	ds_bpermute_b32 v40, v55, v40
	ds_bpermute_b32 v44, v46, v41
	ds_bpermute_b32 v41, v55, v41
	ds_bpermute_b32 v45, v46, v42
	ds_bpermute_b32 v42, v55, v42
	ds_bpermute_b32 v46, v46, v43
	ds_bpermute_b32 v43, v55, v43
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v5, v24 :: v_dual_lshlrev_b32 v48, 16, v48
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v65, v40, v52, s0
	v_cndmask_b32_e64 v67, v52, v40, s0
	v_and_b32_e32 v40, 0x540054, v47
	v_and_b32_e32 v47, 0x760076, v49
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v66, v41, v44, s0
	v_cndmask_b32_e64 v68, v44, v41, s0
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v90, s2, v48
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v47, 4, v47
	v_mov_b32_e32 v12, v24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v69, v42, v45, s0
	v_cndmask_b32_e64 v71, v45, v42, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v70, v43, v46, s0
	v_cndmask_b32_e64 v72, v46, v43, s0
	v_and_b32_e32 v91, 0x5040504, v40
	v_and_b32_e32 v92, 0x7060706, v41
.LBB0_1:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v40, 0x80000000, v64 :: v_dual_add_nc_u32 v45, v88, v77
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v46, v87, v77
	v_add_nc_u32_e32 v47, v86, v77
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v93
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[40:43], v40, s[28:31], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v118, 0x80000000, v45, s1
	v_cndmask_b32_e64 v119, 0x80000000, v46, s1
	v_cndmask_b32_e64 v121, 0x80000000, v47, s1
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s27, s27, 32
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v80, v[40:41]
	ds_store_b64 v81, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[40:43], v82 offset1:1
	ds_load_2addr_stride64_b64 v[51:54], v83 offset1:1
	ds_load_2addr_stride64_b64 v[57:60], v84 offset1:1
	ds_load_2addr_stride64_b64 v[103:106], v85 offset1:1
	.loc	1 838 37                        ; attention.py:838:37
	buffer_load_u16 v55, v79, s[36:39], 0 offen offset:48
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s27, 0x1e0
	v_add_nc_u32_e32 v64, s17, v64
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[40:41], v[65:66], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[42:43], v[65:66], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[51:52], v[69:70], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[53:54], v[69:70], v[109:116] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x3
	buffer_load_u16 v51, v79, s[36:39], 0 offen offset:32
	buffer_load_u16 v52, v79, s[36:39], 0 offen offset:36
	buffer_load_u16 v53, v79, s[36:39], 0 offen offset:40
	buffer_load_u16 v54, v79, s[36:39], 0 offen offset:44
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[57:58], v[67:68], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[59:60], v[67:68], v[109:116] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[95:102], v[103:104], v[71:72], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[109:116], v[105:106], v[71:72], v[109:116] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v108, v95
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v44, v89, v77
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v61, v97
	v_cvt_f32_i32_e32 v62, v98
	v_cvt_f32_i32_e32 v63, v99
	v_cvt_f32_i32_e32 v97, v100
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v117, 0x80000000, v44, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v98, v101
	v_cvt_f32_i32_e32 v99, v102
	v_cvt_f32_i32_e32 v100, v109
	v_cvt_f32_i32_e32 v101, v110
	v_cvt_f32_i32_e32 v102, v111
	v_cvt_f32_i32_e32 v103, v112
	v_cvt_f32_i32_e32 v104, v113
	v_cvt_f32_i32_e32 v105, v114
	v_cvt_f32_i32_e32 v106, v115
	v_cvt_f32_i32_e32 v107, v116
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x2
	buffer_load_u16 v57, v79, s[36:39], 0 offen offset:52
	buffer_load_u16 v58, v79, s[36:39], 0 offen offset:56
	buffer_load_u16 v59, v79, s[36:39], 0 offen offset:60
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[109:112], v117, s[12:15], 0 offen
	buffer_load_b128 v[113:116], v118, s[12:15], 0 offen
	buffer_load_b128 v[117:120], v119, s[12:15], 0 offen
	buffer_load_b128 v[40:43], v121, s[12:15], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0x7
	buffer_load_u16 v56, v79, s[36:39], 0 offen
	buffer_load_u16 v44, v79, s[36:39], 0 offen offset:4
	buffer_load_u16 v45, v79, s[36:39], 0 offen offset:8
	buffer_load_u16 v46, v79, s[36:39], 0 offen offset:12
	buffer_load_u16 v47, v79, s[36:39], 0 offen offset:16
	buffer_load_u16 v48, v79, s[36:39], 0 offen offset:20
	buffer_load_u16 v49, v79, s[36:39], 0 offen offset:24
	buffer_load_u16 v50, v79, s[36:39], 0 offen offset:28
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v60, v96
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v96, v94
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v95.h, 0
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	ds_store_b128 v78, v[109:112]
	s_waitcnt vmcnt(10)
	ds_store_b128 v78, v[113:116] offset:1024
	s_waitcnt vmcnt(9)
	ds_store_b128 v78, v[117:120] offset:2048
	s_waitcnt vmcnt(8)
	ds_store_b128 v78, v[40:43] offset:3072
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v90, v108
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v56, 16, v56
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v44, 16, v44
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v45, 16, v45
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v46, 16, v46
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v41, v56
	v_mul_f32_e32 v56, v90, v60
	v_dual_mul_f32 v60, v90, v61 :: v_dual_lshlrev_b32 v51, 16, v51
	v_mul_f32_e32 v61, v90, v62
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v62, v90, v63 :: v_dual_lshlrev_b32 v49, 16, v49
	v_mul_f32_e32 v63, v90, v97
	v_dual_mul_f32 v97, v90, v98 :: v_dual_lshlrev_b32 v48, 16, v48
	v_dual_mul_f32 v98, v90, v99 :: v_dual_lshlrev_b32 v53, 16, v53
	v_mul_f32_e32 v99, v90, v100
	v_dual_mul_f32 v100, v90, v101 :: v_dual_lshlrev_b32 v55, 16, v55
	v_dual_mul_f32 v101, v90, v102 :: v_dual_lshlrev_b32 v52, 16, v52
	v_dual_mul_f32 v102, v90, v103 :: v_dual_lshlrev_b32 v57, 16, v57
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v103, v90, v104 :: v_dual_lshlrev_b32 v50, 16, v50
	v_dual_mul_f32 v104, v90, v105 :: v_dual_lshlrev_b32 v59, 16, v59
	v_dual_mul_f32 v105, v90, v106 :: v_dual_mul_f32 v48, v63, v48
	v_dual_mul_f32 v106, v90, v107 :: v_dual_mul_f32 v45, v60, v45
	v_dual_mul_f32 v47, v62, v47 :: v_dual_lshlrev_b32 v54, 16, v54
	v_dual_mul_f32 v49, v97, v49 :: v_dual_lshlrev_b32 v58, 16, v58
	v_mul_f32_e32 v44, v56, v44
	v_dual_mul_f32 v46, v61, v46 :: v_dual_mul_f32 v51, v99, v51
	v_dual_mul_f32 v50, v98, v50 :: v_dual_mul_f32 v53, v101, v53
	v_dual_mul_f32 v52, v100, v52 :: v_dual_mul_f32 v55, v103, v55
	v_dual_mul_f32 v56, v104, v57 :: v_dual_mul_f32 v57, v105, v58
	v_mul_f32_e32 v58, v106, v59
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, 0xff800000, v41, s4
	v_cndmask_b32_e64 v59, 0xff800000, v44, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v54, v102, v54
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v60, 0xff800000, v45, s4
	v_cndmask_b32_e64 v61, 0xff800000, v46, s4
	v_cndmask_b32_e64 v62, 0xff800000, v47, s4
	v_cndmask_b32_e64 v48, 0xff800000, v48, s4
	v_cndmask_b32_e64 v63, 0xff800000, v49, s4
	v_cndmask_b32_e64 v104, 0xff800000, v50, s4
	v_cndmask_b32_e64 v44, 0xff800000, v51, s4
	v_cndmask_b32_e64 v45, 0xff800000, v52, s4
	v_cndmask_b32_e64 v46, 0xff800000, v53, s4
	v_cndmask_b32_e64 v49, 0xff800000, v55, s4
	v_cndmask_b32_e64 v50, 0xff800000, v56, s4
	v_cndmask_b32_e64 v51, 0xff800000, v57, s4
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v53, v41, v59
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v54, s4
	v_cndmask_b32_e64 v52, 0xff800000, v58, s4
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v54, v61, v62, v48
	v_max3_f32 v56, v49, v50, v51
	v_max3_f32 v57, v63, v104, v44
	v_max3_f32 v55, v45, v46, v47
.Ltmp4:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.h, v95.h
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v53, v60, v54
.Ltmp6:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v111.h, v95.h
	v_mov_b16_e32 v109.h, v95.h
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v54, v55, v56, v52
.Ltmp8:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.h, v95.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v42.h, v95.h
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v53, v53, v57, v54
.Ltmp10:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.h, v95.h
	v_mov_b16_e32 v94.h, v95.h
	v_mov_b16_e32 v108.h, v95.h
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v79, 64, v79
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v54, v53, s10, 0xfedcba98 op_sel:[1,0]
.Ltmp12:
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v77, s16, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v97, v93, v53, v54
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v53, v59, v97
	v_sub_f32_e32 v55, v61, v97
	v_sub_f32_e32 v44, v44, v97
	v_sub_f32_e32 v45, v45, v97
	v_sub_f32_e32 v46, v46, v97
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v58, v55
	v_exp_f32_e32 v44, v44
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v47, v47, v97
	v_sub_f32_e32 v49, v49, v97
	v_sub_f32_e32 v50, v50, v97
	v_sub_f32_e32 v51, v51, v97
	v_sub_f32_e32 v52, v52, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v45, v45
	v_exp_f32_e32 v46, v46
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v53, 0, v53, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v47, v47
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v44, s4
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v50, v50
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v95.l, v53.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v54, v60, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v53, v53
	v_mov_b16_e32 v42.l, v44.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v51, v51
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v57, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v42, 1, v42
	v_add3_u32 v42, v44, v42, 0x7fff
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v55, 0, v57, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v110.l, v55.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v56, v62, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v55, v55
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v56
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v58, s4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v56, v56
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, 0, v59, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v59, 1, v110
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v111.l, v57.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v41, v97
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v57, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v59, v55, v59, 0x7fff
	v_and_b32_e32 v60, 1, v111
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v41, v41
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v60, v57, v60, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v59.l, 0x7fff, v60.h, s8
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v54, 0, v41, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v41, 1, v95
	v_mov_b16_e32 v95.l, v56.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v48, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v109.l, v54.h
	v_cmp_o_f32_e64 s3, v54, v54
	v_and_b32_e32 v61, 1, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v53, v41, 0x7fff
	v_cndmask_b16 v41.h, 0x7fff, v41.h, s0
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v58, 0, v48, s4
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v48, 1, v109
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v110, v76 offset:256
	ds_load_u16_d16 v111, v76 offset:512
	ds_load_u16_d16 v112, v76 offset:768
	ds_load_u16_d16 v113, v76 offset:1024
	ds_load_u16_d16 v114, v76 offset:1280
	ds_load_u16_d16 v115, v76 offset:1536
	ds_load_u16_d16 v116, v76 offset:1792
	ds_load_u16_d16 v109, v76
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v76 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v76 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v76 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v76 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v76 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v76 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v116, v76 offset:1920
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v76 offset:128
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v95.l, v58.h
	v_add3_u32 v48, v54, v48, 0x7fff
	v_cmp_o_f32_e64 s7, v58, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v62, 1, v95
	v_cndmask_b16 v41.l, 0x7fff, v48.h, s3
	v_add3_u32 v48, v56, v61, 0x7fff
	v_cndmask_b16 v48.l, 0x7fff, v59.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v60, v58, v62, 0x7fff
	v_permlanex16_b32 v61, v41, s10, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v48.h, 0x7fff, v48.h, s5
	v_cndmask_b16 v59.h, 0x7fff, v60.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v98, v61, v41, v91
	v_permlanex16_b32 v60, v48, s10, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v99, v61, v41, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v41, v59, s10, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v100, v60, v48, v91
	v_perm_b32 v101, v60, v48, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v48, v104, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v102, v41, v59, v91
	v_perm_b32 v103, v41, v59, v92
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v41, v63, v97
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v59, v93, v97
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v41, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v59, v59
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v61, 0, v48, s4
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v60, 0, v41, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v93, 0, v59, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v95.l, v61.h
	v_cmp_o_f32_e64 s0, v61, v61
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v60.h
	v_cmp_o_f32_e64 s2, v60, v60
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v93 :: v_dual_and_b32 v41, 1, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v25, v25, v93 :: v_dual_and_b32 v40, 1, v40
	v_mul_f32_e32 v26, v26, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v41, v61, v41, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v93
	v_mul_f32_e32 v28, v28, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v40, v60, v40, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v93
	v_mul_f32_e32 v30, v30, v93
	v_mul_f32_e32 v31, v31, v93
	v_mul_f32_e32 v16, v16, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v40.l, 0x7fff, v40.h, s2
	v_cndmask_b16 v40.h, 0x7fff, v41.h, s0
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v93
	v_mul_f32_e32 v18, v18, v93
	v_mul_f32_e32 v19, v19, v93
	v_mul_f32_e32 v20, v20, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v41, v40, s10, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v93
	v_mul_f32_e32 v22, v22, v93
	v_mul_f32_e32 v23, v23, v93
	v_mul_f32_e32 v8, v8, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v104, v41, v40, v91
	v_perm_b32 v105, v41, v40, v92
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v93
	v_mul_f32_e32 v10, v10, v93
	v_mul_f32_e32 v11, v11, v93
	v_mul_f32_e32 v12, v12, v93
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[109:116], v[98:105], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v109, v76 offset:32
	ds_load_u16_d16 v110, v76 offset:288
	ds_load_u16_d16 v111, v76 offset:544
	ds_load_u16_d16 v112, v76 offset:800
	ds_load_u16_d16 v113, v76 offset:1056
	ds_load_u16_d16 v114, v76 offset:1312
	ds_load_u16_d16 v115, v76 offset:1568
	ds_load_u16_d16 v116, v76 offset:1824
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v76 offset:160
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v76 offset:416
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v76 offset:672
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v76 offset:928
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v76 offset:1184
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v76 offset:1440
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v76 offset:1696
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v116, v76 offset:1952
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v13, v13, v93
	v_mul_f32_e32 v14, v14, v93
	v_mul_f32_e32 v15, v15, v93
	v_mul_f32_e32 v0, v0, v93
	v_mul_f32_e32 v1, v1, v93
	v_mul_f32_e32 v2, v2, v93
	v_mul_f32_e32 v3, v3, v93
	v_mul_f32_e32 v4, v4, v93
	v_mul_f32_e32 v5, v5, v93
	v_mul_f32_e32 v6, v6, v93
	v_mul_f32_e32 v7, v7, v93
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v40, v76 offset:2112
	ds_load_u16_d16 v41, v76 offset:2368
	ds_load_u16_d16 v48, v76 offset:2144
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s0, v44, v44
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[109:116], v[98:105], v[16:23]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16 v111, v76 offset:576
	ds_load_u16_d16 v112, v76 offset:832
	ds_load_u16_d16 v113, v76 offset:1088
	ds_load_u16_d16 v114, v76 offset:1344
	ds_load_u16_d16 v115, v76 offset:1600
	ds_load_u16_d16 v116, v76 offset:1856
	ds_load_u16_d16 v109, v76 offset:64
	ds_load_u16_d16 v110, v76 offset:320
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v76 offset:704
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v76 offset:960
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v76 offset:1216
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v76 offset:1472
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v76 offset:1728
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v116, v76 offset:1984
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v76 offset:192
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v76 offset:448
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[109:116], v[98:105], v[8:15]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v110, v76 offset:352
	ds_load_u16_d16 v109, v76 offset:96
	ds_load_u16_d16 v111, v76 offset:608
	ds_load_u16_d16 v112, v76 offset:864
	ds_load_u16_d16 v113, v76 offset:1120
	ds_load_u16_d16 v114, v76 offset:1376
	ds_load_u16_d16 v115, v76 offset:1632
	ds_load_u16_d16 v116, v76 offset:1888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v110, v76 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v109, v76 offset:224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v111, v76 offset:736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v112, v76 offset:992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v113, v76 offset:1248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v114, v76 offset:1504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v115, v76 offset:1760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v116, v76 offset:2016
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[109:116], v[98:105], v[0:7]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v98, 0, v45, s4
	v_cndmask_b32_e64 v45, 0, v46, s4
	v_cndmask_b32_e64 v99, 0, v47, s4
	v_cndmask_b32_e64 v100, 0, v49, s4
	v_cndmask_b32_e64 v101, 0, v50, s4
	v_cndmask_b32_e64 v102, 0, v51, s4
	v_cndmask_b32_e64 v103, 0, v52, s4
.Ltmp13:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v46, v54, v53 :: v_dual_add_f32 v47, v55, v56
	v_dual_add_f32 v49, v57, v58 :: v_dual_add_f32 v50, v60, v61
	v_dual_add_f32 v51, v44, v98 :: v_dual_add_f32 v52, v45, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v53, v100, v101 :: v_dual_add_f32 v54, v102, v103
.Ltmp14:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v94.l, v100.h
	v_mov_b16_e32 v108.l, v102.h
.Ltmp15:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v104, v46, v47 :: v_dual_add_f32 v105, v49, v50
	v_dual_add_f32 v106, v51, v52 :: v_dual_add_f32 v107, v53, v54
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp16:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v94, 1, v94
	v_and_b32_e32 v108, 1, v108
	v_cmp_o_f32_e64 s7, v100, v100
	v_cmp_o_f32_e64 s9, v102, v102
	v_mov_b16_e32 v95.l, v98.h
	v_add3_u32 v94, v100, v94, 0x7fff
	v_add3_u32 v100, v102, v108, 0x7fff
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v102, v104, v105
	v_add_f32_e32 v104, v106, v107
.Ltmp18:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v43.l, v45.h
	v_cndmask_b16 v106.l, 0x7fff, v94.h, s7
	v_cmp_o_f32_e64 s2, v45, v45
	v_cmp_o_f32_e64 s3, v98, v98
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v102, v104
.Ltmp20:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v104, 1, v95
	v_mov_b16_e32 v95.l, v99.h
	v_and_b32_e32 v43, 1, v43
	v_cmp_o_f32_e64 s5, v99, v99
.Ltmp21:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v102, v94, s10, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v101, v101
	v_cmp_o_f32_e64 s8, v103, v103
	v_add3_u32 v43, v45, v43, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v56, v76 offset:2048
	ds_load_u16_d16 v58, v76 offset:2560
	ds_load_u16_d16 v42, v76 offset:2624
	ds_load_u16_d16 v59, v76 offset:2816
	ds_load_u16_d16 v43, v76 offset:2880
	ds_load_u16_d16 v60, v76 offset:3072
	ds_load_u16_d16 v44, v76 offset:3136
	ds_load_u16_d16 v61, v76 offset:3328
	ds_load_u16_d16 v45, v76 offset:3392
	ds_load_u16_d16 v62, v76 offset:3584
	ds_load_u16_d16 v46, v76 offset:3648
	ds_load_u16_d16 v63, v76 offset:3840
	ds_load_u16_d16 v57, v76 offset:2304
	ds_load_u16_d16 v47, v76 offset:3904
	ds_load_u16_d16 v49, v76 offset:2400
	ds_load_u16_d16 v50, v76 offset:2656
	ds_load_u16_d16 v51, v76 offset:2912
	ds_load_u16_d16 v52, v76 offset:3168
	ds_load_u16_d16 v53, v76 offset:3424
	ds_load_u16_d16 v54, v76 offset:3680
	ds_load_u16_d16 v55, v76 offset:3936
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v94, v94, v102
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v102, 1, v95
	v_mov_b16_e32 v95.l, v101.h
	v_add3_u32 v98, v98, v104, 0x7fff
	s_waitcnt lgkmcnt(18)
	v_cndmask_b16 v100.l, 0x7fff, v42.h, s0
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v94, v96, v93
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v96, v99, v102, 0x7fff
	v_and_b32_e32 v93, 1, v95
	v_mov_b16_e32 v95.l, v103.h
	s_waitcnt lgkmcnt(16)
	v_cndmask_b16 v105.l, 0x7fff, v43.h, s2
	v_cndmask_b16 v107.l, 0x7fff, v100.h, s9
	v_cndmask_b16 v100.h, 0x7fff, v98.h, s3
	v_add3_u32 v93, v101, v93, 0x7fff
	v_and_b32_e32 v95, 1, v95
	v_cndmask_b16 v105.h, 0x7fff, v96.h, s5
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_permlanex16_b32 v99, v100, s10, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v106.h, 0x7fff, v93.h, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v95, v103, v95, 0x7fff
	v_permlanex16_b32 v96, v105, s10, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_perm_b32 v98, v99, v100, v91
	v_permlanex16_b32 v93, v106, s10, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b16 v107.h, 0x7fff, v95.h, s8
	v_perm_b32 v99, v99, v100, v92
	v_perm_b32 v100, v96, v105, v91
	v_perm_b32 v101, v96, v105, v92
	v_perm_b32 v102, v93, v106, v91
	v_permlanex16_b32 v95, v107, s10, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v103, v93, v106, v92
	v_mov_b32_e32 v93, v97
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v104, v95, v107, v91
	v_perm_b32 v105, v95, v107, v92
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v106, v76 offset:2080
	ds_load_u16_d16 v107, v76 offset:2336
	ds_load_u16_d16 v108, v76 offset:2592
	ds_load_u16_d16 v109, v76 offset:2848
	ds_load_u16_d16 v110, v76 offset:3104
	ds_load_u16_d16 v111, v76 offset:3360
	ds_load_u16_d16 v112, v76 offset:3616
	ds_load_u16_d16 v113, v76 offset:3872
	ds_load_u16_d16_hi v40, v76 offset:2240
	ds_load_u16_d16_hi v56, v76 offset:2176
	ds_load_u16_d16_hi v41, v76 offset:2496
	ds_load_u16_d16_hi v58, v76 offset:2688
	ds_load_u16_d16_hi v42, v76 offset:2752
	ds_load_u16_d16_hi v59, v76 offset:2944
	ds_load_u16_d16_hi v43, v76 offset:3008
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v60, v76 offset:3200
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v44, v76 offset:3264
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v61, v76 offset:3456
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v45, v76 offset:3520
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v62, v76 offset:3712
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v46, v76 offset:3776
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v63, v76 offset:3968
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v57, v76 offset:2432
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v47, v76 offset:4032
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v106, v76 offset:2208
	ds_load_u16_d16_hi v48, v76 offset:2272
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v107, v76 offset:2464
	ds_load_u16_d16_hi v49, v76 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v108, v76 offset:2720
	ds_load_u16_d16_hi v50, v76 offset:2784
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v109, v76 offset:2976
	ds_load_u16_d16_hi v51, v76 offset:3040
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v110, v76 offset:3232
	ds_load_u16_d16_hi v52, v76 offset:3296
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v111, v76 offset:3488
	ds_load_u16_d16_hi v53, v76 offset:3552
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v112, v76 offset:3744
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v113, v76 offset:4000
	ds_load_u16_d16_hi v54, v76 offset:3808
	ds_load_u16_d16_hi v55, v76 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[56:63], v[98:105], v[24:31]
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[40:47], v[98:105], v[8:15]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[106:113], v[98:105], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[48:55], v[98:105], v[0:7]
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_1
; %bb.2:
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v33, null, v94, v94, v24
	v_div_scale_f32 v34, null, v94, v94, v25
	v_div_scale_f32 v36, null, v94, v94, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v35, v33
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v24, v94, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v38, v36
	v_div_scale_f32 v42, s0, v25, v94, v25
	v_div_scale_f32 v40, null, v94, v94, v27
	v_div_scale_f32 v50, s3, v27, v94, v27
	v_fma_f32 v32, -v33, v35, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v41, -v34, v37, 1.0
	v_rcp_f32_e32 v43, v40
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v44, -v36, v38, 1.0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s1, 0, v94
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v35, v32, v35
	v_fmac_f32_e32 v37, v41, v37
	v_div_scale_f32 v41, s2, v26, v94, v26
	v_fmac_f32_e32 v38, v44, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_mul_f32 v44, v39, v35 :: v_dual_mul_f32 v45, v42, v37
	v_fma_f32 v46, -v40, v43, 1.0
	.loc	1 1051 17 is_stmt 1             ; attention.py:1051:17
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s27, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v48, -v33, v44, v39
	v_fma_f32 v49, -v34, v45, v42
	v_mul_f32_e32 v47, v41, v38
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v32, 16, v74
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v44, v48, v35 :: v_dual_fmac_f32 v45, v49, v37
	v_div_scale_f32 v48, null, v94, v94, v28
	v_div_scale_f32 v49, null, v94, v94, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v34, v45, v42
	v_rcp_f32_e32 v42, v48
	v_fma_f32 v33, -v33, v44, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v33, v33, v35, v44
	v_div_scale_f32 v35, null, v94, v94, v29
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v44, -v48, v42, 1.0
	v_fmac_f32_e32 v43, v46, v43
	v_fma_f32 v46, -v36, v47, v41
	v_div_fixup_f32 v24, v33, v94, v24
	v_rcp_f32_e32 v33, v35
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v44, v42 :: v_dual_mul_f32 v39, v50, v43
	v_fmac_f32_e32 v47, v46, v38
	v_div_fmas_f32 v34, v34, v37, v45
	v_div_scale_f32 v45, null, v94, v94, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v37, -v40, v39, v50
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v25, v34, v94, v25
	v_fma_f32 v34, -v36, v47, v41
	v_div_scale_f32 v41, null, v94, v94, v30
	v_fmac_f32_e32 v39, v37, v43
	v_fma_f32 v37, -v35, v33, 1.0
	v_div_scale_f32 v36, s0, v28, v94, v28
	v_div_fmas_f32 v34, v34, v38, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v38, -v40, v39, v50
	v_fmac_f32_e32 v33, v37, v33
	v_rcp_f32_e32 v37, v41
	v_mul_f32_e32 v40, v36, v42
	v_rcp_f32_e32 v47, v45
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v44, s2, v29, v94, v29
	v_div_fmas_f32 v38, v38, v43, v39
	v_fma_f32 v39, -v48, v40, v36
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v26, v34, v94, v26
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v41, v37, 1.0
	v_div_fixup_f32 v27, v38, v94, v27
	v_fmac_f32_e32 v40, v39, v42
	v_div_scale_f32 v39, null, v94, v94, v16
	v_fmac_f32_e32 v37, v46, v37
	v_fma_f32 v46, -v45, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v48, v40, v36
	v_div_scale_f32 v38, s3, v30, v94, v30
	v_rcp_f32_e32 v48, v39
	v_fmac_f32_e32 v47, v46, v47
	v_div_scale_f32 v46, s5, v31, v94, v31
	v_div_fmas_f32 v36, v36, v42, v40
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v42, v46, v47 :: v_dual_mul_f32 v43, v44, v33
	v_div_fixup_f32 v28, v36, v94, v28
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s1
	v_cndmask_b32_e64 v26, 0, v26, s1
	v_cndmask_b32_e64 v27, 0, v27, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v35, v43, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v43, v34, v33
	v_mul_f32_e32 v34, v38, v37
	v_fma_f32 v35, -v35, v43, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v40, -v41, v34, v38
	v_fma_f32 v44, -v39, v48, 1.0
	v_div_fmas_f32 v33, v35, v33, v43
	v_rcp_f32_e32 v35, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v34, v40, v37
	v_fma_f32 v40, -v45, v42, v46
	v_fmac_f32_e32 v48, v44, v48
	v_div_scale_f32 v43, s0, v16, v94, v16
	v_div_fixup_f32 v29, v33, v94, v29
	v_fma_f32 v33, -v41, v34, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v36, v43, v48
	v_fmac_f32_e32 v42, v40, v47
	v_fma_f32 v38, -v49, v35, 1.0
	v_div_scale_f32 v40, null, v94, v94, v18
	v_div_fmas_f32 v33, v33, v37, v34
	v_fma_f32 v37, -v39, v36, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v38, v35
	v_rcp_f32_e32 v38, v40
	v_fma_f32 v34, -v45, v42, v46
	v_div_scale_f32 v41, s2, v17, v94, v17
	v_div_scale_f32 v44, null, v94, v94, v19
	v_fmac_f32_e32 v36, v37, v48
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v30, v33, v94, v30
	v_div_fmas_f32 v34, v34, v47, v42
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v45, -v40, v38, 1.0
	v_rcp_f32_e32 v37, v44
	v_fma_f32 v33, -v39, v36, v43
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v31, v34, v94, v31
	v_fmac_f32_e32 v38, v45, v38
	v_mul_f32_e32 v42, v41, v35
	v_div_scale_f32 v45, null, v94, v94, v20
	v_div_fmas_f32 v33, v33, v48, v36
	v_div_scale_f32 v39, s3, v18, v94, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v49, v42, v41
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v43, -v44, v37, 1.0
	v_div_fixup_f32 v16, v33, v94, v16
	v_div_scale_f32 v46, null, v94, v94, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v42, v34, v35 :: v_dual_fmac_f32 v37, v43, v37
	v_div_scale_f32 v43, s0, v19, v94, v19
	v_rcp_f32_e32 v48, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v33, -v49, v42, v41
	v_fma_f32 v49, -v45, v36, 1.0
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s1
	v_cndmask_b32_e64 v30, 0, v30, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v35, v42
	v_fmac_f32_e32 v36, v49, v36
	v_mul_f32_e32 v34, v39, v38
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v42, -v46, v48, 1.0
	v_div_fixup_f32 v17, v33, v94, v17
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v31, 0, v31, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v40, v34, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v47, v43, v37 :: v_dual_fmac_f32 v48, v42, v48
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s1
	v_cndmask_b32_e64 v17, 0, v17, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v34, v41, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v35, -v44, v47, v43
	v_div_scale_f32 v41, s2, v20, v94, v20
	v_fma_f32 v33, -v40, v34, v39
	v_div_scale_f32 v40, null, v94, v94, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v47, v35, v37
	v_mul_f32_e32 v35, v41, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v33, v33, v38, v34
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v34, -v44, v47, v43
	v_fma_f32 v38, -v45, v35, v41
	v_div_scale_f32 v39, s5, v21, v94, v21
	v_div_scale_f32 v44, null, v94, v94, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v34, v34, v37, v47
	v_div_fixup_f32 v18, v33, v94, v18
	v_fma_f32 v47, -v40, v42, 1.0
	v_fmac_f32_e32 v35, v38, v36
	v_rcp_f32_e32 v37, v44
	v_div_fixup_f32 v19, v34, v94, v19
	v_div_scale_f32 v34, s0, v22, v94, v22
	v_fmac_f32_e32 v42, v47, v42
	v_mul_f32_e32 v43, v39, v48
	v_fma_f32 v33, -v45, v35, v41
	s_mov_b32 vcc_lo, s2
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s1
	v_cndmask_b32_e64 v19, 0, v19, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v35
	v_mul_f32_e32 v36, v34, v42
	v_fma_f32 v38, -v46, v43, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v20, v33, v94, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v43, v38, v48
	v_fma_f32 v38, -v44, v37, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v20, s1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v46, v43, v39
	v_fmac_f32_e32 v37, v38, v37
	v_div_scale_f32 v38, null, v94, v94, v8
	v_div_scale_f32 v39, s2, v23, v94, v23
	v_div_scale_f32 v46, null, v94, v94, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v38
	v_mul_f32_e32 v45, v39, v37
	v_div_fmas_f32 v35, v35, v48, v43
	v_fma_f32 v43, -v40, v36, v34
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v48, null, v94, v94, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v35, v94, v21
	v_fmac_f32_e32 v36, v43, v42
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v43, -v38, v41, 1.0
	v_fma_f32 v33, -v44, v45, v39
	v_rcp_f32_e32 v50, v48
	v_fma_f32 v34, -v40, v36, v34
	v_div_scale_f32 v40, null, v94, v94, v10
	v_fmac_f32_e32 v41, v43, v41
	v_fmac_f32_e32 v45, v33, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v42, v36
	v_rcp_f32_e32 v43, v40
	v_fma_f32 v47, -v46, v35, 1.0
	v_div_scale_f32 v42, s0, v9, v94, v9
	v_fma_f32 v36, -v44, v45, v39
	v_div_scale_f32 v33, s3, v8, v94, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v35, v47, v35
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v22, v34, v94, v22
	v_fma_f32 v44, -v40, v43, 1.0
	v_mul_f32_e32 v39, v33, v41
	v_mul_f32_e32 v49, v42, v35
	v_div_fmas_f32 v36, v36, v37, v45
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, s5, v10, v94, v10
	v_fma_f32 v37, -v46, v49, v42
	v_fma_f32 v47, -v38, v39, v33
	v_div_fixup_f32 v23, v36, v94, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v45, v44, v43
	v_fma_f32 v36, -v48, v50, 1.0
	v_fmac_f32_e32 v49, v37, v35
	v_div_scale_f32 v37, null, v94, v94, v12
	v_fma_f32 v34, -v40, v45, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v39, v47, v41 :: v_dual_fmac_f32 v50, v36, v50
	v_div_scale_f32 v36, s2, v11, v94, v11
	v_fmac_f32_e32 v45, v34, v43
	v_rcp_f32_e32 v34, v37
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v33, -v38, v39, v33
	v_fma_f32 v38, -v46, v49, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s1
	v_cndmask_b32_e64 v22, 0, v22, s1
	v_cndmask_b32_e64 v23, 0, v23, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v41, v39
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v39, v36, v50
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v37, v34, 1.0
	v_div_fixup_f32 v8, v33, v94, v8
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v34, v41, v34
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v40, v45, v44
	v_div_scale_f32 v40, null, v94, v94, v13
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v41, s0, v12, v94, v12
	v_div_fmas_f32 v38, v38, v43, v45
	v_rcp_f32_e32 v42, v40
	v_fma_f32 v43, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v33, v41, v34
	v_div_fixup_f32 v9, v35, v94, v9
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v10, v38, v94, v10
	v_fmac_f32_e32 v39, v43, v50
	v_fma_f32 v43, -v37, v33, v41
	v_div_scale_f32 v38, null, v94, v94, v14
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v40, v42, 1.0
	v_fma_f32 v36, -v48, v39, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v33, v43, v34
	v_rcp_f32_e32 v44, v38
	v_div_scale_f32 v43, null, v94, v94, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s3, v13, v94, v13
	v_div_fmas_f32 v36, v36, v50, v39
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v45, v43
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v39, v35, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v36, v94, v11
	v_fma_f32 v36, -v37, v33, v41
	v_fma_f32 v41, -v38, v44, 1.0
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s1
	v_cndmask_b32_e64 v10, 0, v10, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v36, v34, v33
	v_div_scale_f32 v34, null, v94, v94, v0
	v_fmac_f32_e32 v39, v37, v42
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v94, v94, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s0, v14, v94, v14
	v_div_fixup_f32 v12, v33, v94, v12
	v_fma_f32 v33, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	v_fma_f32 v35, -v40, v39, v35
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v45, v33, v45
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v46, -v34, v37, 1.0
	v_div_scale_f32 v33, s2, v15, v94, v15
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v94, v94, v2
	v_mul_f32_e32 v42, v33, v45
	v_div_scale_f32 v48, s3, v0, v94, v0
	v_fma_f32 v49, -v41, v47, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v33
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v1, v94, v1
	v_div_fixup_f32 v13, v35, v94, v13
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v33, -v43, v42, v33
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s0, v2, v94, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_div_fmas_f32 v35, v35, v44, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v36, v39, v50
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v40, null, v94, v94, v3
	v_div_fmas_f32 v33, v33, v45, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v14, v35, v94, v14
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	v_rcp_f32_e32 v42, v40
	v_div_fixup_f32 v15, v33, v94, v15
	v_div_fixup_f32 v0, v34, v94, v0
	v_div_scale_f32 v34, null, v94, v94, v4
	v_fmac_f32_e32 v36, v41, v50
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v44, null, v94, v94, v7
	v_div_fmas_f32 v37, v37, v47, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v33, -v46, v36, v39
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s0
	v_rcp_f32_e32 v46, v44
	v_div_fixup_f32 v1, v37, v94, v1
	v_div_fmas_f32 v33, v33, v50, v36
	v_rcp_f32_e32 v36, v34
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v94, v94, v5
	v_div_scale_f32 v37, null, v94, v94, v6
	v_div_scale_f32 v38, vcc_lo, v3, v94, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v39, v35
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v2, v33, v94, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v33, -v34, v36, 1.0
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v50, -v44, v46, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s1
	v_cndmask_b32_e64 v12, 0, v12, s1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v36, v33, v36
	v_div_scale_f32 v33, s0, v4, v94, v4
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v48, -v37, v41, 1.0
	v_fma_f32 v47, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v49, v33, v36 :: v_dual_fmac_f32 v46, v50, v46
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s2, v5, v94, v5
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s3, v6, v94, v6
	v_fmac_f32_e32 v43, v47, v42
	v_fma_f32 v47, -v34, v49, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v51, v45, v39 :: v_dual_mul_f32 v52, v48, v41
	v_div_scale_f32 v50, s5, v7, v94, v7
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v38, -v40, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v35, v51, v45
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_fma_f32 v33, -v34, v49, v33
	v_div_fmas_f32 v38, v38, v42, v43
	v_dual_fmac_f32 v51, v40, v39 :: v_dual_fmac_f32 v52, v47, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v34, -v44, v53, v50
	s_mov_b32 vcc_lo, s0
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	s_mul_i32 s0, s35, s26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v33, v33, v36, v49
	v_fma_f32 v35, -v35, v51, v45
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v4, v33, v94, v4
	.loc	1 1046 24                       ; attention.py:1046:24
	v_mul_lo_u32 v33, s35, v73
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v39, v51
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v44, v53, v50
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v3, v38, v94, v3
	s_mov_b32 s26, 0x7ffffffe
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v6, v34, v94, v6
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_nc_u32_e32 v34, v33, v74
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s35, v74
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v35, v94, v5
	v_div_fixup_f32 v7, v36, v94, v7
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	v_add_lshl_u32 v38, v33, v74, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s4, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s35, v32
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v35, 32, v74
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v13, 0, v13, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s1
	v_cndmask_b32_e64 v15, 0, v15, s1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v24, v41, s[24:27], 0 offen
	buffer_store_b32 v25, v39, s[24:27], 0 offen
	buffer_store_b32 v26, v40, s[24:27], 0 offen
	v_add_nc_u32_e32 v24, 24, v38
	v_add_nc_u32_e32 v25, 32, v38
	v_add_nc_u32_e32 v26, 40, v38
	v_add_nc_u32_e32 v39, 48, v38
	v_add_nc_u32_e32 v40, 56, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_dual_cndmask_b32 v26, 0x80000000, v26 :: v_dual_cndmask_b32 v39, 0x80000000, v39
	s_delay_alu instid0(VALU_DEP_3)
	v_cndmask_b32_e32 v40, 0x80000000, v40, vcc_lo
	s_clause 0x4
	buffer_store_b32 v27, v24, s[24:27], 0 offen
	buffer_store_b32 v28, v25, s[24:27], 0 offen
	buffer_store_b32 v29, v26, s[24:27], 0 offen
	buffer_store_b32 v30, v39, s[24:27], 0 offen
	buffer_store_b32 v31, v40, s[24:27], 0 offen
	v_add_lshl_u32 v24, v33, v32, 2
	v_add_nc_u32_e32 v25, 0x48, v38
	v_add_nc_u32_e32 v26, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s4, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[24:27], 0 offen
	buffer_store_b32 v17, v25, s[24:27], 0 offen
	buffer_store_b32 v18, v26, s[24:27], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v38
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s1
	v_cndmask_b32_e64 v2, 0, v2, s1
	v_cndmask_b32_e64 v3, 0, v3, s1
	v_cndmask_b32_e64 v4, 0, v4, s1
	v_cndmask_b32_e64 v5, 0, v5, s1
	v_cndmask_b32_e64 v6, 0, v6, s1
	v_cndmask_b32_e64 v7, 0, v7, s1
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s35, v35
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v19, v27, s[24:27], 0 offen
	v_add_nc_u32_e32 v18, 0x70, v38
	v_add_nc_u32_e32 v19, 0x78, v38
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	buffer_store_b32 v20, v16, s[24:27], 0 offen
	v_add_lshl_u32 v16, v33, v35, 2
	v_dual_cndmask_b32 v18, 0x80000000, v18 :: v_dual_cndmask_b32 v19, 0x80000000, v19
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s4, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[24:27], 0 offen
	buffer_store_b32 v23, v19, s[24:27], 0 offen
	buffer_store_b32 v8, v16, s[24:27], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v74
	.loc	1 1051 17                       ; attention.py:1051:17
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[24:27], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s2, s35, v36
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v10, v8, s[24:27], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[24:27], 0 offen
	buffer_store_b32 v12, v16, s[24:27], 0 offen
	buffer_store_b32 v13, v17, s[24:27], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v33, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s4, s2
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v75
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[24:27], 0 offen
	buffer_store_b32 v15, v9, s[24:27], 0 offen
	buffer_store_b32 v0, v10, s[24:27], 0 offen
	buffer_store_b32 v1, v11, s[24:27], 0 offen
	buffer_store_b32 v2, v12, s[24:27], 0 offen
	v_add_nc_u32_e32 v0, 0xd8, v34
	v_add_nc_u32_e32 v1, 0xe0, v34
	v_add_nc_u32_e32 v2, 0xe8, v34
	v_add_nc_u32_e32 v8, 0xf0, v34
	v_add_lshl_u32 v9, v33, v37, 2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v0, 0x80000000, v0 :: v_dual_cndmask_b32 v1, 0x80000000, v1
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	s_clause 0x4
	buffer_store_b32 v3, v0, s[24:27], 0 offen
	buffer_store_b32 v4, v1, s[24:27], 0 offen
	buffer_store_b32 v5, v2, s[24:27], 0 offen
	buffer_store_b32 v6, v8, s[24:27], 0 offen
	buffer_store_b32 v7, v9, s[24:27], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp25:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 122
		.amdhsa_next_free_sgpr 40
		.amdhsa_reserve_vcc 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_workgroup_processor_mode 1
		.amdhsa_memory_ordered 1
		.amdhsa_forward_progress 1
		.amdhsa_shared_vgpr_count 0
		.amdhsa_inst_pref_size 63
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 122
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8744
; TotalNumSgprs: 42
; NumVgprs: 122
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 42
; NumVGPRsForWavesPerEU: 122
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.p2alignl 7, 3214868480
	.fill 96, 4, 3214868480
	.section	.AMDGPU.gpr_maximums,"",@progbits
	.set amdgpu.max_num_vgpr, 0
	.set amdgpu.max_num_agpr, 0
	.set amdgpu.max_num_sgpr, 0
	.set amdgpu.max_num_named_barrier, 0
	.text
	.section	.debug_abbrev,"",@progbits
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	2                               ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp1-.Lfunc_begin0
	.quad	.Ltmp2-.Lfunc_begin0
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.section	".note.GNU-stack","",@progbits
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     122
    .vgpr_spill_count: 0
    .wavefront_size: 32
    .workgroup_processor_mode: 1
amdhsa.target:   amdgcn-amd-amdhsa--gfx1151
amdhsa.version:
  - 1
  - 2
...

	.end_amdgpu_metadata
	.section	.debug_line,"",@progbits
.Lline_table_start0:
