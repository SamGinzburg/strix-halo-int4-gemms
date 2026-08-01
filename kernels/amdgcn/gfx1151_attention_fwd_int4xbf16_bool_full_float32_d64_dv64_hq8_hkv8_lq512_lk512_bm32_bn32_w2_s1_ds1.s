	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[44:47], s[0:1], 0x60
	s_load_b64 s[12:13], s[0:1], 0x70
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 1, v0
	s_load_b256 s[36:43], s[0:1], 0x0
	v_dual_mov_b32 v49, 0x6420 :: v_dual_lshlrev_b32 v72, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s14, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v46, s4, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v51, 0x5410 :: v_dual_and_b32 v44, 16, v72
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s60, s4, s14
	s_mov_b32 s55, 0x31027000
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v46
	s_mov_b32 s54, 0x7ffffffe
	v_dual_mov_b32 v50, 0x7531 :: v_dual_and_b32 v47, 15, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x20
	s_load_b128 s[48:51], s[0:1], 0x30
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v99, 0xff800000
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s44, v45
	s_mul_i32 s2, s44, s60
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s44, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s37, 0xffff
	s_mov_b32 s52, s36
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v69, v45, 16, v47
	v_bfe_u32 v70, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_and_b32_e32 v54, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v1, v44, s2
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v69
	s_mov_b32 s4, 0
	v_dual_mov_b32 v26, v24 :: v_dual_lshlrev_b32 v55, 1, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	s_mov_b32 s11, s4
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[40:43], v1, s[52:55], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s60, v69
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s43, 0xffff
	v_mov_b32_e32 v52, 0x7632
	s_mov_b32 s52, s42
	s_mov_b32 s7, s4
	v_lshlrev_b32_e32 v1, 1, v1
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	v_dual_mov_b32 v39, s11 :: v_dual_mov_b32 v36, s8
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_mov_b32_e32 v33, s5
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	v_dual_mov_b32 v73, 0xff800000 :: v_dual_mov_b32 v38, s10
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v48, v1, s[52:55], 0 offen
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v37, s9 :: v_dual_mov_b32 v34, s6
	v_dual_mov_b32 v35, s7 :: v_dual_mov_b32 v32, s4
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v53, 3, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s0, 3
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v60, v55, 30, v70
	v_cmp_eq_u32_e64 s0, 0, v54
	v_dual_mov_b32 v27, v24 :: v_dual_and_b32 v58, 24, v0
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v54, 6, v54
	v_dual_mov_b32 v18, v24 :: v_dual_and_b32 v61, 24, v55
	v_dual_mov_b32 v20, v24 :: v_dual_lshlrev_b32 v75, 2, v60
	v_cndmask_b32_e64 v49, 0x7531, v49, s0
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v53, s14, v53
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v59, 7, v0
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v62, 1, v70
	v_xor_b32_e32 v58, v72, v58
	v_lshl_add_u32 v74, v47, 1, 0
	v_or_b32_e32 v45, s14, v45
	v_lshl_or_b32 v47, v47, 5, v61
	v_cndmask_b32_e64 v50, 0x6420, v50, s0
	v_lshl_or_b32 v49, v49, 8, v49
	v_and_or_b32 v77, v55, 60, v54
	v_or_b32_e32 v54, 24, v53
	v_or_b32_e32 v55, 16, v53
	v_or_b32_e32 v60, 8, v53
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v80, 4, v75
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v46, s13, v46
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v56, 16, v0
	v_dual_mov_b32 v17, v24 :: v_dual_lshlrev_b32 v76, 4, v59
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v79, 0, v58
	v_dual_mov_b32 v8, v24 :: v_dual_and_b32 v49, 0x750031, v49
	v_dual_mov_b32 v10, v24 :: v_dual_add_nc_u32 v83, 0, v47
	v_xor_b32_e32 v59, 8, v58
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v78, s3, 10, v62
	v_xor_b32_e32 v58, 8, v47
	v_xor_b32_e32 v62, 16, v47
	v_xor_b32_e32 v63, 24, v47
	v_lshl_or_b32 v50, v50, 8, v50
	v_mul_lo_u32 v47, s45, v54
	v_mul_lo_u32 v54, s45, v55
	v_mul_lo_u32 v55, s45, v60
	v_mad_u64_u32 v[60:61], null, s44, v45, v[44:45]
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s4, s47, s4
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s5, s12, s1
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v50, 0x750031, v50
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s4, s4, s5
	v_lshl_or_b32 v49, v49, 4, v49
	v_add3_u32 v89, s4, v46, v44
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v56
	v_mov_b32_e32 v9, v24
	v_dual_mov_b32 v11, v24 :: v_dual_lshlrev_b32 v90, 1, v47
	v_and_b32_e32 v88, 0x7050301, v49
	v_lshl_or_b32 v49, v50, 4, v50
	v_cndmask_b32_e64 v50, 0x1054, v51, s4
	v_cndmask_b32_e64 v51, 0x3276, v52, s4
	v_mov_b32_e32 v15, v24
	v_dual_mov_b32 v28, v24 :: v_dual_lshlrev_b32 v57, 3, v0
	v_and_b32_e32 v94, 0x7050301, v49
	v_lshl_or_b32 v49, v50, 8, v50
	v_lshl_or_b32 v50, v51, 8, v51
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v87, 0, v63
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v6, v24
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v53, s45, v53
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v57, 56, v57
	v_dual_mov_b32 v23, v24 :: v_dual_add_nc_u32 v86, 0, v62
	v_mov_b32_e32 v1, v24
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s46, 0x3fb8aa3b
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v71, 4, v0
	v_dual_mov_b32 v19, v24 :: v_dual_add_nc_u32 v82, 0, v59
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v85, 0, v58
	v_dual_mov_b32 v13, v24 :: v_dual_lshlrev_b32 v92, 1, v55
	v_dual_mov_b32 v0, v24 :: v_dual_lshlrev_b32 v91, 1, v54
	v_dual_mov_b32 v2, v24 :: v_dual_lshlrev_b32 v93, 1, v53
	v_dual_mov_b32 v7, v24 :: v_dual_mov_b32 v98, 0xff800000
	v_xor_b32_e32 v81, 64, v77
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s45, v57
	s_and_b32 s39, s39, 0xffff
	s_movk_i32 s61, 0xffe0
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s41, s41, 0xffff
	.loc	1 818 13                        ; attention.py:818:13
	s_lshl_b32 s46, s45, 6
	s_lshl_b32 s44, s44, 5
	s_mov_b32 s52, s38
	s_mov_b32 s53, s39
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v45, v75, v40
	ds_bpermute_b32 v40, v80, v40
	ds_bpermute_b32 v44, v75, v41
	ds_bpermute_b32 v41, v80, v41
	ds_bpermute_b32 v46, v75, v42
	ds_bpermute_b32 v42, v80, v42
	ds_bpermute_b32 v47, v75, v43
	ds_bpermute_b32 v43, v80, v43
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v48, 16, v48
	v_mov_b32_e32 v4, v24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v61, v40, v45, s4
	v_cndmask_b32_e64 v63, v45, v40, s4
	v_and_b32_e32 v40, 0x540054, v49
	v_and_b32_e32 v45, 0x760076, v50
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v62, v41, v44, s4
	v_cndmask_b32_e64 v64, v44, v41, s4
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v95, s3, v48
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v45, 4, v45
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v84, v24
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v65, v42, v46, s4
	v_cndmask_b32_e64 v67, v46, v42, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v66, v43, v47, s4
	v_cndmask_b32_e64 v68, v47, v43, s4
	v_and_b32_e32 v96, 0x5040504, v40
	v_and_b32_e32 v97, 0x7060706, v41
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_mov_b16_e32 v100.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v102.h, v101.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v101, v43
	v_cvt_f32_i32_e32 v119, v44
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v43, 8, v56
	v_lshrrev_b32_e32 v44, 8, v58
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v117, 8, v57
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v105.h, v104.l
	v_mov_b16_e32 v104.l, v100.l
	v_mov_b16_e32 v104.h, v103.l
	v_mov_b16_e32 v103.l, v100.l
	v_mov_b16_e32 v103.h, v102.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v42
	v_mul_f32_e32 v122, v95, v41
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v41.l, 0xff, v56.h
	v_and_b16 v43.h, 0xff, v44.l
	v_and_b16 v44.l, 0xff, v58.h
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v95, v46
	v_mul_f32_e32 v121, v95, v40
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v40.l, 0xff, v56.l
	v_and_b16 v40.h, 0xff, v43.l
	v_lshrrev_b32_e32 v56, 24, v56
	v_and_b16 v43.l, 0xff, v58.l
	v_lshrrev_b32_e32 v58, 24, v58
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v118, 8, v59
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v123, v95, v42
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v41.h, 0xff, v57.l
	v_and_b16 v42.l, 0xff, v117.l
	v_and_b16 v42.h, 0xff, v57.h
	v_lshrrev_b32_e32 v57, 24, v57
	v_cmp_ne_u16_e64 s10, 0, v56.l
	v_cmp_ne_u16_e64 s12, 0, v43.l
	v_cmp_ne_u16_e64 s14, 0, v43.h
	v_cmp_ne_u16_e64 s15, 0, v44.l
	v_cmp_ne_u16_e64 s17, 0, v58.l
	v_cmp_ne_u16_e64 s5, 0, v40.h
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v120, v45
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v44.h, 0xff, v59.l
	v_and_b16 v45.l, 0xff, v118.l
	v_and_b16 v45.h, 0xff, v59.h
	v_lshrrev_b32_e32 v59, 24, v59
	v_cmp_ne_u16_e64 s3, 0, v40.l
	v_cmp_ne_u16_e64 s6, 0, v41.l
	v_cmp_ne_u16_e64 s16, 0, v42.l
	v_cmp_ne_u16_e64 s20, 0, v57.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s11, vcc_lo, s10
	s_and_b32 s10, vcc_lo, s12
	s_and_b32 s12, vcc_lo, s14
	s_and_b32 s14, vcc_lo, s15
	s_and_b32 s15, vcc_lo, s17
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s19, 0, v42.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v40, 0, 1, s11
	v_cndmask_b32_e64 v57, 0, 1, s14
	v_cndmask_b32_e64 v42, 0, 1, s15
	s_and_b32 s8, vcc_lo, s5
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s13, 0, v41.h
	v_cmp_ne_u16_e64 s22, 0, v44.h
	v_cmp_ne_u16_e64 s23, 0, v45.l
	v_cmp_ne_u16_e64 s24, 0, v45.h
	v_cmp_ne_u16_e64 s25, 0, v59.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s7, vcc_lo, s3
	s_and_b32 s9, vcc_lo, s6
	s_and_b32 s18, vcc_lo, s16
	s_and_b32 s21, vcc_lo, s20
	v_cndmask_b32_e64 v41, 0, 1, s8
	v_cndmask_b32_e64 v44, 0, 1, s7
	v_cndmask_b32_e64 v43, 0, 1, s9
	v_cndmask_b32_e64 v56, 0, 1, s12
	v_cndmask_b32_e64 v59, 0, 1, s18
	v_cndmask_b32_e64 v118, 0, 1, s21
	v_lshlrev_b16 v40.l, 8, v40.l
	v_lshlrev_b16 v41.h, 8, v42.l
	v_mov_b16_e32 v42.l, v57.l
	s_and_b32 s17, vcc_lo, s13
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s20, vcc_lo, s22
	s_and_b32 s22, vcc_lo, s23
	s_and_b32 s23, vcc_lo, s24
	s_and_b32 s24, vcc_lo, s25
	v_cndmask_b32_e64 v45, 0, 1, s10
	v_cndmask_b32_e64 v58, 0, 1, s17
	v_cndmask_b32_e64 v117, 0, 1, s19
	v_cndmask_b32_e64 v125, 0, 1, s22
	v_cndmask_b32_e64 v127, 0, 1, s24
	v_lshlrev_b16 v40.h, 8, v41.l
	v_mov_b16_e32 v41.l, v44.l
	v_mov_b16_e32 v44.l, v56.l
	v_or_b16 v56.h, v43.l, v40.l
	v_mov_b16_e32 v40.l, v118.l
	v_or_b16 v57.h, v42.l, v41.h
	v_mov_b16_e32 v42.l, v59.l
	v_cndmask_b32_e64 v124, 0, 1, s20
	v_cndmask_b32_e64 v126, 0, 1, s23
	v_or_b16 v56.l, v41.l, v40.h
	v_lshlrev_b16 v40.h, 8, v44.l
	v_mov_b16_e32 v41.l, v45.l
	v_lshlrev_b16 v40.l, 8, v40.l
	v_mov_b16_e32 v43.l, v127.l
	v_mov_b16_e32 v44.l, v117.l
	v_mov_b16_e32 v45.l, v125.l
	v_lshlrev_b16 v41.h, 8, v42.l
	v_mov_b16_e32 v42.l, v58.l
	v_lshlrev_b16 v42.h, 8, v43.l
	v_mov_b16_e32 v43.l, v126.l
	v_lshlrev_b16 v43.h, 8, v45.l
	v_mov_b16_e32 v45.l, v124.l
	v_or_b16 v57.l, v41.l, v40.h
	v_or_b16 v40.h, v44.l, v40.l
	v_or_b16 v40.l, v42.l, v41.h
	v_or_b16 v41.h, v43.l, v42.h
	v_or_b16 v41.l, v45.l, v43.h
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v109.h, v108.l
	v_mov_b16_e32 v108.l, v100.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v44, v40, v56, v88
	v_perm_b32 v40, v40, v56, v94
	v_perm_b32 v45, v41, v57, v88
	v_perm_b32 v41, v41, v57, v94
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v108.h, v107.l
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v44, v75, v44
	ds_bpermute_b32 v40, v80, v40
	ds_bpermute_b32 v45, v75, v45
	ds_bpermute_b32 v41, v80, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v107.h, v106.l
	v_mov_b16_e32 v106.l, v100.l
	v_mov_b16_e32 v106.h, v105.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_mul_f32_e32 v42, v95, v101
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v100.h, v116.l
	v_mov_b16_e32 v116.l, v100.l
	v_mov_b16_e32 v116.h, v114.l
	v_mov_b16_e32 v113.h, v112.l
	v_mov_b16_e32 v112.l, v100.l
	v_mov_b16_e32 v112.h, v111.l
	v_mov_b16_e32 v111.l, v100.l
	v_mov_b16_e32 v111.h, v110.l
	v_mov_b16_e32 v105.l, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v47, v47
	v_dual_mul_f32 v53, v95, v53 :: v_dual_mul_f32 v106, v42, v106
	v_mul_f32_e32 v50, v95, v50
	v_mul_f32_e32 v54, v95, v54
	v_mul_f32_e32 v43, v95, v119
	v_mul_f32_e32 v56, v95, v120
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v114.l, v100.l
	v_mov_b16_e32 v114.h, v113.l
	v_mov_b16_e32 v113.l, v100.l
	v_mov_b16_e32 v102.l, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v55, v55
	v_dual_mul_f32 v52, v95, v52 :: v_dual_mul_f32 v59, v54, v111
	v_mul_f32_e32 v51, v95, v51
	v_dual_mul_f32 v42, v43, v105 :: v_dual_mul_f32 v43, v56, v104
	v_mul_f32_e32 v56, v46, v103
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v103, v40, v44, s4
	v_cndmask_b32_e64 v105, v44, v40, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v95, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v115.h, v115.l
	v_mov_b16_e32 v115.l, v100.l
	v_mov_b16_e32 v110.l, v100.l
	v_mov_b16_e32 v110.h, v109.l
	v_mov_b16_e32 v109.l, v100.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v95, v49
	v_mul_f32_e32 v48, v95, v48
	v_mul_f32_e32 v55, v95, v55
	v_mul_f32_e32 v58, v51, v114
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v104, v41, v45, s4
	v_cndmask_b32_e64 v40, v45, v41, s4
	v_and_b32_e32 v41, 1, v103
	v_and_b32_e32 v44, 0x100, v103
	v_and_b32_e32 v54, 0x100, v105
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v102, v47, v102 :: v_dual_and_b32 v47, 1, v105
	v_dual_mul_f32 v49, v49, v115 :: v_dual_mul_f32 v48, v48, v100
	v_mul_f32_e32 v51, v53, v112
	v_dual_mul_f32 v57, v50, v116 :: v_dual_mul_f32 v50, v52, v113
	v_dual_mul_f32 v52, v121, v109 :: v_dual_mul_f32 v101, v55, v110
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v55, 1, v40
	v_cmp_eq_u32_e64 s27, 1, v41
	v_cmp_eq_u32_e64 s28, 0, v44
	v_cmp_eq_u32_e64 s13, 1, v47
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v73, v73
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 1, v55
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v109, 0xff800000, v48, s27
	v_cndmask_b32_e64 v110, v49, 0xff800000, s28
	v_cndmask_b32_e64 v112, 0xff800000, v52, s13
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v125, 0x1000000, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v115, 0xff800000, v42, s6
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v126, 0x10000, v105
	v_and_b32_e32 v105, 0x1000000, v105
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, v109, v112, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 0, v125
	v_and_b32_e32 v125, 0x10000, v103
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v112, v109, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s35, 0, v105
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v118, v81, v42
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v124, 0x10000, v40
	v_cmp_eq_u32_e64 s36, 0, v125
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v117, v77, v41
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v45, 1, v104
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v53, v122, v108
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s3, 0, v124
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v105, v57, 0xff800000, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v57, 0x1000000, v103
	v_and_b32_e32 v108, 0x100, v40
	v_cmp_eq_u32_e64 s16, 0, v54
	v_and_b32_e32 v46, 0x100, v104
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, v56, 0xff800000, s3
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v56, 0x10000, v104
	v_and_b32_e32 v104, 0x1000000, v104
	v_cmp_eq_u32_e64 s37, 0, v57
	v_cmp_eq_u32_e64 s25, 1, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, v53, 0xff800000, s16
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s5, 0, v108
	v_cmp_eq_u32_e64 s34, 0, v104
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v104, v106, 0xff800000, s35
	v_cndmask_b32_e64 v128, v58, 0xff800000, s37
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s26, 0, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v107.l, v100.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, 0xff800000, v50, s25
	v_cndmask_b32_e64 v108, v43, 0xff800000, s5
	v_cndmask_b32_e64 v43, v114, v110, s4
	v_cndmask_b32_e64 v44, v110, v114, s4
	v_cndmask_b32_e64 v57, v104, v128, s4
	v_cndmask_b32_e64 v113, v51, 0xff800000, s26
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v41, v93, v76
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v107, v123, v107 :: v_dual_add_nc_u32 v42, v92, v76
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, v115, v111, s4
	ds_bpermute_b32 v119, v77, v43
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_dual_max_f32 v132, v117, v117 :: v_dual_add_nc_u32 v43, v91, v76
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v120, v81, v44
	ds_bpermute_b32 v129, v77, v57
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v118, v118
.Ltmp4:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v44, v90, v76
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v46, v111, v115, s4
	v_cndmask_b32_e64 v47, v108, v113, s4
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v121, v77, v45
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v42, s1
	v_cndmask_b32_e64 v48, 0x80000000, v43, s1
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v57, v132, v57
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v52, 0x80000000, v44, s1
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v122, v81, v46
	ds_bpermute_b32 v123, v77, v47
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x3
	buffer_load_b128 v[40:43], v41, s[40:43], 0 offen
	buffer_load_b128 v[44:47], v45, s[40:43], 0 offen
	buffer_load_b128 v[48:51], v48, s[40:43], 0 offen
	buffer_load_b128 v[52:55], v52, s[40:43], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v102, v102, 0xff800000, s30
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v56
	v_cmp_eq_u32_e64 s33, 0, v126
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v101, v101, 0xff800000, s34
	v_cndmask_b32_e64 v116, v113, v108, s4
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v132, v109, v110
.Ltmp8:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v59, v59, 0xff800000, s31
	v_cndmask_b32_e64 v107, v107, 0xff800000, s33
	v_cndmask_b32_e64 v103, v102, v101, s4
	v_cndmask_b32_e64 v106, v101, v102, s4
	ds_bpermute_b32 v116, v81, v116
	v_cndmask_b32_e64 v56, v124, v59, s4
	v_cndmask_b32_e64 v125, v107, v105, s4
	v_cndmask_b32_e64 v126, v105, v107, s4
	v_cndmask_b32_e64 v127, v59, v124, s4
	ds_bpermute_b32 v103, v77, v103
	ds_bpermute_b32 v106, v81, v106
	ds_bpermute_b32 v125, v77, v125
	ds_bpermute_b32 v126, v81, v126
	ds_bpermute_b32 v56, v77, v56
	ds_bpermute_b32 v58, v81, v127
	v_cndmask_b32_e64 v127, v128, v104, s4
	s_waitcnt lgkmcnt(8)
	v_cndmask_b32_e64 v130, v121, v122, s0
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v135, v128, v111, v113
.Ltmp10:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v99
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v127, v81, v127
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v76, s46, v76
	v_add_nc_u32_e32 v60, s44, v60
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v131, v116, v123, s0
	v_cndmask_b32_e64 v116, v123, v116, s0
	v_cndmask_b32_e64 v123, v119, v120, s0
	v_cndmask_b32_e64 v119, v120, v119, s0
	v_cndmask_b32_e64 v120, v122, v121, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v122, v115, v108, v124
