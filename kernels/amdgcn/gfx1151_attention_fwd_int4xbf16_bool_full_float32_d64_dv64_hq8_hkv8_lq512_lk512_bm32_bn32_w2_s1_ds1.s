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
	v_dual_mov_b32 v51, 0x7531 :: v_dual_lshlrev_b32 v46, 4, v0
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s14, s3, 9
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v47, s4, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v53, 0x7632 :: v_dual_and_b32 v44, 16, v46
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s60, s4, s14
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v48, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v47
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x20
	s_load_b128 s[48:51], s[0:1], 0x30
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v69, v45, 16, v48
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	v_dual_mov_b32 v72, 0xff800000 :: v_dual_and_b32 v55, 1, v0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s44, v45
	s_mul_i32 s2, s44, s60
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s44, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s37, 0xffff
	s_mov_b32 s52, s36
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, s4, v69
	s_mov_b32 s4, 0
	v_and_b32_e32 v59, 24, v0
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v1, v44, s2
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	s_mov_b32 s11, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v2
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s9, s4
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[40:43], v1, s[52:55], 0 offen
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v1, s60, v69
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s52, s42
	v_mov_b32_e32 v50, 0x6420
	s_mov_b32 s10, s4
	v_lshlrev_b32_e32 v1, 1, v1
	v_dual_mov_b32 v39, s11 :: v_dual_mov_b32 v24, 0
	v_dual_mov_b32 v35, s7 :: v_dual_mov_b32 v36, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v29, v24 :: v_dual_and_b32 v54, 56, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v70, v0, 4, 1
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v49, v1, s[52:55], 0 offen
	v_dual_mov_b32 v31, v24 :: v_dual_lshlrev_b32 v56, 1, v0
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	v_dual_mov_b32 v52, 0x5410 :: v_dual_mov_b32 v37, s9
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_mov_b32 v33, s5
	v_dual_mov_b32 v38, s10 :: v_dual_and_b32 v57, 16, v0
	v_dual_mov_b32 v34, s6 :: v_dual_mov_b32 v25, v24
	v_dual_mov_b32 v32, s4 :: v_dual_mov_b32 v27, v24
	v_mov_b32_e32 v28, v24
	v_mov_b32_e32 v23, v24
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s4, s0, 3
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v62, 1, v54
	v_xor_b32_e32 v59, v46, v59
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v55
	v_lshlrev_b32_e32 v55, 6, v55
	v_and_b32_e32 v46, 48, v46
	v_dual_mov_b32 v19, v24 :: v_dual_lshlrev_b32 v60, 3, v0
	v_and_or_b32 v63, v56, 30, v70
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v58, 7, v0
	v_and_or_b32 v75, v56, 60, v55
	v_xor_b32_e32 v46, v46, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v55, s14, v62
	v_bfe_i32 v61, v0, 3, 1
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v73, 2, v63
	v_dual_mov_b32 v9, v24 :: v_dual_and_b32 v60, 48, v60
	v_cndmask_b32_e64 v50, 0x7531, v50, s0
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v65, 24, v56
	v_lshl_or_b32 v80, v58, 9, v46
	v_or_b32_e32 v46, 3, v55
	v_mul_lo_u32 v47, s13, v47
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s1, s3, s1
	v_dual_mov_b32 v30, v24 :: v_dual_and_b32 v61, 0x210, v61
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v45, s14, v45
	v_cndmask_b32_e64 v51, 0x6420, v51, s0
	v_lshl_or_b32 v50, v50, 8, v50
	v_lshl_or_b32 v54, v58, 6, v60
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v78, 4, v73
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s4, s47, s4
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s5, s12, s1
	v_lshl_or_b32 v48, v48, 5, v65
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v46, s45, v46
	s_add_i32 s4, s4, s5
	v_dual_mov_b32 v15, v24 :: v_dual_and_b32 v50, 0x750031, v50
	v_lshl_or_b32 v51, v51, 8, v51
	v_xor_b32_e32 v81, v54, v61
	v_mad_u64_u32 v[60:61], null, s44, v45, v[44:45]
	v_add3_u32 v89, s4, v47, v44
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v77, 0, v59
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v83, 0, v48
	v_xor_b32_e32 v63, 8, v59
	v_xor_b32_e32 v56, 8, v48
	v_xor_b32_e32 v59, 16, v48
	v_xor_b32_e32 v62, 24, v48
	v_mul_lo_u32 v48, s45, v55
	v_mov_b32_e32 v3, v24
	v_dual_mov_b32 v4, v24 :: v_dual_lshlrev_b32 v101, 1, v46
	v_lshl_or_b32 v45, v50, 4, v50
	v_and_b32_e32 v50, 0x750031, v51
	v_xor_b32_e32 v51, 0x90, v80
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s4, 0, v57
	v_dual_mov_b32 v10, v24 :: v_dual_lshlrev_b32 v91, 1, v48
	v_dual_mov_b32 v7, v24 :: v_dual_and_b32 v88, 0x7050301, v45
	v_lshl_or_b32 v45, v50, 4, v50
	.loc	1 818 13                        ; attention.py:818:13
	v_add_lshl_u32 v90, v48, s45, 1
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_add_nc_u32 v92, 0, v51
	v_cndmask_b32_e64 v50, 0x1054, v52, s4
	v_cndmask_b32_e64 v51, 0x3276, v53, s4
	v_dual_mov_b32 v21, v24 :: v_dual_lshlrev_b32 v64, 3, v58
	v_dual_mov_b32 v1, v24 :: v_dual_add_nc_u32 v82, 0, v63
	v_dual_mov_b32 v6, v24 :: v_dual_and_b32 v103, 0x7050301, v45
	v_mov_b32_e32 v84, v24
	v_xor_b32_e32 v61, 16, v81
	v_xor_b32_e32 v63, 32, v81
	v_or_b32_e32 v54, 2, v55
	v_dual_mov_b32 v11, v24 :: v_dual_lshlrev_b32 v66, 1, v70
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v14, v24 :: v_dual_add_nc_u32 v95, 0, v61
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s1, s45, v64
	v_xor_b32_e32 v64, 48, v81
	v_add_nc_u32_e32 v96, 0, v63
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v54, s45, v54
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v71, 4, v0
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v87, 0, v62
	v_dual_mov_b32 v13, v24 :: v_dual_lshlrev_b32 v74, 4, v58
	v_dual_mov_b32 v0, v24 :: v_dual_add_nc_u32 v97, 0, v64
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v76, s3, 10, v66
	v_xor_b32_e32 v55, 0x120, v80
	v_xor_b32_e32 v58, 0x1b0, v80
	v_xor_b32_e32 v65, 0x420, v81
	v_xor_b32_e32 v66, 0x430, v81
	v_xor_b32_e32 v67, 0x410, v81
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s46, 0x3fb8aa3b
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v85, 0, v56
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v93, 0, v55
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v99, 0, v66
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v86, 0, v59
	v_xor_b32_e32 v79, 64, v75
	v_add_nc_u32_e32 v94, 0, v58
	v_add_nc_u32_e32 v98, 0, v65
	v_add_nc_u32_e32 v100, 0, v67
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v102, 1, v54
	s_and_b32 s39, s39, 0xffff
	s_movk_i32 s61, 0xffe0
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_lshl_b32 s46, s45, 6
	s_lshl_b32 s44, s44, 5
	s_mov_b32 s52, s38
	s_mov_b32 s53, s39
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v73, v40
	ds_bpermute_b32 v40, v78, v40
	ds_bpermute_b32 v46, v73, v41
	ds_bpermute_b32 v41, v78, v41
	ds_bpermute_b32 v47, v73, v42
	ds_bpermute_b32 v42, v78, v42
	ds_bpermute_b32 v48, v73, v43
	ds_bpermute_b32 v43, v78, v43
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v49
	v_lshl_or_b32 v49, v50, 8, v50
	v_lshl_or_b32 v50, v51, 8, v51
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v61, v40, v44, s4
	v_cndmask_b32_e64 v63, v44, v40, s4
	v_and_b32_e32 v40, 0x540054, v49
	v_and_b32_e32 v44, 0x760076, v50
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v62, v41, v46, s4
	v_cndmask_b32_e64 v64, v46, v41, s4
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v65, v42, v47, s4
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v44, 4, v44
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v104, s3, v45
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v67, v47, v42, s4
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v66, v43, v48, s4
	v_cndmask_b32_e64 v68, v48, v43, s4
	v_and_b32_e32 v105, 0x5040504, v40
	v_and_b32_e32 v106, 0x7060706, v41
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_mov_b16_e32 v109.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v111.h, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v110, v43
	v_cvt_f32_i32_e32 v128, v44
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v43, 8, v56
	v_lshrrev_b32_e32 v44, 8, v58
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v126, 8, v57
	v_lshrrev_b32_e32 v127, 8, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v116.h, v115.l
	v_mov_b16_e32 v115.l, v109.l
	v_mov_b16_e32 v115.h, v114.l
	v_mov_b16_e32 v113.h, v112.l
	v_mov_b16_e32 v112.l, v109.l
	v_mov_b16_e32 v112.h, v111.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v42, v42
	v_mul_f32_e32 v130, v104, v40
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v40.l, 0xff, v56.l
	v_and_b16 v40.h, 0xff, v43.l
	v_and_b16 v43.l, 0xff, v58.l
	v_and_b16 v43.h, 0xff, v44.l
	v_and_b16 v44.l, 0xff, v58.h
	v_lshrrev_b32_e32 v58, 24, v58
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v104, v46
	v_mul_f32_e32 v131, v104, v41
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v41.l, 0xff, v56.h
	v_lshrrev_b32_e32 v56, 24, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v121.h, v120.l
	v_mov_b16_e32 v120.l, v109.l
	v_mov_b16_e32 v120.h, v119.l
	v_mov_b16_e32 v118.h, v117.l
	v_mov_b16_e32 v117.l, v109.l
	v_mov_b16_e32 v117.h, v116.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v129, v45
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v41.h, 0xff, v57.l
	v_and_b16 v44.h, 0xff, v59.l
	v_and_b16 v45.l, 0xff, v127.l
	v_and_b16 v45.h, 0xff, v59.h
	v_lshrrev_b32_e32 v59, 24, v59
	v_cmp_ne_u16_e64 s3, 0, v40.l
	v_cmp_ne_u16_e64 s5, 0, v40.h
	v_cmp_ne_u16_e64 s10, 0, v56.l
	v_cmp_ne_u16_e64 s12, 0, v43.l
	v_cmp_ne_u16_e64 s13, 0, v43.h
	v_cmp_ne_u16_e64 s15, 0, v44.l
	v_cmp_ne_u16_e64 s17, 0, v58.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v112, v46, v112
	v_mul_f32_e32 v54, v104, v54
	v_mul_f32_e32 v132, v104, v42
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v42.l, 0xff, v126.l
	v_and_b16 v42.h, 0xff, v57.h
	v_lshrrev_b32_e32 v57, 24, v57
	v_cmp_ne_u16_e64 s6, 0, v41.l
	v_cmp_ne_u16_e64 s22, 0, v44.h
	v_cmp_ne_u16_e64 s16, 0, v42.l
	v_cmp_ne_u16_e64 s23, 0, v45.l
	v_cmp_ne_u16_e64 s20, 0, v57.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s7, vcc_lo, s3
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s3, 0, v59.l
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s8, vcc_lo, s5
	s_and_b32 s11, vcc_lo, s10
	s_and_b32 s10, vcc_lo, s12
	s_and_b32 s12, vcc_lo, s13
	s_and_b32 s13, vcc_lo, s15
	s_and_b32 s15, vcc_lo, s17
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s14, 0, v41.h
	v_cmp_ne_u16_e64 s19, 0, v42.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v44, 0, 1, s7
	v_cndmask_b32_e64 v41, 0, 1, s8
	v_cndmask_b32_e64 v40, 0, 1, s11
	v_cndmask_b32_e64 v57, 0, 1, s13
	v_cndmask_b32_e64 v42, 0, 1, s15
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v45.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s9, vcc_lo, s6
	s_and_b32 s18, vcc_lo, s16
	s_and_b32 s21, vcc_lo, s20
	s_and_b32 s20, vcc_lo, s22
	s_and_b32 s22, vcc_lo, s23
	s_and_b32 s25, vcc_lo, s3
	v_cndmask_b32_e64 v43, 0, 1, s9
	v_cndmask_b32_e64 v45, 0, 1, s10
	v_cndmask_b32_e64 v56, 0, 1, s12
	v_cndmask_b32_e64 v59, 0, 1, s18
	v_cndmask_b32_e64 v127, 0, 1, s21
	v_cndmask_b32_e64 v134, 0, 1, s22
	v_cndmask_b32_e64 v136, 0, 1, s25
	v_lshlrev_b16 v40.l, 8, v40.l
	v_lshlrev_b16 v40.h, 8, v41.l
	v_mov_b16_e32 v41.l, v44.l
	v_lshlrev_b16 v41.h, 8, v42.l
	v_mov_b16_e32 v42.l, v57.l
	s_and_b32 s17, vcc_lo, s14
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s23, vcc_lo, s24
	v_cndmask_b32_e64 v58, 0, 1, s17
	v_cndmask_b32_e64 v126, 0, 1, s19
	v_cndmask_b32_e64 v133, 0, 1, s20
	v_cndmask_b32_e64 v135, 0, 1, s23
	v_mov_b16_e32 v44.l, v56.l
	v_or_b16 v56.h, v43.l, v40.l
	v_or_b16 v56.l, v41.l, v40.h
	v_mov_b16_e32 v40.l, v127.l
	v_or_b16 v57.h, v42.l, v41.h
	v_mov_b16_e32 v41.l, v45.l
	v_mov_b16_e32 v42.l, v59.l
	v_mov_b16_e64 v43.l, v136.l
	v_mov_b16_e64 v45.l, v134.l
	v_lshlrev_b16 v40.h, 8, v44.l
	v_lshlrev_b16 v40.l, 8, v40.l
	v_mov_b16_e32 v44.l, v126.l
	v_lshlrev_b16 v41.h, 8, v42.l
	v_mov_b16_e32 v42.l, v58.l
	v_lshlrev_b16 v42.h, 8, v43.l
	v_mov_b16_e64 v43.l, v135.l
	v_lshlrev_b16 v43.h, 8, v45.l
	v_mov_b16_e64 v45.l, v133.l
	v_or_b16 v57.l, v41.l, v40.h
	v_or_b16 v40.h, v44.l, v40.l
	v_or_b16 v40.l, v42.l, v41.h
	v_or_b16 v41.h, v43.l, v42.h
	v_or_b16 v41.l, v45.l, v43.h
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v114.l, v109.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v44, v40, v56, v88
	v_perm_b32 v40, v40, v56, v103
	v_perm_b32 v45, v41, v57, v88
	v_perm_b32 v41, v41, v57, v103
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v114.h, v113.l
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v44, v73, v44
	ds_bpermute_b32 v40, v78, v40
	ds_bpermute_b32 v45, v73, v45
	ds_bpermute_b32 v41, v78, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v111.l, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v55, v55
	v_mul_f32_e32 v43, v104, v128
	v_mul_f32_e32 v47, v104, v47
	v_mul_f32_e32 v42, v104, v110
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v113.l, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v53, v53
	v_mul_f32_e32 v55, v104, v55
	v_mul_f32_e32 v111, v47, v111
	v_dual_mul_f32 v115, v42, v115 :: v_dual_mul_f32 v42, v43, v114
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v124.h, v124.l
	v_mov_b16_e32 v124.l, v109.l
	v_mov_b16_e32 v125.h, v123.l
	v_mov_b16_e32 v123.l, v109.l
	v_mov_b16_e32 v123.h, v122.l
	v_mov_b16_e32 v122.h, v121.l
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v114, v41, v45, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v104, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v121.l, v109.l
	v_mov_b16_e32 v119.l, v109.l
	v_mov_b16_e32 v119.h, v118.l
	v_mov_b16_e32 v118.l, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v52, v52
	v_mul_f32_e32 v51, v104, v51
	v_mul_f32_e32 v49, v104, v49
	v_dual_mul_f32 v53, v104, v53 :: v_dual_mul_f32 v110, v55, v119
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v47, 0x100, v114
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v56, v113
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v113, v40, v44, s4
	v_cndmask_b32_e64 v44, v44, v40, s4
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v109.h, v125.l
	v_mov_b16_e32 v125.l, v109.l
	v_mov_b16_e32 v122.l, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v52, v104, v52
	v_mul_f32_e32 v58, v51, v123
	v_dual_mul_f32 v50, v104, v50 :: v_dual_mul_f32 v49, v49, v124
	v_dual_mul_f32 v48, v104, v48 :: v_dual_mul_f32 v51, v53, v121
	v_mul_f32_e32 v53, v131, v117
	v_mul_f32_e32 v59, v54, v120
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v40, v45, v41, s4
	v_and_b32_e32 v41, 1, v113
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v57, v50, v125 :: v_dual_and_b32 v54, 1, v44
	v_dual_mul_f32 v48, v48, v109 :: v_dual_and_b32 v55, 0x100, v44
	v_dual_mul_f32 v50, v52, v122 :: v_dual_and_b32 v45, 0x100, v113
	v_mul_f32_e32 v52, v130, v118
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 1, v41
	v_and_b32_e32 v41, 1, v40
	v_cmp_eq_u32_e64 s14, 1, v54
	v_and_b32_e32 v46, 1, v114
	v_cmp_eq_u32_e64 s28, 0, v45
	v_and_b32_e32 v45, 0x100, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v117, 0xff800000, v48, s27
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 1, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v120, 0xff800000, v52, s14
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s24, 1, v46
	v_cmp_eq_u32_e64 s26, 0, v47
	v_cmp_eq_u32_e64 s16, 0, v55
	v_cmp_eq_u32_e64 s5, 0, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v42, s6
	v_cndmask_b32_e64 v42, v117, v120, s4
	v_cndmask_b32_e64 v118, v49, 0xff800000, s28
	v_cndmask_b32_e64 v119, 0xff800000, v50, s24
	v_cndmask_b32_e64 v121, v51, 0xff800000, s26
	v_cndmask_b32_e64 v122, v53, 0xff800000, s16
	ds_bpermute_b32 v126, v79, v42
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v42, v90, v74
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v124, v43, 0xff800000, s5
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v116.l, v109.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v120, v117, s4
	v_cndmask_b32_e64 v43, v122, v118, s4
	v_cndmask_b32_e64 v45, v118, v122, s4
	v_cndmask_b32_e64 v46, v123, v119, s4
	v_cndmask_b32_e64 v47, v119, v123, s4
	v_cndmask_b32_e64 v48, v124, v121, s4
	v_cndmask_b32_e64 v49, v121, v124, s4
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v116, v132, v116
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v125, v75, v41
	ds_bpermute_b32 v127, v75, v43
	ds_bpermute_b32 v128, v79, v45
	ds_bpermute_b32 v129, v75, v46
	ds_bpermute_b32 v130, v79, v47
	ds_bpermute_b32 v131, v75, v48
	ds_bpermute_b32 v132, v79, v49
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v41, v91, v74
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v46, 0x10000, v40
	.loc	1 884 24                        ; attention.py:884:24
	v_dual_max_f32 v72, v72, v72 :: v_dual_add_nc_u32 v45, v101, v74
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s1
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v41, 0x80000000, v41, s1
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v143, v117, v118 :: v_dual_and_b32 v48, 0x1000000, v40
.Ltmp2:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s1
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v133, 0x10000, v114
	.loc	1 890 30                        ; attention.py:890:30
	buffer_load_b128 v[49:52], v41, s[40:43], 0 offen
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 0, v48
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(6)
	v_dual_max_f32 v139, v125, v125 :: v_dual_and_b32 v134, 0x10000, v44
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s3, 0, v46
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v138, v128, v127, s0
	v_cndmask_b32_e64 v127, v127, v128, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v128, v130, v129, s0
	v_cndmask_b32_e64 v129, v129, v130, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v130, v132, v131, s0
	v_cndmask_b32_e64 v131, v131, v132, s0
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v132, v126, v126
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v43, v102, v74
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v114, 0x1000000, v114
	v_cmp_eq_u32_e64 s33, 0, v133
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v132, v139, v132 :: v_dual_and_b32 v133, 0x10000, v113
.Ltmp8:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v47, 0x80000000, v43, s1
	s_clause 0x2
	buffer_load_b128 v[40:43], v42, s[40:43], 0 offen
	buffer_load_b128 v[53:56], v47, s[40:43], 0 offen
	buffer_load_b128 v[45:48], v45, s[40:43], 0 offen
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s31, 0, v134
	v_cmp_eq_u32_e64 s35, 0, v114
	v_cmp_eq_u32_e64 s36, 0, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, v111, 0xff800000, s30
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v44, 0x1000000, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, v116, 0xff800000, s31
	v_cndmask_b32_e64 v110, v110, 0xff800000, s35
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v113, 0x1000000, v113
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v116, v57, 0xff800000, s36
	v_cndmask_b32_e64 v112, v112, 0xff800000, s3
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s34, 0, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, v59, 0xff800000, s33
	v_cndmask_b32_e64 v57, v111, v110, s4
	v_cndmask_b32_e64 v134, v110, v111, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s37, 0, v113
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v113, v114, v116, s4
	v_cndmask_b32_e64 v135, v116, v114, s4
	v_cndmask_b32_e64 v115, v115, 0xff800000, s34
	v_cndmask_b32_e64 v59, v112, v44, s4
	v_cndmask_b32_e64 v133, v44, v112, s4
	ds_bpermute_b32 v57, v75, v57
	ds_bpermute_b32 v134, v79, v134
	v_cndmask_b32_e64 v136, v58, 0xff800000, s37
	ds_bpermute_b32 v58, v75, v113
	ds_bpermute_b32 v113, v79, v135
	ds_bpermute_b32 v59, v75, v59
	ds_bpermute_b32 v133, v79, v133
	v_cndmask_b32_e64 v135, v115, v136, s4
	v_cndmask_b32_e64 v137, v136, v115, s4
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v142, v123, v124, v112
	v_max3_f32 v144, v136, v119, v121
.Ltmp10:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v108
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v135, v75, v135
	ds_bpermute_b32 v137, v79, v137
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v74, s46, v74
	v_add_nc_u32_e32 v76, 64, v76
	v_add_nc_u32_e32 v60, s44, v60
	s_add_i32 s61, s61, 32
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v140, v134, v57, s0
	v_cndmask_b32_e64 v134, v57, v134, s0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s61, 0x1e0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v141, v113, v58, s0
	v_cndmask_b32_e64 v113, v58, v113, s0
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v129, v130, v131
	v_max3_f32 v57, v59, v133, v140
.Ltmp12:
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v139, v127, v141, v113
.Ltmp14:
	.loc	1 877 25                        ; attention.py:877:25
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v57, v58, v57, v134
	v_max3_f32 v58, v135, v137, v128
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v132, v132, v138, v139
	v_max3_f32 v139, v122, v114, v115
	v_max3_f32 v57, v132, v58, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_max3_f32 v58, v139, v142, v111
	v_max3_f32 v132, v44, v110, v120
	v_max3_f32 v139, v143, v116, v144
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v142, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v139, v132, v58
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v142, v142 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v132, v58, s39, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v142, v142
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v142, v126, v125, s0
	v_cndmask_b32_e64 v125, v125, v126, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v58, v108, v58, v132
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v132, v57, v139
.Ltmp22:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v107, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v139, v108, v58
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v118, v118, v58
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v72, v72, v132
	s_delay_alu instid0(VALU_DEP_4)
	v_max_f32_e32 v57, v57, v132
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, v137, v135, s0
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v126, v139
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, v135, v137, s0
	v_cndmask_b32_e64 v139, v133, v59, s0
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v143, v107, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v59, v133, s0
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v125, v125, v72 :: v_dual_sub_f32 v116, v116, v58
	v_dual_sub_f32 v137, v138, v72 :: v_dual_sub_f32 v136, v136, v58
	v_dual_sub_f32 v127, v127, v72 :: v_dual_sub_f32 v44, v44, v58
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v108, 0, v126, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v126, v142, v72
	v_sub_f32_e32 v138, v141, v72
	v_dual_sub_f32 v113, v113, v72 :: v_dual_sub_f32 v110, v110, v58
	v_dual_sub_f32 v132, v132, v72 :: v_dual_sub_f32 v117, v117, v58
	v_dual_sub_f32 v135, v135, v72 :: v_dual_sub_f32 v120, v120, v58
	v_dual_sub_f32 v128, v128, v72 :: v_dual_sub_f32 v119, v119, v58
	v_dual_sub_f32 v129, v129, v72 :: v_dual_sub_f32 v122, v122, v58
	v_dual_sub_f32 v130, v130, v72 :: v_dual_sub_f32 v121, v121, v58
	v_dual_sub_f32 v131, v131, v72 :: v_dual_sub_f32 v114, v114, v58
	v_dual_sub_f32 v139, v139, v72 :: v_dual_sub_f32 v124, v124, v58
	v_dual_sub_f32 v133, v133, v72 :: v_dual_sub_f32 v112, v112, v58
	v_dual_sub_f32 v140, v140, v72 :: v_dual_sub_f32 v115, v115, v58
	v_dual_sub_f32 v134, v134, v72 :: v_dual_sub_f32 v123, v123, v58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v125, v125
	v_exp_f32_e32 v137, v137
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v132, v132
	v_exp_f32_e32 v135, v135
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v129, v129
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v139, v139
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v140, v140
	v_exp_f32_e32 v134, v134
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v126, 0, v126, s7
	v_cndmask_b32_e64 v125, 0, v125, s8
	v_cndmask_b32_e64 v137, 0, v137, s9
	v_cndmask_b32_e64 v127, 0, v127, s11
	v_cndmask_b32_e64 v138, 0, v138, s17
	v_cndmask_b32_e64 v113, 0, v113, s18
	v_cndmask_b32_e64 v132, 0, v132, s19
	v_cndmask_b32_e64 v135, 0, v135, s21
	v_cndmask_b32_e64 v128, 0, v128, s10
	v_cndmask_b32_e64 v129, 0, v129, s12
	v_cndmask_b32_e64 v130, 0, v130, s13
	v_cndmask_b32_e64 v131, 0, v131, s15
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v111, v111, v58
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v110, v110
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v139, s20
	v_cndmask_b32_e64 v133, 0, v133, s22
	v_cndmask_b32_e64 v140, 0, v140, s23
	v_cndmask_b32_e64 v134, 0, v134, s25