.Ltmp12:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v106, v103, s0
	v_cndmask_b32_e64 v103, v103, v106, s0
	v_cndmask_b32_e64 v134, v126, v125, s0
	v_cndmask_b32_e64 v125, v125, v126, s0
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v126, v130, v131, v116
	v_max3_f32 v106, v56, v58, v133
.Ltmp14:
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s61, s61, 32
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v121, v123, v134, v125
.Ltmp16:
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s61, 0x1e0
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v106, v126, v106, v103
	v_max3_f32 v126, v114, v107, v104
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v136, v129, v127, v120
	v_max3_f32 v57, v57, v119, v121
.Ltmp18:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v121, v126, v122, v102
	v_max3_f32 v122, v59, v101, v112
	v_max3_f32 v126, v132, v105, v135
	v_max3_f32 v106, v57, v136, v106
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v56, v58, s0
	v_cndmask_b32_e64 v135, v127, v129, s0
	v_cndmask_b32_e64 v127, v129, v127, s0
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v57, v126, v122, v121
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v121, v106
.Ltmp23:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, v118, v117, s0
	v_cndmask_b32_e64 v117, v117, v118, s0
	v_cndmask_b32_e64 v118, v58, v56, s0
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v122, v57, s39, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_dpp v121, v121 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp25:
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v78, 64, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v57, v99, v57, v122
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v121, v121, v121
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp27:
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v122, v99, v57
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v106, v106, v121
.Ltmp29:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v108, v108, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v121, v122
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v122, v98, v98
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v108, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v56, v122, v106
	v_max_f32_e32 v73, v73, v106
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v58, 0, v121, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v59, v59, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_sub_f32_e32 v120, v120, v73
	v_sub_f32_e32 v103, v103, v73
	v_dual_sub_f32 v101, v101, v57 :: v_dual_mul_f32 v20, v20, v58
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v103, v103
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v101, v101
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v129, v132, v73
	v_dual_sub_f32 v102, v102, v57 :: v_dual_mul_f32 v29, v29, v58
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v24, v24, v58 :: v_dual_sub_f32 v109, v109, v57
	v_mul_f32_e32 v26, v26, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v120, s10
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v99, v126, v73
	v_sub_f32_e32 v126, v130, v73
	v_sub_f32_e32 v130, v133, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v103, s24
	v_cndmask_b32_e64 v132, v101, 0, s34
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v99, v99
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v109, v109
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v58
	v_dual_mul_f32 v12, v12, v58 :: v_dual_sub_f32 v105, v105, v57
	v_mul_f32_e32 v28, v28, v58
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v124, v124, v57 :: v_dual_mul_f32 v27, v27, v58
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v99, 0, v99, s7
	s_delay_alu instid0(TRANS32_DEP_3)
	v_cndmask_b32_e64 v130, 0, v130, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v106, v117, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v133, v102, 0, s30
	v_cndmask_b32_e64 v129, 0, v129, s22
	v_cndmask_b32_e64 v109, 0, v109, s27
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v103, v130, v103
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v106, v106
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v118, v118, v73
	v_dual_sub_f32 v113, v113, v57 :: v_dual_mul_f32 v16, v16, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v105, v105
	v_exp_f32_e32 v124, v124
	s_delay_alu instid0(VALU_DEP_2)
	v_exp_f32_e32 v118, v118
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v111, v111, v57 :: v_dual_mul_f32 v30, v30, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v106, s8
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v122, v125, v73
	v_sub_f32_e32 v125, v127, v73
	v_sub_f32_e32 v127, v131, v73
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v131, v59, 0, s31
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v59, v99, v106 :: v_dual_sub_f32 v116, v116, v73
.Ltmp33:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_3)
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v125, v125
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v118, s20
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v111, v111
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v105, v105, 0, s36
	v_cndmask_b32_e64 v124, v124, 0, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v109, v109
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, 0, v122, s18
	v_cndmask_b32_e64 v127, 0, v127, s14
	v_cndmask_b32_e64 v125, 0, v125, s21
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v112, v112, v57 :: v_dual_mul_f32 v25, v25, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v116, s15
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v121, v134, v73
	v_dual_sub_f32 v107, v107, v57 :: v_dual_mul_f32 v22, v22, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v112, v112
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v116, v127, v116
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp35:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v58
	v_mul_f32_e32 v10, v10, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v107, v107
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v0, v0, v58 :: v_dual_sub_f32 v115, v115, v57
	v_mul_f32_e32 v8, v8, v58
	v_mul_f32_e32 v2, v2, v58
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, 0, v112, s13
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v131, v131
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v121, s17
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v14, v14, v58
	s_delay_alu instid0(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, v107, 0, s33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v4, v4, v58
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v101, v121, v122
.Ltmp37:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v119, v73
	v_sub_f32_e32 v119, v123, v73
	v_sub_f32_e32 v123, v135, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v58
	v_mul_f32_e32 v1, v1, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	v_exp_f32_e32 v123, v123
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v3, v3, v58
	v_mul_f32_e32 v5, v5, v58
	v_mul_f32_e32 v7, v7, v58
	v_mul_f32_e32 v9, v9, v58
	v_mul_f32_e32 v11, v11, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v126, s12
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v15, v15, v58
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s11
	v_cndmask_b32_e64 v123, 0, v123, s19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v106, v120, v126
	v_add_f32_e32 v102, v123, v125
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_add_f32_e32 v102, v101, v102
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v117, v119
	v_add_f32_e32 v117, v118, v129
.Ltmp41:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v119.l, v109.h
	v_mov_b16_e32 v119.h, v100.l
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v110, v110, v57 :: v_dual_add_f32 v59, v59, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v101, v117, v103 :: v_dual_sub_f32 v128, v128, v57
.Ltmp43:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v103, 1, v119
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.h, v100.l
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v59, v59, v102
.Ltmp45:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v128, v128
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v106, v116
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v109, v103, 0x7fff
	v_mov_b16_e32 v109.l, v105.h
	v_mov_b16_e32 v109.h, v100.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v99, v99, v101
.Ltmp49:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v110, v110, 0, s28
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v101, v98, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, v128, 0, s37
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v59, v59, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.l, v110.h
	v_cmp_o_f32_e64 s3, v110, v110
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v99, v101
.Ltmp52:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_dual_mov_b32 v101, v59 :: v_dual_and_b32 v106, 1, v118
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v101, v101 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v103, v110, v106, 0x7fff
	v_mov_b16_e64 v106.l, v128.h
	v_mov_b16_e32 v106.h, v100.l
	v_cndmask_b16 v110.l, 0x7fff, v102.h, s7
	v_cmp_o_f32_e64 s7, v105, v105
	v_cndmask_b16 v110.h, 0x7fff, v103.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, v113, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v102, 1, v106
	v_and_b32_e32 v106, 1, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v111, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v111.h, v100.l
	v_mov_b16_e32 v111.l, v103.h
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v114, v114, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v102, v128, v102, 0x7fff
	v_cmp_o_f32_e64 s3, v128, v128
	v_add3_u32 v106, v105, v106, 0x7fff
	v_and_b32_e32 v111, 1, v111
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.l, v109.h
	v_cndmask_b16 v116.h, 0x7fff, v102.h, s3
	v_cmp_o_f32_e64 s3, v103, v103
	v_add3_u32 v105, v103, v111, 0x7fff
	v_mov_b16_e64 v103.l, v131.h
	v_mov_b16_e32 v103.h, v100.l
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v104, v104, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v113.h, v100.l
	v_cndmask_b16 v111.h, 0x7fff, v105.h, s3
	v_mov_b16_e64 v105.l, v132.h
	v_mov_b16_e32 v105.h, v100.l
	v_and_b32_e32 v103, 1, v103
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v104, v104
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v102, 1, v113
	v_cndmask_b16 v116.l, 0x7fff, v106.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, v114, 0, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v105, 1, v105
	v_cmp_o_f32_e64 s3, v109, v109
	v_add3_u32 v102, v109, v102, 0x7fff
	v_mov_b16_e32 v109.h, v100.l
	v_mov_b16_e32 v109.l, v106.h
	v_add3_u32 v105, v132, v105, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v104, v104, 0, s35
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v132, v132
	v_cndmask_b16 v111.l, 0x7fff, v102.h, s3
	v_and_b32_e32 v109, 1, v109
	v_cmp_o_f32_e64 s3, v106, v106
	v_mov_b16_e32 v105.l, v104.h
	v_cndmask_b16 v117.h, 0x7fff, v105.h, s7
	v_mov_b16_e32 v105.h, v100.l
	v_add3_u32 v102, v106, v109, 0x7fff
	v_mov_b16_e32 v113.l, v112.h
	v_add3_u32 v103, v131, v103, 0x7fff
	v_mov_b16_e32 v106.l, v107.h
	v_and_b32_e32 v105, 1, v105
	v_cndmask_b16 v102.h, 0x7fff, v102.h, s3
	v_cmp_o_f32_e64 s3, v104, v104
	v_and_b32_e32 v113, 1, v113
	v_mov_b16_e32 v106.h, v100.l
	v_add3_u32 v105, v104, v105, 0x7fff
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v104, v108, 0, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v117.l, 0x7fff, v103.h, s8
	v_add3_u32 v103, v112, v113, 0x7fff
	v_cmp_o_f32_e64 s7, v112, v112
	v_cndmask_b16 v100.h, 0x7fff, v105.h, s3
	v_mov_b16_e32 v105.l, v104.h
	v_mov_b16_e32 v105.h, v100.l
	v_and_b32_e32 v106, 1, v106
	v_cndmask_b16 v102.l, 0x7fff, v103.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v103, 0, v115, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v107, v107
	v_and_b32_e32 v105, 1, v105
	v_add3_u32 v106, v107, v106, 0x7fff
	v_cmp_o_f32_e64 s5, v104, v104
	v_mov_b16_e32 v108.l, v103.h
	v_mov_b16_e32 v108.h, v100.l
	v_add3_u32 v105, v104, v105, 0x7fff
	v_mov_b16_e32 v112.h, v100.l
	v_mov_b16_e32 v109.h, v100.l
	v_cndmask_b16 v100.l, 0x7fff, v106.h, s3
	v_permlanex16_b32 v106, v110, s39, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v104.h, 0x7fff, v105.h, s5
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v105, 0, v72
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v108, 1, v108
	v_mov_b16_e32 v112.l, v124.h
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v105, v[40:43]
	s_waitcnt vmcnt(2)
	ds_store_b128 v105, v[44:47] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v105, v[48:51] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v105, v[52:55] offset:3072
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v48, v106, v110, v96
	v_perm_b32 v49, v106, v110, v97
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v106, v74
	ds_load_u16_d16 v114, v74 offset:32
	ds_load_u16_d16 v122, v74 offset:64
	ds_load_u16_d16 v40, v74 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e64 v109.l, v133.h
	v_add3_u32 v107, v103, v108, 0x7fff
	v_and_b32_e32 v108, 1, v112
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v41, v74 offset:352
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v103, v103
	v_and_b32_e32 v109, 1, v109
	v_cmp_o_f32_e64 s8, v124, v124
	v_add3_u32 v108, v124, v108, 0x7fff
	v_permlanex16_b32 v42, v117, s39, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v104.l, 0x7fff, v107.h, s6
	v_add3_u32 v103, v133, v109, 0x7fff
	v_permlanex16_b32 v107, v116, s39, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v103.l, 0x7fff, v108.h, s8
	v_permlanex16_b32 v108, v111, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v54, v42, v117, v96
	v_perm_b32 v55, v42, v117, v97
	v_perm_b32 v50, v107, v116, v96
	v_perm_b32 v51, v107, v116, v97
	v_perm_b32 v52, v108, v111, v96
	v_perm_b32 v53, v108, v111, v97
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v108, v74 offset:512
	ds_load_u16_d16 v115, v74 offset:288
	ds_load_u16_d16 v124, v74 offset:576
	ds_load_u16_d16 v107, v74 offset:256
	ds_load_u16_d16 v123, v74 offset:320
	s_waitcnt lgkmcnt(5)
	ds_load_u16_d16_hi v41, v74 offset:480
	ds_load_u16_d16 v125, v74 offset:832
	ds_load_u16_d16 v109, v74 offset:768
	ds_load_u16_d16 v116, v74 offset:544
	ds_load_u16_d16 v121, v74 offset:1824
	ds_load_u16_d16 v42, v74 offset:608
	ds_load_u16_d16_hi v106, v74 offset:128
	ds_load_u16_d16_hi v114, v74 offset:160
	ds_load_u16_d16_hi v122, v74 offset:192
	ds_load_u16_d16_hi v40, v74 offset:224
	ds_load_u16_d16 v126, v74 offset:1088
	ds_load_u16_d16 v110, v74 offset:1024
	ds_load_u16_d16 v117, v74 offset:800
	ds_load_u16_d16 v43, v74 offset:864
	ds_load_u16_d16 v127, v74 offset:1344
	ds_load_u16_d16 v111, v74 offset:1280
	ds_load_u16_d16 v118, v74 offset:1056
	ds_load_u16_d16 v44, v74 offset:1120
	ds_load_u16_d16 v128, v74 offset:1600
	ds_load_u16_d16 v112, v74 offset:1536
	ds_load_u16_d16 v119, v74 offset:1312
	ds_load_u16_d16 v45, v74 offset:1376
	ds_load_u16_d16 v113, v74 offset:1792
	ds_load_u16_d16 v120, v74 offset:1568
	ds_load_u16_d16 v129, v74 offset:1856
	ds_load_u16_d16 v46, v74 offset:1632
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v124, v74 offset:704
	ds_load_u16_d16_hi v108, v74 offset:640
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v107, v74 offset:384
	ds_load_u16_d16_hi v115, v74 offset:416
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v123, v74 offset:448
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v125, v74 offset:960
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v109, v74 offset:896
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v116, v74 offset:672
	s_waitcnt lgkmcnt(28)
	ds_load_u16_d16_hi v42, v74 offset:736
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v126, v74 offset:1216
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v110, v74 offset:1152
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v117, v74 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v43, v74 offset:992
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v127, v74 offset:1472
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v111, v74 offset:1408
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v118, v74 offset:1184
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v44, v74 offset:1248
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v128, v74 offset:1728
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v112, v74 offset:1664
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v119, v74 offset:1440
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v45, v74 offset:1504
	ds_load_u16_d16 v47, v74 offset:1888
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v113, v74 offset:1920
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v120, v74 offset:1696
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v129, v74 offset:1984
	ds_load_u16_d16 v130, v74 offset:2112
	ds_load_u16_d16 v138, v74 offset:2048
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v46, v74 offset:1760
	ds_load_u16_d16_hi v121, v74 offset:1952
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v133, v133
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v98
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v58
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v105, v102, s39, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v98, v56
	v_cndmask_b16 v103.h, 0x7fff, v103.h, s7
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[106:113], v[48:55], v[24:31]
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_u16_d16_hi v47, v74 offset:2016
	ds_load_u16_d16 v139, v74 offset:2304
	ds_load_u16_d16 v106, v74 offset:2080
	ds_load_u16_d16 v131, v74 offset:2368
	ds_load_u16_d16 v146, v74 offset:2144
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v130, v74 offset:2240
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v138, v74 offset:2176
	ds_load_u16_d16 v132, v74 offset:2624
	ds_load_u16_d16 v140, v74 offset:2560
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v139, v74 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v106, v74 offset:2208
	ds_load_u16_d16 v107, v74 offset:2336
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v131, v74 offset:2496
	ds_load_u16_d16 v147, v74 offset:2400
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v146, v74 offset:2272
	ds_load_u16_d16 v133, v74 offset:2880
	ds_load_u16_d16 v141, v74 offset:2816
	ds_load_u16_d16 v108, v74 offset:2592
	ds_load_u16_d16 v148, v74 offset:2656
	ds_load_u16_d16 v134, v74 offset:3136
	ds_load_u16_d16 v142, v74 offset:3072
	ds_load_u16_d16 v109, v74 offset:2848
	ds_load_u16_d16 v149, v74 offset:2912
	ds_load_u16_d16 v135, v74 offset:3392
	ds_load_u16_d16 v143, v74 offset:3328
	ds_load_u16_d16 v110, v74 offset:3104
	ds_load_u16_d16 v150, v74 offset:3168
	ds_load_u16_d16 v136, v74 offset:3648
	ds_load_u16_d16 v144, v74 offset:3584
	ds_load_u16_d16 v111, v74 offset:3360
	ds_load_u16_d16 v151, v74 offset:3424
	ds_load_u16_d16 v137, v74 offset:3904
	ds_load_u16_d16 v145, v74 offset:3840
	ds_load_u16_d16 v112, v74 offset:3616
	ds_load_u16_d16 v152, v74 offset:3680
	ds_load_u16_d16 v113, v74 offset:3872
	ds_load_u16_d16 v153, v74 offset:3936
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v132, v74 offset:2752
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v140, v74 offset:2688
	s_waitcnt lgkmcnt(27)
	ds_load_u16_d16_hi v107, v74 offset:2464
	s_waitcnt lgkmcnt(26)
	ds_load_u16_d16_hi v147, v74 offset:2528
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v133, v74 offset:3008
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v141, v74 offset:2944
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v108, v74 offset:2720
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v148, v74 offset:2784
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v134, v74 offset:3264
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v142, v74 offset:3200
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v109, v74 offset:2976
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v149, v74 offset:3040
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v135, v74 offset:3520
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v143, v74 offset:3456
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v110, v74 offset:3232
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v150, v74 offset:3296
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v136, v74 offset:3776
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v144, v74 offset:3712
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v111, v74 offset:3488
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v151, v74 offset:3552
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v137, v74 offset:4032
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v145, v74 offset:3968
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v112, v74 offset:3744
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v152, v74 offset:3808
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v113, v74 offset:4000
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v153, v74 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[0:7], v[40:47], v[48:55], v[0:7]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v41, 0, v99, s3
.Ltmp54:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v59, v101
.Ltmp55:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v58
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v99, v57 :: v_dual_fmac_f32 v40, v84, v41
	v_mul_f32_e32 v13, v13, v58
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[16:23], v[114:121], v[48:55], v[16:23]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v58, v100, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v119, v104, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v121, v103, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v114, v105, v102, v96
	v_perm_b32 v115, v105, v102, v97
	v_perm_b32 v116, v58, v100, v96
	v_perm_b32 v117, v58, v100, v97
	v_perm_b32 v118, v119, v104, v96
	v_perm_b32 v119, v119, v104, v97
	v_perm_b32 v120, v121, v103, v96
	v_perm_b32 v121, v121, v103, v97
	v_mov_b32_e32 v84, v40
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[122:129], v[48:55], v[8:15]
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[138:145], v[114:121], v[24:31]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[106:113], v[114:121], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[130:137], v[114:121], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[146:153], v[114:121], v[0:7]
	.loc	1 818 13 is_stmt 1              ; attention.py:818:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v40, 0x80000000, v60, s29
	buffer_load_b128 v[40:43], v40, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v79, v[40:41]
	ds_store_b64 v82, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[56:59], v83 offset1:1
	ds_load_2addr_stride64_b64 v[100:103], v85 offset1:1
	ds_load_2addr_stride64_b64 v[104:107], v86 offset1:1
	ds_load_2addr_stride64_b64 v[108:111], v87 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[56:57], v[61:62], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[58:59], v[61:62], v[32:39] neg_lo:[1,1,0]
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[100:101], v[65:66], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[102:103], v[65:66], v[40:47] neg_lo:[1,1,0]
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[104:105], v[63:64], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[106:107], v[63:64], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[108:109], v[67:68], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[110:111], v[67:68], v[40:47] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v116, v78, s[56:59], 0 offen
	buffer_load_u16 v115, v78, s[56:59], 0 offen offset:4
	buffer_load_u16 v114, v78, s[56:59], 0 offen offset:8
	buffer_load_u16 v113, v78, s[56:59], 0 offen offset:12
	buffer_load_u16 v112, v78, s[56:59], 0 offen offset:16
	buffer_load_u16 v111, v78, s[56:59], 0 offen offset:20
	buffer_load_u16 v110, v78, s[56:59], 0 offen offset:24
	buffer_load_u16 v109, v78, s[56:59], 0 offen offset:28
	buffer_load_u16 v108, v78, s[56:59], 0 offen offset:32
	buffer_load_u16 v107, v78, s[56:59], 0 offen offset:36
	buffer_load_u16 v106, v78, s[56:59], 0 offen offset:40
	buffer_load_u16 v105, v78, s[56:59], 0 offen offset:44
	buffer_load_u16 v104, v78, s[56:59], 0 offen offset:48
	buffer_load_u16 v103, v78, s[56:59], 0 offen offset:52
	buffer_load_u16 v102, v78, s[56:59], 0 offen offset:56
	buffer_load_u16 v101, v78, s[56:59], 0 offen offset:60
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	v_add3_u32 v56, v89, s61, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v57, 31, v56
	v_add_co_u32 v56, s3, s48, v56
	v_add_co_ci_u32_e64 v57, null, s49, v57, s3
	global_load_b128 v[56:59], v[56:57], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 818 13                        ; attention.py:818:13
	ds_bpermute_b32 v33, v75, v40
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	.loc	1 759 31                        ; attention.py:759:31
	v_or_b32_e32 v32, 16, v70
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v34, null, v33, v33, v24
	v_div_scale_f32 v36, null, v33, v33, v25
	v_div_scale_f32 v38, null, v33, v33, v26
	v_div_scale_f32 v40, null, v33, v33, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v34
	v_rcp_f32_e32 v45, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v46, v38
	v_div_scale_f32 v42, null, v33, v33, v28
	v_rcp_f32_e32 v47, v40
	v_div_scale_f32 v43, null, v33, v33, v29
	v_rcp_f32_e32 v48, v42
	v_div_scale_f32 v35, vcc_lo, v24, v33, v24
	v_fma_f32 v52, -v34, v44, 1.0
	v_fma_f32 v53, -v36, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v54, -v38, v46, 1.0
	v_div_scale_f32 v37, s0, v25, v33, v25
	v_div_scale_f32 v39, s1, v26, v33, v26
	v_rcp_f32_e32 v51, v43
	v_fma_f32 v55, -v40, v47, 1.0
	v_dual_fmac_f32 v44, v52, v44 :: v_dual_fmac_f32 v45, v53, v45
	v_fmac_f32_e32 v46, v54, v46
	v_div_scale_f32 v41, s3, v27, v33, v27
	v_fma_f32 v56, -v42, v48, 1.0
	v_fmac_f32_e32 v47, v55, v47
	v_dual_mul_f32 v53, v35, v44 :: v_dual_mul_f32 v54, v37, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v55, v39, v46 :: v_dual_fmac_f32 v48, v56, v48
	v_div_scale_f32 v49, s4, v28, v33, v28
	v_fma_f32 v52, -v43, v51, 1.0
	v_fma_f32 v56, -v34, v53, v35
	v_fma_f32 v58, -v36, v54, v37
	v_mul_f32_e32 v57, v41, v47
	v_fma_f32 v59, -v38, v55, v39
	v_dual_fmac_f32 v51, v52, v51 :: v_dual_mul_f32 v52, v49, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v53, v56, v44 :: v_dual_fmac_f32 v54, v58, v45
	v_fma_f32 v60, -v40, v57, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v55, v59, v46
	v_div_scale_f32 v50, null, v33, v33, v30
	v_fma_f32 v34, -v34, v53, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v57, v60, v47
	v_fma_f32 v35, -v36, v54, v37
	v_fma_f32 v36, -v38, v55, v39
	v_div_scale_f32 v38, s5, v29, v33, v29
	v_fma_f32 v37, -v40, v57, v41
	v_rcp_f32_e32 v39, v50
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_f32_e32 v40, v38, v51
	v_div_fmas_f32 v34, v34, v44, v53
	s_mov_b32 vcc_lo, s0
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s0, 0, v33
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v35, v35, v45, v54
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v24, v34, v33, v24
	v_div_scale_f32 v34, null, v33, v33, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v50, v39, 1.0
	v_div_fmas_f32 v36, v36, v46, v55
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v44, v34
	v_div_fixup_f32 v25, v35, v33, v25
	v_fmac_f32_e32 v39, v41, v39
	v_div_fixup_f32 v26, v36, v33, v26
	v_div_scale_f32 v36, s1, v30, v33, v30
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b32_e64 v26, 0, v26, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v34, v44, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v44, v41, v44
	v_div_fmas_f32 v35, v37, v47, v57
	v_fma_f32 v37, -v42, v52, v49
	s_mov_b32 vcc_lo, s4
	v_div_scale_f32 v41, s3, v31, v33, v31
	v_div_fixup_f32 v27, v35, v33, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v52, v37, v48
	v_fma_f32 v35, -v43, v40, v38
	v_div_scale_f32 v37, null, v33, v33, v16
	v_mul_f32_e32 v46, v41, v44
	v_fma_f32 v42, -v42, v52, v49
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v40, v35, v51
	v_mul_f32_e32 v35, v36, v39
	v_rcp_f32_e32 v45, v37
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v42, v42, v48, v52
	v_fma_f32 v38, -v43, v40, v38
	v_div_scale_f32 v48, null, v33, v33, v17
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v43, -v50, v35, v36
	v_div_fmas_f32 v38, v38, v51, v40
	v_rcp_f32_e32 v40, v48
	v_div_fixup_f32 v28, v42, v33, v28
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v37, v45, 1.0
	v_div_fixup_f32 v29, v38, v33, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	v_cndmask_b32_e64 v29, 0, v29, s0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v42, -v48, v40, 1.0
	v_fmac_f32_e32 v35, v43, v39
	v_fma_f32 v43, -v34, v46, v41
	v_fmac_f32_e32 v40, v42, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v36, -v50, v35, v36
	v_fmac_f32_e32 v46, v43, v44
	v_div_scale_f32 v43, null, v33, v33, v18
	v_div_scale_f32 v42, null, v33, v33, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v35, v36, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v34, -v34, v46, v41
	v_div_scale_f32 v41, s1, v17, v33, v17
	v_fmac_f32_e32 v45, v47, v45
	v_div_scale_f32 v47, s4, v16, v33, v16
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v30, v35, v33, v30
	v_div_fmas_f32 v34, v34, v44, v46
	v_mul_f32_e32 v44, v41, v40
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v46, -v43, v39, 1.0
	v_mul_f32_e32 v38, v47, v45
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v31, v34, v33, v31
	v_fma_f32 v35, -v48, v44, v41
	v_fmac_f32_e32 v39, v46, v39
	v_fma_f32 v36, -v37, v38, v47
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v30, 0, v30, s0
	v_cndmask_b32_e64 v31, 0, v31, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v44, v35, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v38, v36, v45
	v_rcp_f32_e32 v36, v42
	v_fma_f32 v34, -v37, v38, v47
	v_div_scale_f32 v37, s3, v18, v33, v18
	v_div_scale_f32 v47, null, v33, v33, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v46, -v42, v36, 1.0
	v_mul_f32_e32 v35, v37, v39
	v_div_fmas_f32 v34, v34, v45, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v47
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v46, null, v33, v33, v21
	v_div_fixup_f32 v16, v34, v33, v16
	v_fma_f32 v34, -v48, v44, v41
	v_fma_f32 v41, -v43, v35, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v49, v46
	v_div_scale_f32 v45, s4, v19, v33, v19
	v_fma_f32 v50, -v47, v38, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v41, v39
	v_div_fmas_f32 v34, v34, v40, v44
	v_div_scale_f32 v41, s1, v20, v33, v20
	v_fmac_f32_e32 v38, v50, v38
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v44, -v46, v49, 1.0
	v_div_fixup_f32 v17, v34, v33, v17
	v_fma_f32 v34, -v43, v35, v37
	v_mul_f32_e32 v37, v41, v38
	v_div_scale_f32 v43, null, v33, v33, v22
	v_fmac_f32_e32 v49, v44, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v34, v34, v39, v35
	v_fma_f32 v39, -v47, v37, v41
	v_mul_f32_e32 v48, v45, v36
	s_mov_b32 vcc_lo, s4
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v34, v33, v18
	v_fmac_f32_e32 v37, v39, v38
	v_fma_f32 v40, -v42, v48, v45
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v34, -v47, v37, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v48, v40, v36
	v_div_scale_f32 v40, s5, v21, v33, v21
	v_div_scale_f32 v47, null, v33, v33, v9
	v_fma_f32 v35, -v42, v48, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v44, v40, v49
	v_rcp_f32_e32 v42, v43
	v_div_scale_f32 v45, null, v33, v33, v23
	v_div_fmas_f32 v35, v35, v36, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v46, v44, v40
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v36, v45
	v_div_fmas_f32 v34, v34, v38, v37
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v44, v39, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v48, -v43, v42, 1.0
	v_div_fixup_f32 v19, v35, v33, v19
	v_div_scale_f32 v35, s3, v22, v33, v22
	v_fma_f32 v37, -v46, v44, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v42, v48, v42
	v_fma_f32 v39, -v45, v36, 1.0
	v_div_scale_f32 v40, s1, v23, v33, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v37, v37, v49, v44
	v_div_fixup_f32 v20, v34, v33, v20
	v_fmac_f32_e32 v36, v39, v36
	v_div_scale_f32 v39, null, v33, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v21, v37, v33, v21
	v_rcp_f32_e32 v37, v47
	v_mul_f32_e32 v46, v40, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v41, v39
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v49, null, v33, v33, v11
	v_fma_f32 v34, -v45, v46, v40
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v51, v49
	v_fma_f32 v48, -v47, v37, 1.0
	v_mul_f32_e32 v38, v35, v42
	v_fmac_f32_e32 v46, v34, v36
	v_div_scale_f32 v34, s4, v8, v33, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v37, v48, v37
	v_fma_f32 v44, -v43, v38, v35
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v44, v42
	v_fma_f32 v44, -v39, v41, 1.0
	v_fma_f32 v35, -v43, v38, v35
	v_div_scale_f32 v43, null, v33, v33, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v44, v41
	v_div_fmas_f32 v35, v35, v42, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v44, v43
	v_fma_f32 v38, -v45, v46, v40
	v_div_scale_f32 v42, s3, v9, v33, v9
	v_mul_f32_e32 v40, v34, v41
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v22, v35, v33, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v50, v42, v37
	v_div_fmas_f32 v36, v38, v36, v46
	v_fma_f32 v48, -v39, v40, v34
	v_fma_f32 v45, -v43, v44, 1.0
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v38, -v47, v50, v42
	v_div_fixup_f32 v23, v36, v33, v23
	v_fmac_f32_e32 v40, v48, v41
	v_fmac_f32_e32 v44, v45, v44
	v_div_scale_f32 v45, s5, v10, v33, v10
	v_fmac_f32_e32 v50, v38, v37
	v_div_scale_f32 v38, null, v33, v33, v12
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v46, v45, v44
	v_fma_f32 v36, -v49, v51, 1.0
	v_fma_f32 v34, -v39, v40, v34
	v_fma_f32 v39, -v47, v50, v42
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v35, -v43, v46, v45
	v_fmac_f32_e32 v51, v36, v51
	v_div_scale_f32 v36, s1, v11, v33, v11
	v_div_fmas_f32 v34, v34, v41, v40
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v46, v35, v44
	v_rcp_f32_e32 v35, v38
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v36, v51
	v_div_fmas_f32 v37, v39, v37, v50
	v_fma_f32 v39, -v43, v46, v45
	v_div_scale_f32 v41, null, v33, v33, v13
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v8, v34, v33, v8
	v_div_fmas_f32 v39, v39, v44, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v42, -v38, v35, 1.0
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v49, v40, v36
	v_div_fixup_f32 v9, v37, v33, v9
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v35, v42, v35
	v_div_scale_f32 v42, s3, v12, v33, v12
	v_fmac_f32_e32 v40, v44, v51
	v_div_fixup_f32 v10, v39, v33, v10
	v_div_scale_f32 v39, null, v33, v33, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v34, v42, v35
	v_fma_f32 v37, -v41, v43, 1.0
	v_fma_f32 v36, -v49, v40, v36
	v_rcp_f32_e32 v45, v39
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v38, v34, v42
	v_fmac_f32_e32 v43, v37, v43
	v_div_scale_f32 v37, s4, v13, v33, v13
	v_div_fmas_f32 v36, v36, v51, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v44, v35
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v40, v37, v43
	v_div_scale_f32 v44, null, v33, v33, v15
	v_div_fixup_f32 v11, v36, v33, v11
	v_fma_f32 v36, -v38, v34, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v38, -v41, v40, v37
	v_fma_f32 v42, -v39, v45, 1.0
	v_rcp_f32_e32 v46, v44
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v34, v36, v35, v34
	v_div_scale_f32 v35, null, v33, v33, v0
	v_fmac_f32_e32 v40, v38, v43
	v_fmac_f32_e32 v45, v42, v45
	v_div_scale_f32 v42, null, v33, v33, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v36, s1, v14, v33, v14
	v_div_fixup_f32 v12, v34, v33, v12
	v_fma_f32 v34, -v44, v46, 1.0
	v_rcp_f32_e32 v48, v42
	v_fma_f32 v37, -v41, v40, v37
	v_mul_f32_e32 v41, v36, v45
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v46, v34, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v47, -v35, v38, 1.0
	v_div_scale_f32 v34, s3, v15, v33, v15
	v_div_fmas_f32 v37, v37, v43, v40
	v_fma_f32 v40, -v39, v41, v36
	v_fmac_f32_e32 v38, v47, v38
	v_div_scale_f32 v47, null, v33, v33, v2
	v_mul_f32_e32 v43, v34, v46
	v_div_scale_f32 v49, s4, v0, v33, v0
	v_fma_f32 v50, -v42, v48, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v47
	v_fmac_f32_e32 v41, v40, v45
	v_fma_f32 v40, -v44, v43, v34
	v_mul_f32_e32 v52, v49, v38
	v_fmac_f32_e32 v48, v50, v48
	v_div_scale_f32 v50, s5, v1, v33, v1
	v_div_fixup_f32 v13, v37, v33, v13
	v_fma_f32 v36, -v39, v41, v36
	v_fmac_f32_e32 v43, v40, v46
	v_fma_f32 v37, -v35, v52, v49
	v_mul_f32_e32 v39, v50, v48
	v_fma_f32 v40, -v47, v51, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v34, -v44, v43, v34
	v_fmac_f32_e32 v52, v37, v38
	v_fma_f32 v37, -v42, v39, v50
	v_fmac_f32_e32 v51, v40, v51
	v_div_scale_f32 v40, s1, v2, v33, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v35, v52, v49
	v_fmac_f32_e32 v39, v37, v48
	v_div_fmas_f32 v36, v36, v45, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v37, v40, v51
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v41, null, v33, v33, v3
	v_div_fmas_f32 v34, v34, v46, v43
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v14, v36, v33, v14
	v_div_fmas_f32 v35, v35, v38, v52
	v_fma_f32 v38, -v42, v39, v50
	v_fma_f32 v42, -v47, v37, v40
	v_rcp_f32_e32 v43, v41
	v_div_fixup_f32 v15, v34, v33, v15
	v_div_fixup_f32 v0, v35, v33, v0
	v_div_scale_f32 v35, null, v33, v33, v4
	v_fmac_f32_e32 v37, v42, v51
	s_mov_b32 vcc_lo, s5
	v_div_scale_f32 v45, null, v33, v33, v7
	v_div_fmas_f32 v38, v38, v48, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v34, -v47, v37, v40
	v_fma_f32 v36, -v41, v43, 1.0
	s_mov_b32 vcc_lo, s1
	v_rcp_f32_e32 v47, v45
	v_div_fixup_f32 v1, v38, v33, v1
	v_div_fmas_f32 v34, v34, v51, v37
	v_rcp_f32_e32 v37, v35
	v_fmac_f32_e32 v43, v36, v43
	v_div_scale_f32 v36, null, v33, v33, v5
	v_div_scale_f32 v38, null, v33, v33, v6
	v_div_scale_f32 v39, vcc_lo, v3, v33, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v40, v36
	v_rcp_f32_e32 v42, v38
	v_div_fixup_f32 v2, v34, v33, v2
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v34, -v35, v37, 1.0
	v_mul_f32_e32 v44, v39, v43
	v_fma_f32 v51, -v45, v47, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v37, v34, v37
	v_div_scale_f32 v34, s1, v4, v33, v4
	v_fma_f32 v46, -v36, v40, 1.0
	v_fma_f32 v49, -v38, v42, 1.0
	v_fma_f32 v48, -v41, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v50, v34, v37 :: v_dual_fmac_f32 v47, v51, v47
	v_fmac_f32_e32 v40, v46, v40
	v_div_scale_f32 v46, s3, v5, v33, v5
	v_fmac_f32_e32 v42, v49, v42
	v_div_scale_f32 v49, s4, v6, v33, v6
	v_fmac_f32_e32 v44, v48, v43
	v_fma_f32 v48, -v35, v50, v34
	v_div_scale_f32 v51, s5, v7, v33, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v52, v46, v40 :: v_dual_mul_f32 v53, v49, v42
	v_fmac_f32_e32 v50, v48, v37
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v54, v51, v47
	v_fma_f32 v39, -v41, v44, v39
	v_fma_f32 v41, -v36, v52, v46
	v_fma_f32 v48, -v38, v53, v49
	v_fma_f32 v34, -v35, v50, v34
	v_fma_f32 v35, -v45, v54, v51
	v_div_fmas_f32 v39, v39, v43, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v52, v41, v40 :: v_dual_fmac_f32 v53, v48, v42
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v54, v35, v47
	v_div_fmas_f32 v34, v34, v37, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v36, -v36, v52, v46
	v_fma_f32 v35, -v38, v53, v49
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v37, -v45, v54, v51
	v_div_fixup_f32 v3, v39, v33, v3
	v_div_fmas_f32 v36, v36, v40, v52
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v4, v34, v33, v4
	v_div_fmas_f32 v35, v35, v42, v53
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v5, v36, v33, v5
	v_div_fmas_f32 v37, v37, v47, v54
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v6, v35, v33, v6
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v12, 0, v12, s0
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v7, v37, v33, v7
	.loc	1 1046 24 is_stmt 1             ; attention.py:1046:24
	v_mul_lo_u32 v33, s45, v69
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v1, 0, v1, s0
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	v_cndmask_b32_e64 v4, 0, v4, s0
	v_cndmask_b32_e64 v5, 0, v5, s0
	v_cndmask_b32_e64 v6, 0, v6, s0
	v_cndmask_b32_e64 v7, 0, v7, s0
	.loc	1 1046 24                       ; attention.py:1046:24
	s_mul_i32 s0, s45, s60
	v_add_nc_u32_e32 v34, v33, v70
	v_add_nc_u32_e32 v33, s0, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e32 vcc_lo, s45, v70
	.loc	1 1051 17                       ; attention.py:1051:17
	s_and_b32 s5, s51, 0xffff
	s_mov_b32 s4, s50
	.loc	1 1046 24                       ; attention.py:1046:24
	v_add_lshl_u32 v34, v34, s0, 2
	v_add_lshl_u32 v38, v33, v70, 2
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, vcc_lo
	.loc	1 1047 63 is_stmt 0             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s0, s45, v32
	.loc	1 1046 74 is_stmt 1             ; attention.py:1046:74
	v_or_b32_e32 v35, 32, v70
	v_or_b32_e32 v36, 48, v70
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v39, 8, v38
	v_add_nc_u32_e32 v40, 16, v38
	v_cndmask_b32_e32 v41, 0x80000000, v38, vcc_lo
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s1, s45, v35
	v_cmp_gt_i32_e64 s3, s45, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v39, 0x80000000, v39 :: v_dual_cndmask_b32 v40, 0x80000000, v40
	s_clause 0x2
	buffer_store_b32 v24, v41, s[4:7], 0 offen
	buffer_store_b32 v25, v39, s[4:7], 0 offen
	buffer_store_b32 v26, v40, s[4:7], 0 offen
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
	buffer_store_b32 v27, v24, s[4:7], 0 offen
	buffer_store_b32 v28, v25, s[4:7], 0 offen
	buffer_store_b32 v29, v26, s[4:7], 0 offen
	buffer_store_b32 v30, v39, s[4:7], 0 offen
	buffer_store_b32 v31, v40, s[4:7], 0 offen
	v_add_lshl_u32 v24, v33, v32, 2
	v_add_nc_u32_e32 v25, 0x48, v38
	v_add_nc_u32_e32 v26, 0x50, v38
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 1051 17                       ; attention.py:1051:17
	v_add_nc_u32_e32 v27, 0x58, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v24, 0x80000000, v24 :: v_dual_cndmask_b32 v25, 0x80000000, v25
	v_cndmask_b32_e32 v26, 0x80000000, v26, vcc_lo
	v_add_nc_u32_e32 v28, 0x60, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e32 v27, 0x80000000, v27, vcc_lo
	s_clause 0x2
	buffer_store_b32 v16, v24, s[4:7], 0 offen
	buffer_store_b32 v17, v25, s[4:7], 0 offen
	buffer_store_b32 v18, v26, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x68, v38
	v_add_nc_u32_e32 v18, 0x70, v38
	v_cndmask_b32_e32 v16, 0x80000000, v28, vcc_lo
	buffer_store_b32 v19, v27, s[4:7], 0 offen
	v_add_nc_u32_e32 v19, 0x78, v38
	v_dual_cndmask_b32 v17, 0x80000000, v17 :: v_dual_cndmask_b32 v18, 0x80000000, v18
	buffer_store_b32 v20, v16, s[4:7], 0 offen
	v_add_lshl_u32 v16, v33, v35, 2
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1051 17                       ; attention.py:1051:17
	buffer_store_b32 v21, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v17, 0x88, v34
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	s_clause 0x2
	buffer_store_b32 v22, v18, s[4:7], 0 offen
	buffer_store_b32 v23, v19, s[4:7], 0 offen
	buffer_store_b32 v8, v16, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0x90, v34
	v_cndmask_b32_e32 v16, 0x80000000, v17, vcc_lo
	v_add_nc_u32_e32 v17, 0x98, v34
	v_add_nc_u32_e32 v18, 0xa0, v34
	v_add_nc_u32_e32 v19, 0xa8, v34
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	buffer_store_b32 v9, v16, s[4:7], 0 offen
	v_dual_cndmask_b32 v9, 0x80000000, v17 :: v_dual_cndmask_b32 v16, 0x80000000, v18
	v_cndmask_b32_e32 v17, 0x80000000, v19, vcc_lo
	buffer_store_b32 v10, v8, s[4:7], 0 offen
	v_add_nc_u32_e32 v8, 0xb0, v34
	s_clause 0x2
	buffer_store_b32 v11, v9, s[4:7], 0 offen
	buffer_store_b32 v12, v16, s[4:7], 0 offen
	buffer_store_b32 v13, v17, s[4:7], 0 offen
	v_add_nc_u32_e32 v9, 0xb8, v34
	v_add_lshl_u32 v10, v33, v36, 2
	v_add_nc_u32_e32 v11, 0xc8, v34
	v_add_nc_u32_e32 v12, 0xd0, v34
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_cndmask_b32 v8, 0x80000000, v8 :: v_dual_cndmask_b32 v9, 0x80000000, v9
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v37, 62, v71
	.loc	1 1051 17                       ; attention.py:1051:17
	v_dual_cndmask_b32 v10, 0x80000000, v10 :: v_dual_cndmask_b32 v11, 0x80000000, v11
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	s_clause 0x4
	buffer_store_b32 v14, v8, s[4:7], 0 offen
	buffer_store_b32 v15, v9, s[4:7], 0 offen
	buffer_store_b32 v0, v10, s[4:7], 0 offen
	buffer_store_b32 v1, v11, s[4:7], 0 offen
	buffer_store_b32 v2, v12, s[4:7], 0 offen
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
	buffer_store_b32 v3, v0, s[4:7], 0 offen
	buffer_store_b32 v4, v1, s[4:7], 0 offen
	buffer_store_b32 v5, v2, s[4:7], 0 offen
	buffer_store_b32 v6, v8, s[4:7], 0 offen
	buffer_store_b32 v7, v9, s[4:7], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp56:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 154
		.amdhsa_next_free_sgpr 62
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 154
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10896
; TotalNumSgprs: 64
; NumVgprs: 154
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 154
; Occupancy: 9
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
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
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 64
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     154
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