.Ltmp23:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v125, v126, v125 :: v_dual_mul_f32 v24, v24, v108
	v_dual_add_f32 v126, v137, v127 :: v_dual_add_f32 v113, v138, v113
.Ltmp24:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v108
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v127, v132, v135
	v_dual_add_f32 v128, v128, v129 :: v_dual_add_f32 v129, v130, v131
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v130, v139, v133 :: v_dual_add_f32 v125, v125, v126
	v_dual_add_f32 v113, v113, v127 :: v_dual_mul_f32 v26, v26, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add_f32_e32 v126, v128, v129
	v_add_f32_e32 v131, v140, v134
.Ltmp26:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v118, v118
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v129, v110, 0, s35
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v110, v125, v113
.Ltmp28:
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v16, v16, v108 :: v_dual_add_f32 v127, v130, v131
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v108
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	v_exp_f32_e32 v112, v112
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v113, v126, v127
.Ltmp30:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v121, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.h, v109.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v110, v110, v113 :: v_dual_mul_f32 v25, v25, v108
.Ltmp32:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, v118, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.h, v109.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v117, s27
	v_cndmask_b32_e64 v128, v136, 0, s37
	v_cndmask_b32_e64 v112, v112, 0, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.l, v113.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.l, v117.h
	v_cmp_o_f32_e64 s3, v113, v113
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, v116, 0, s36
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v118, 1, v118
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v108 :: v_dual_and_b32 v125, 1, v125
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s7, v117, v117
	v_add3_u32 v118, v113, v118, 0x7fff
	v_mov_b16_e64 v113.l, v128.h
	v_mov_b16_e32 v113.h, v109.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v125, v117, v125, 0x7fff
	v_cndmask_b16 v126.h, 0x7fff, v118.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, v121, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v117.l, v116.h
	v_mov_b16_e32 v117.h, v109.l
	v_and_b32_e32 v113, 1, v113
	v_mov_b16_e32 v121.h, v109.l
	v_mov_b16_e32 v121.l, v118.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v22, v22, v108 :: v_dual_and_b32 v117, 1, v117
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v8, v8, v108 :: v_dual_and_b32 v121, 1, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v128, v113, 0x7fff
	v_cmp_o_f32_e64 s3, v128, v128
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v122, v122
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, v44, 0, s33
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cndmask_b16 v126.l, 0x7fff, v125.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v119, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v117, v116, v117, 0x7fff
	v_cmp_o_f32_e64 s7, v116, v116
	v_cndmask_b16 v127.h, 0x7fff, v113.h, s3
	v_add3_u32 v116, v118, v121, 0x7fff
	v_cmp_o_f32_e64 s3, v118, v118
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v115, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v125.l, v119.h
	v_mov_b16_e32 v125.h, v109.l
	v_cndmask_b16 v127.l, 0x7fff, v117.h, s7
	v_mov_b16_e32 v117.l, v44.h
	v_mov_b16_e32 v117.h, v109.l
	v_cndmask_b16 v121.h, 0x7fff, v116.h, s3
	v_mov_b16_e64 v116.l, v129.h
	v_mov_b16_e32 v116.h, v109.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v120, s14
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v114, v114
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v10, v10, v108 :: v_dual_and_b32 v113, 1, v125
	v_dual_mul_f32 v12, v12, v108 :: v_dual_and_b32 v117, 1, v117
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, v122, 0, s16
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v116, 1, v116
	v_mov_b16_e32 v122.l, v120.h
	v_mov_b16_e32 v122.h, v109.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v123, v123
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v115, v115, 0, s34
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v29, v29, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v119, v113, 0x7fff
	v_cmp_o_f32_e64 s3, v119, v119
	v_add3_u32 v117, v44, v117, 0x7fff
	v_mov_b16_e32 v119.l, v118.h
	v_mov_b16_e32 v119.h, v109.l
	v_add3_u32 v116, v129, v116, 0x7fff
	v_cmp_o_f32_e64 s7, v129, v129
	v_cmp_o_f32_e64 s8, v44, v44
	v_and_b32_e32 v44, 1, v122
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v111, v111
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v114, v114, 0, s31
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v14, v14, v108 :: v_dual_and_b32 v119, 1, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v122.h, 0x7fff, v116.h, s7
	v_add3_u32 v44, v120, v44, 0x7fff
	v_mov_b16_e32 v116.l, v115.h
	v_mov_b16_e32 v116.h, v109.l
	v_cmp_o_f32_e64 s7, v120, v120
	v_cndmask_b16 v121.l, 0x7fff, v113.h, s3
	v_cndmask_b16 v122.l, 0x7fff, v117.h, s8
	v_add3_u32 v113, v118, v119, 0x7fff
	v_cmp_o_f32_e64 s3, v118, v118
	v_mov_b16_e32 v117.l, v114.h
	v_mov_b16_e32 v117.h, v109.l
	v_and_b32_e32 v116, 1, v116
	v_cndmask_b16 v120.l, 0x7fff, v44.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, 0, v123, s6
	v_cndmask_b32_e64 v111, v111, 0, s30
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v0, v0, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v120.h, 0x7fff, v113.h, s3
	v_and_b32_e32 v113, 1, v117
	v_add3_u32 v116, v115, v116, 0x7fff
	v_cmp_o_f32_e64 s3, v115, v115
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, v124, 0, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v117.l, v44.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v2, v2, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.l, v111.h
	v_cndmask_b16 v109.h, 0x7fff, v116.h, s3
	v_mov_b16_e32 v116.l, v115.h
	v_mov_b16_e32 v116.h, v109.l
	v_and_b32_e32 v117, 1, v117
	v_mov_b16_e32 v119.l, v112.h
	v_mov_b16_e32 v119.h, v109.l
	v_mov_b16_e32 v118.h, v109.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v31, v31, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v114, v113, 0x7fff
	v_and_b32_e32 v116, 1, v116
	v_cmp_o_f32_e64 s3, v114, v114
	v_add3_u32 v114, v44, v117, 0x7fff
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v108 :: v_dual_and_b32 v117, 1, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v118, 1, v118
	v_add3_u32 v116, v115, v116, 0x7fff
	v_cmp_o_f32_e64 s5, v115, v115
	v_cmp_o_f32_e64 s6, v44, v44
	v_add3_u32 v44, v112, v117, 0x7fff
	v_add3_u32 v115, v111, v118, 0x7fff
	v_cmp_o_f32_e64 s7, v111, v111
	v_cmp_o_f32_e64 s8, v112, v112
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v111.l, v49.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v6, v6, v108 :: v_dual_add_nc_u32 v151, 0, v81
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v109.l, 0x7fff, v113.h, s3
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v111.h, v40.l
	v_mov_b16_e32 v40.l, v49.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v159.l, 0x7fff, v44.h, s8
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v112.l, v53.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v112.h, v45.l
	v_add_nc_u32_e32 v49, 0, v80
	v_mov_b16_e32 v45.l, v53.h
	v_mov_b32_e32 v44, v40
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v124.h, 0x7fff, v116.h, s5
	v_cndmask_b16 v124.l, 0x7fff, v114.h, s6
	v_cndmask_b16 v159.h, 0x7fff, v115.h, s7
	v_permlanex16_b32 v119, v126, s39, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v49, v[111:112], v[44:45] offset1:8
	v_mov_b16_e32 v111.h, v41.l
	v_mov_b16_e32 v41.l, v50.h
	v_mov_b16_e32 v112.l, v54.l
	v_mov_b16_e32 v112.h, v46.l
	v_mov_b16_e32 v111.l, v50.l
	v_mov_b16_e32 v46.l, v54.h
	v_mov_b32_e32 v45, v41
	v_mov_b16_e32 v49.h, v42.l
	v_mov_b16_e32 v42.l, v51.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v50.l, v55.l
	ds_store_2addr_b64 v92, v[111:112], v[45:46] offset1:8
	v_mov_b16_e32 v50.h, v47.l
	v_mov_b32_e32 v46, v42
	v_mov_b16_e32 v42.h, v48.l
	v_mov_b16_e32 v48.l, v56.h
	v_mov_b16_e32 v49.l, v51.l
	v_mov_b16_e32 v47.l, v55.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v21, v21, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v42.l, v56.l
	v_mov_b16_e32 v41.l, v52.l
	v_mov_b16_e32 v41.h, v43.l
	v_mov_b16_e32 v43.l, v52.h
	v_mov_b32_e32 v44, v48
	ds_store_2addr_b64 v93, v[49:50], v[46:47] offset1:8
	ds_store_2addr_b64 v94, v[41:42], v[43:44] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v151
	ds_load_b128 v[52:55], v95
	ds_load_b128 v[115:118], v99
	ds_load_b128 v[111:114], v98
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v123, v127, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v125, v121, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v128, v122, s39, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v107
.Ltmp33:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v107, v110
.Ltmp34:
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v129, v120, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v130, v109, s39, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v40, v119, v126, v105
	v_perm_b32 v41, v119, v126, v106
	v_perm_b32 v42, v123, v127, v105
	v_perm_b32 v43, v123, v127, v106
	v_perm_b32 v44, v125, v121, v105
	v_perm_b32 v45, v125, v121, v106
	v_perm_b32 v46, v128, v122, v105
	v_perm_b32 v47, v128, v122, v106
.Ltmp35:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v107, v107 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp36:
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v23, v23, v108
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v59, v143
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v119, v129, v120, v105
	v_perm_b32 v120, v129, v120, v106
	v_perm_b32 v121, v130, v109, v105
	v_perm_b32 v122, v130, v109, v106
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[127:130], v151 offset:2048
	ds_load_b128 v[131:134], v95 offset:2048
	ds_load_b128 v[135:138], v96
	ds_load_b128 v[143:146], v96 offset:2048
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[48:55], v[40:47], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[48:51], v151 offset:1024
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[111:118], v[40:47], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[111:114], v98 offset:2048
	ds_load_b128 v[115:118], v99 offset:2048
	ds_load_b128 v[139:142], v97
	ds_load_b128 v[147:150], v97 offset:2048
	ds_load_b128 v[52:55], v100
	ds_load_b128 v[151:154], v151 offset:3072
	ds_load_b128 v[155:158], v100 offset:2048
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v56, v124, s39, 0xfedcba98 op_sel:[1,0]
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v9, v9, v108
	v_mul_f32_e32 v11, v11, v108
	v_mul_f32_e32 v13, v13, v108
	v_mul_f32_e32 v15, v15, v108
	v_mul_f32_e32 v1, v1, v108
	v_mul_f32_e32 v3, v3, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v123, v56, v124, v105
	v_perm_b32 v124, v56, v124, v106
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v5, v5, v108
	v_mul_f32_e32 v7, v7, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v56, v159, s39, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v108, v58
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[127:134], v[40:47], v[8:15]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[111:118], v[40:47], v[0:7]
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v125, v56, v159, v105
	v_perm_b32 v126, v56, v159, v106
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v56, 0, v59, s3
.Ltmp37:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v40, v110, v107 :: v_dual_mov_b32 v107, v57
.Ltmp38:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[135:142], v[119:126], v[24:31]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[48:55], v[119:126], v[16:23]
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v40, v84, v56
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[143:150], v[119:126], v[8:15]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[151:158], v[119:126], v[0:7]
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_e32 v84, v40
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v40, 0x80000000, v60, s29
	buffer_load_b128 v[40:43], v40, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v77, v[40:41]
	ds_store_b64 v82, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v125, v76, s[56:59], 0 offen
	buffer_load_u16 v124, v76, s[56:59], 0 offen offset:4
	buffer_load_u16 v123, v76, s[56:59], 0 offen offset:8
	buffer_load_u16 v122, v76, s[56:59], 0 offen offset:12
	buffer_load_u16 v121, v76, s[56:59], 0 offen offset:16
	buffer_load_u16 v120, v76, s[56:59], 0 offen offset:20
	buffer_load_u16 v119, v76, s[56:59], 0 offen offset:24
	buffer_load_u16 v118, v76, s[56:59], 0 offen offset:28
	buffer_load_u16 v117, v76, s[56:59], 0 offen offset:32
	buffer_load_u16 v116, v76, s[56:59], 0 offen offset:36
	buffer_load_u16 v115, v76, s[56:59], 0 offen offset:40
	buffer_load_u16 v114, v76, s[56:59], 0 offen offset:44
	buffer_load_u16 v113, v76, s[56:59], 0 offen offset:48
	buffer_load_u16 v112, v76, s[56:59], 0 offen offset:52
	buffer_load_u16 v111, v76, s[56:59], 0 offen offset:56
	buffer_load_u16 v110, v76, s[56:59], 0 offen offset:60
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[56:59], v83 offset1:1
	ds_load_2addr_stride64_b64 v[126:129], v85 offset1:1
	ds_load_2addr_stride64_b64 v[130:133], v86 offset1:1
	ds_load_2addr_stride64_b64 v[134:137], v87 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[56:57], v[61:62], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[58:59], v[61:62], v[32:39] neg_lo:[1,1,0]
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[126:127], v[65:66], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[128:129], v[65:66], v[40:47] neg_lo:[1,1,0]
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[130:131], v[63:64], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[132:133], v[63:64], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[134:135], v[67:68], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[136:137], v[67:68], v[40:47] neg_lo:[1,1,0]
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
	ds_bpermute_b32 v33, v73, v40
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
.Ltmp39:
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
		.amdhsa_next_free_vgpr 160
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
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_float32_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 160
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
; codeLenInByte = 10008
; TotalNumSgprs: 64
; NumVgprs: 160
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 160
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
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
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
    .vgpr_count:     160
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
