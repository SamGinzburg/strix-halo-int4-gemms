	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[48:51], s[0:1], 0x60
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
	s_add_i32 s5, s4, s14
	v_dual_mov_b32 v73, 0xff800000 :: v_dual_and_b32 v48, 15, v0
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v47
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	v_dual_mov_b32 v108, 0xff800000 :: v_dual_lshlrev_b32 v57, 1, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x20
	s_load_b128 s[44:47], s[0:1], 0x30
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v1, s48, v45
	s_mul_i32 s2, s48, s5
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s29, s48, v44
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s53, s37, 0xffff
	s_mov_b32 s52, s36
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v55, v0, 4, 1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 29
	.loc	1 773 26                        ; attention.py:773:26
	v_add3_u32 v1, v1, v44, s2
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s29
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v63, v57, 30, v55
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -8
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_bfe_i32 v61, v0, 3, 1
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v47, s13, v47
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 3
	s_and_b32 s39, s39, 0xffff
	.loc	1 774 26                        ; attention.py:774:26
	buffer_load_b128 v[40:43], v1, s[52:55], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v45, 16, v48
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s53, s43, 0xffff
	s_mov_b32 s52, s42
	.loc	1 818 13                        ; attention.py:818:13
	v_or_b32_e32 v45, s14, v45
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s51, s0
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v72, s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v1
	s_mov_b32 s4, 0
	s_movk_i32 s60, 0xffe0
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x200, v1
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v39, s11 :: v_dual_lshlrev_b32 v2, 1, v72
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v33, s5
	v_dual_mov_b32 v38, s10 :: v_dual_and_b32 v59, 24, v0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v31, v24 :: v_dual_and_b32 v54, 56, v0
	v_dual_mov_b32 v19, v24 :: v_dual_and_b32 v56, 1, v0
	buffer_load_u16 v49, v1, s[52:55], 0 offen
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v55, 1, v55
	v_mov_b32_e32 v13, v24
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v62, 1, v54
	v_xor_b32_e32 v59, v46, v59
	v_and_b32_e32 v46, 48, v46
	v_dual_mov_b32 v50, 0x6420 :: v_dual_mov_b32 v37, s9
	v_dual_mov_b32 v52, 0x5410 :: v_dual_mov_b32 v35, s7
	v_dual_mov_b32 v36, s8 :: v_dual_mov_b32 v25, v24
	v_dual_mov_b32 v34, s6 :: v_dual_mov_b32 v27, v24
	v_dual_mov_b32 v32, s4 :: v_dual_mov_b32 v29, v24
	v_dual_mov_b32 v23, v24 :: v_dual_lshlrev_b32 v60, 3, v0
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s4, s3, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v56
	v_dual_mov_b32 v21, v24 :: v_dual_and_b32 v58, 7, v0
	v_xor_b32_e32 v46, v46, v54
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_or_b32 v78, s3, 10, v55
	v_or_b32_e32 v55, s14, v62
	v_dual_mov_b32 v15, v24 :: v_dual_and_b32 v60, 48, v60
	v_dual_mov_b32 v1, v24 :: v_dual_lshlrev_b32 v76, 2, v63
	v_cndmask_b32_e64 v50, 0x7531, v50, s1
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v65, 24, v57
	v_lshl_or_b32 v82, v58, 9, v46
	v_or_b32_e32 v46, 3, v55
	v_dual_mov_b32 v28, v24 :: v_dual_and_b32 v61, 0x210, v61
	v_cndmask_b32_e64 v51, 0x6420, v51, s1
	v_lshl_or_b32 v50, v50, 8, v50
	v_lshl_or_b32 v54, v58, 6, v60
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v80, 4, v76
	.loc	1 872 27                        ; attention.py:872:27
	s_mul_i32 s5, s12, s4
	v_dual_mov_b32 v11, v24 :: v_dual_lshlrev_b32 v56, 6, v56
	v_lshl_or_b32 v48, v48, 5, v65
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v46, s49, v46
	s_add_i32 s0, s0, s5
	v_dual_mov_b32 v17, v24 :: v_dual_and_b32 v74, 16, v0
	v_dual_mov_b32 v3, v24 :: v_dual_and_b32 v50, 0x750031, v50
	v_lshl_or_b32 v51, v51, 8, v51
	v_xor_b32_e32 v83, v54, v61
	v_mad_u64_u32 v[60:61], null, s48, v45, v[44:45]
	v_add3_u32 v91, s0, v47, v44
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v79, 0, v59
	v_dual_mov_b32 v20, v24 :: v_dual_add_nc_u32 v85, 0, v48
	v_xor_b32_e32 v63, 8, v59
	v_and_or_b32 v77, v57, 60, v56
	v_xor_b32_e32 v56, 8, v48
	v_xor_b32_e32 v57, 16, v48
	v_xor_b32_e32 v59, 24, v48
	v_mul_lo_u32 v48, s49, v55
	v_dual_mov_b32 v4, v24 :: v_dual_lshlrev_b32 v103, 1, v46
	v_mov_b32_e32 v7, v24
	v_lshl_or_b32 v45, v50, 4, v50
	v_and_b32_e32 v50, 0x750031, v51
	v_xor_b32_e32 v51, 0x90, v82
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v74
	v_dual_mov_b32 v10, v24 :: v_dual_lshlrev_b32 v93, 1, v48
	v_and_b32_e32 v90, 0x7050301, v45
	v_lshl_or_b32 v45, v50, 4, v50
	.loc	1 818 13                        ; attention.py:818:13
	v_add_lshl_u32 v92, v48, s49, 1
	v_add_nc_u32_e32 v94, 0, v51
	v_cndmask_b32_e64 v50, 0x1054, v52, s0
	v_cndmask_b32_e64 v51, 0x3276, v53, s0
	v_dual_mov_b32 v9, v24 :: v_dual_lshlrev_b32 v64, 3, v58
	v_dual_mov_b32 v5, v24 :: v_dual_add_nc_u32 v84, 0, v63
	v_dual_mov_b32 v6, v24 :: v_dual_and_b32 v105, 0x7050301, v45
	v_mov_b32_e32 v86, v24
	v_xor_b32_e32 v61, 16, v83
	v_xor_b32_e32 v63, 48, v83
	v_or_b32_e32 v54, 2, v55
	v_mov_b32_e32 v14, v24
	v_mov_b32_e32 v0, v24
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s49, v64
	v_xor_b32_e32 v62, 32, v83
	v_xor_b32_e32 v64, 0x420, v83
	v_add_nc_u32_e32 v97, 0, v61
	v_add_nc_u32_e32 v99, 0, v63
	.loc	1 818 13                        ; attention.py:818:13
	v_mul_lo_u32 v54, s49, v54
	v_dual_mov_b32 v16, v24 :: v_dual_lshlrev_b32 v75, 4, v58
	v_xor_b32_e32 v55, 0x120, v82
	v_xor_b32_e32 v58, 0x1b0, v82
	v_xor_b32_e32 v65, 0x430, v83
	v_xor_b32_e32 v66, 0x410, v83
	v_add_nc_u32_e32 v98, 0, v62
	v_add_nc_u32_e32 v100, 0, v64
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s3, s50, 0x3fb8aa3b
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v87, 0, v56
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v89, 0, v59
	v_dual_mov_b32 v12, v24 :: v_dual_add_nc_u32 v95, 0, v55
	v_dual_mov_b32 v2, v24 :: v_dual_add_nc_u32 v101, 0, v65
	v_xor_b32_e32 v81, 64, v77
	v_dual_mov_b32 v107, 0xff800000 :: v_dual_add_nc_u32 v88, 0, v57
	v_add_nc_u32_e32 v96, 0, v58
	v_add_nc_u32_e32 v102, 0, v66
	.loc	1 818 13                        ; attention.py:818:13
	v_lshlrev_b32_e32 v104, 1, v54
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	s_and_b32 s57, s57, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_lshl_b32 s50, s49, 6
	s_lshl_b32 s48, s48, 5
	s_mov_b32 s52, s38
	s_mov_b32 s53, s39
	s_mov_b32 s39, 0x76543210
	s_mov_b32 s42, s54
	s_mov_b32 s43, s55
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v44, v76, v40
	ds_bpermute_b32 v40, v80, v40
	ds_bpermute_b32 v46, v76, v41
	ds_bpermute_b32 v41, v80, v41
	ds_bpermute_b32 v47, v76, v42
	ds_bpermute_b32 v42, v80, v42
	ds_bpermute_b32 v48, v76, v43
	ds_bpermute_b32 v43, v80, v43
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v61, v40, v44, s0
	v_cndmask_b32_e64 v63, v44, v40, s0
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v62, v41, v46, s0
	v_cndmask_b32_e64 v64, v46, v41, s0
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v65, v42, v47, s0
	v_cndmask_b32_e64 v67, v47, v42, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v66, v43, v48, s0
	v_cndmask_b32_e64 v68, v48, v43, s0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v45, 16, v49
	v_lshl_or_b32 v49, v50, 8, v50
	v_lshl_or_b32 v50, v51, 8, v51
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v40, 0x540054, v49
	v_and_b32_e32 v44, 0x760076, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v40, v40, 4, v40
	v_lshl_or_b32 v41, v44, 4, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 843 41                        ; attention.py:843:41
	v_dual_mul_f32 v106, s3, v45 :: v_dual_and_b32 v69, 0x5040504, v40
	v_and_b32_e32 v70, 0x7060706, v41
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 41 is_stmt 0                ; attention.py:0:41
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_mov_b16_e32 v71.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v110.h, v109.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v109, v43
	v_cvt_f32_i32_e32 v127, v44
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v43, 8, v56
	v_lshrrev_b32_e32 v44, 8, v58
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v125, 8, v57
	v_lshrrev_b32_e32 v126, 8, v59
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v114.h, v113.l
	v_mov_b16_e32 v113.l, v71.l
	v_mov_b16_e32 v113.h, v112.l
	v_mov_b16_e32 v112.l, v71.l
	v_mov_b16_e32 v112.h, v111.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v42
	v_mul_f32_e32 v129, v106, v40
	v_mul_f32_e32 v130, v106, v41
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v40.l, 0xff, v56.l
	v_and_b16 v40.h, 0xff, v43.l
	v_and_b16 v41.l, 0xff, v56.h
	v_lshrrev_b32_e32 v56, 24, v56
	v_and_b16 v43.l, 0xff, v58.l
	v_and_b16 v43.h, 0xff, v44.l
	v_and_b16 v44.l, 0xff, v58.h
	v_lshrrev_b32_e32 v58, 24, v58
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v128, v45
	v_mul_f32_e32 v131, v106, v42
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v41.h, 0xff, v57.l
	v_and_b16 v42.l, 0xff, v125.l
	v_and_b16 v42.h, 0xff, v57.h
	v_lshrrev_b32_e32 v57, 24, v57
	v_and_b16 v44.h, 0xff, v59.l
	v_and_b16 v45.l, 0xff, v126.l
	v_and_b16 v45.h, 0xff, v59.h
	v_lshrrev_b32_e32 v59, 24, v59
	v_cmp_ne_u16_e64 s3, 0, v40.l
	v_cmp_ne_u16_e64 s5, 0, v40.h
	v_cmp_ne_u16_e64 s8, 0, v56.l
	v_cmp_ne_u16_e64 s15, 0, v44.l
	v_cmp_ne_u16_e64 s16, 0, v58.l
	v_cmp_ne_u16_e64 s6, 0, v41.l
	v_cmp_ne_u16_e64 s18, 0, v42.l
	v_cmp_ne_u16_e64 s20, 0, v57.l
	v_cmp_ne_u16_e64 s12, 0, v43.l
	v_cmp_ne_u16_e64 s14, 0, v43.h
	v_cmp_ne_u16_e64 s22, 0, v44.h
	v_cmp_ne_u16_e64 s23, 0, v45.l
	v_cmp_ne_u16_e64 s25, 0, v59.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s7, vcc_lo, s3
	s_and_b32 s9, vcc_lo, s5
	s_and_b32 s13, vcc_lo, s8
	s_and_b32 s15, vcc_lo, s15
	s_and_b32 s16, vcc_lo, s16
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s10, 0, v41.h
	v_cmp_ne_u16_e64 s19, 0, v42.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v44, 0, 1, s7
	v_cndmask_b32_e64 v41, 0, 1, s9
	v_cndmask_b32_e64 v40, 0, 1, s13
	v_cndmask_b32_e64 v57, 0, 1, s15
	v_cndmask_b32_e64 v42, 0, 1, s16
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s24, 0, v45.h
	.loc	1 877 25                        ; attention.py:877:25
	s_and_b32 s11, vcc_lo, s6
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s21, vcc_lo, s20
	s_and_b32 s20, vcc_lo, s22
	s_and_b32 s22, vcc_lo, s23
	s_and_b32 s25, vcc_lo, s25
	v_cndmask_b32_e64 v43, 0, 1, s11
	v_cndmask_b32_e64 v45, 0, 1, s12
	v_cndmask_b32_e64 v56, 0, 1, s14
	v_cndmask_b32_e64 v59, 0, 1, s18
	v_cndmask_b32_e64 v126, 0, 1, s21
	v_cndmask_b32_e64 v133, 0, 1, s22
	v_cndmask_b32_e64 v135, 0, 1, s25
	v_lshlrev_b16 v40.l, 8, v40.l
	v_lshlrev_b16 v40.h, 8, v41.l
	v_mov_b16_e32 v41.l, v44.l
	v_lshlrev_b16 v41.h, 8, v42.l
	v_mov_b16_e32 v42.l, v57.l
	s_and_b32 s17, vcc_lo, s10
	s_and_b32 s19, vcc_lo, s19
	s_and_b32 s23, vcc_lo, s24
	v_cndmask_b32_e64 v58, 0, 1, s17
	v_cndmask_b32_e64 v125, 0, 1, s19
	v_cndmask_b32_e64 v132, 0, 1, s20
	v_cndmask_b32_e64 v134, 0, 1, s23
	v_mov_b16_e32 v44.l, v56.l
	v_or_b16 v56.h, v43.l, v40.l
	v_or_b16 v56.l, v41.l, v40.h
	v_mov_b16_e32 v40.l, v126.l
	v_or_b16 v57.h, v42.l, v41.h
	v_mov_b16_e32 v41.l, v45.l
	v_mov_b16_e32 v42.l, v59.l
	v_mov_b16_e64 v43.l, v135.l
	v_mov_b16_e64 v45.l, v133.l
	v_lshlrev_b16 v40.h, 8, v44.l
	v_lshlrev_b16 v40.l, 8, v40.l
	v_mov_b16_e32 v44.l, v125.l
	v_lshlrev_b16 v41.h, 8, v42.l
	v_mov_b16_e32 v42.l, v58.l
	v_lshlrev_b16 v42.h, 8, v43.l
	v_mov_b16_e64 v43.l, v134.l
	v_lshlrev_b16 v43.h, 8, v45.l
	v_mov_b16_e64 v45.l, v132.l
	v_or_b16 v57.l, v41.l, v40.h
	v_or_b16 v40.h, v44.l, v40.l
	v_or_b16 v40.l, v42.l, v41.h
	v_or_b16 v41.h, v43.l, v42.h
	v_or_b16 v41.l, v45.l, v43.h
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v115.h, v114.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v44, v40, v56, v90
	v_perm_b32 v40, v40, v56, v105
	v_perm_b32 v45, v41, v57, v90
	v_perm_b32 v41, v41, v57, v105
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v114.l, v71.l
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v44, v76, v44
	ds_bpermute_b32 v40, v80, v40
	ds_bpermute_b32 v45, v76, v45
	ds_bpermute_b32 v41, v80, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v111.h, v110.l
	v_mov_b16_e32 v110.l, v71.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v42, v106, v109
	v_mul_f32_e32 v47, v106, v47
	v_mul_f32_e32 v43, v106, v127
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v46, v46
	v_mul_f32_e32 v114, v42, v114
	v_mul_f32_e32 v110, v47, v110
	v_mul_f32_e32 v42, v43, v113
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v119.h, v118.l
	v_mov_b16_e32 v118.l, v71.l
	v_mov_b16_e32 v118.h, v117.l
	v_mov_b16_e32 v117.l, v71.l
	v_mov_b16_e32 v117.h, v116.l
	v_mov_b16_e32 v111.l, v71.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v54, v54
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v113, v41, v45, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v56, v106, v128
	v_mul_f32_e32 v55, v106, v55
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v124.h, v122.l
	v_mov_b16_e32 v122.l, v71.l
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v47, 0x100, v113
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v43, v56, v112
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v112, v40, v44, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v106, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v122.h, v121.l
	v_mov_b16_e32 v121.l, v71.l
	v_mov_b16_e32 v121.h, v120.l
	v_mov_b16_e32 v120.h, v119.l
	v_mov_b16_e32 v119.l, v71.l
	v_mov_b16_e32 v116.h, v115.l
	v_mov_b16_e32 v115.l, v71.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v48, v48
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v53, v53
	v_dual_mul_f32 v52, v106, v52 :: v_dual_mul_f32 v109, v55, v118
	v_mul_f32_e32 v51, v106, v51
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v44, v44, v40, s0
	v_cndmask_b32_e64 v40, v45, v41, s0
	v_and_b32_e32 v45, 0x100, v112
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v111, v46, v111 :: v_dual_and_b32 v46, 1, v113
	v_dual_mul_f32 v54, v106, v54 :: v_dual_mul_f32 v115, v131, v115
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v71.h, v124.l
	v_mov_b16_e32 v123.h, v123.l
	v_mov_b16_e32 v123.l, v71.l
	v_mov_b16_e32 v124.l, v71.l
	v_mov_b16_e32 v120.l, v71.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v49, v106, v49
	v_mul_f32_e32 v48, v106, v48
	v_dual_mul_f32 v53, v106, v53 :: v_dual_mul_f32 v58, v51, v122
	v_mul_f32_e32 v50, v106, v50
	v_dual_mul_f32 v59, v54, v119 :: v_dual_and_b32 v56, 1, v40
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v41, 1, v112
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v49, v123 :: v_dual_and_b32 v54, 1, v44
	v_dual_mul_f32 v48, v48, v71 :: v_dual_mul_f32 v51, v53, v120
	v_dual_mul_f32 v57, v50, v124 :: v_dual_mul_f32 v50, v52, v121
	v_mul_f32_e32 v52, v129, v117
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 1, v41
	v_cmp_eq_u32_e64 s8, 1, v54
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v116.l, v71.l
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s6, 1, v56
	v_and_b32_e32 v55, 0x100, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v117, 0xff800000, v48, s27
	v_cndmask_b32_e64 v120, 0xff800000, v52, s8
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v53, v130, v116
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v116, 0x100, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v42, s6
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s28, 0, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, v117, v120, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s24, 1, v46
	v_cmp_eq_u32_e64 s26, 0, v47
	v_cmp_eq_u32_e64 s10, 0, v55
	v_cmp_eq_u32_e64 s5, 0, v116
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v125, v81, v42
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v132, 0x10000, v40
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v118, v49, 0xff800000, s28
	v_cndmask_b32_e64 v119, 0xff800000, v50, s24
	v_cndmask_b32_e64 v121, v51, 0xff800000, s26
	v_cndmask_b32_e64 v116, v43, 0xff800000, s5
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s3, 0, v132
	v_and_b32_e32 v132, 0x10000, v113
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v122, v53, 0xff800000, s10
	v_cndmask_b32_e64 v41, v120, v117, s0
	v_cndmask_b32_e64 v46, v123, v119, s0
	v_cndmask_b32_e64 v47, v119, v123, s0
	v_cndmask_b32_e64 v48, v116, v121, s0
	v_cndmask_b32_e64 v43, v122, v118, s0
	v_cndmask_b32_e64 v45, v118, v122, s0
	v_cndmask_b32_e64 v49, v121, v116, s0
	ds_bpermute_b32 v124, v77, v41
	ds_bpermute_b32 v128, v77, v46
	ds_bpermute_b32 v126, v77, v43
	ds_bpermute_b32 v127, v81, v45
	ds_bpermute_b32 v129, v81, v47
	ds_bpermute_b32 v130, v77, v48
	ds_bpermute_b32 v131, v81, v49
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v41, v93, v75
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v134, 0x10000, v44
	v_and_b32_e32 v113, 0x1000000, v113
	v_and_b32_e32 v44, 0x1000000, v44
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v42, v92, v75
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s33, 0, v132
	v_cmp_eq_u32_e64 s31, 0, v134
	v_cmp_eq_u32_e64 s34, 0, v113
	v_cmp_eq_u32_e64 s35, 0, v44
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v111, v111, 0xff800000, s3
	v_cndmask_b32_e64 v132, v59, 0xff800000, s33
	v_cndmask_b32_e64 v115, v115, 0xff800000, s31
	v_cndmask_b32_e64 v109, v109, 0xff800000, s34
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(6)
	v_max_f32_e32 v138, v124, v124
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, v114, 0xff800000, s35
	v_cndmask_b32_e64 v59, v111, v132, s0
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v137, v127, v126, s1
	v_cndmask_b32_e64 v126, v126, v127, s1
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v127, v129, v128, s1
	v_cndmask_b32_e64 v128, v128, v129, s1
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v129, v131, v130, s1
	v_cndmask_b32_e64 v130, v130, v131, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v131, v125, v125
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v133, 0x1000000, v40
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v59, v77, v59
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_dual_max_f32 v142, v117, v118 :: v_dual_add_nc_u32 v43, v104, v75
.Ltmp6:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v41, 0x80000000, v41, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 0, v133
	v_and_b32_e32 v133, 0x10000, v112
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v42, 0x80000000, v42, s4
	v_cndmask_b32_e64 v46, 0x80000000, v43, s4
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v108
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v110, v110, 0xff800000, s30
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s36, 0, v133
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v132, v111, s0
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v78, 64, v78
	v_add_nc_u32_e32 v60, s48, v60
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, v109, v110, s0
	v_cndmask_b32_e64 v113, v57, 0xff800000, s36
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v57, 0x1000000, v112
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v112, v110, v109, s0
	ds_bpermute_b32 v133, v81, v133
	ds_bpermute_b32 v114, v81, v114
	v_cndmask_b32_e64 v134, v115, v113, s0
	v_cndmask_b32_e64 v135, v113, v115, s0
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s37, 0, v57
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v112, v77, v112
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s60, s60, 32
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v57, v77, v134
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s60, 0x1e0
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, v58, 0xff800000, s37
	ds_bpermute_b32 v58, v81, v135
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, v44, v136, s0
	v_cndmask_b32_e64 v135, v136, v44, s0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v143, v136, v119, v121
.Ltmp8:
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v134, v77, v134
	ds_bpermute_b32 v135, v81, v135
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v139, v114, v112, s1
	v_cndmask_b32_e64 v112, v112, v114, s1
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v114, v138, v131
	v_max3_f32 v138, v123, v116, v111
.Ltmp10:
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v140, v58, v57, s1
	v_cndmask_b32_e64 v141, v57, v58, s1
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v57, v128, v129, v130
	v_max3_f32 v58, v59, v133, v139
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v131, v126, v140, v141
	v_max3_f32 v57, v57, v58, v112
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v58, v134, v135, v127
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v114, v114, v137, v131
	v_max3_f32 v131, v122, v115, v44
	v_max3_f32 v57, v114, v58, v57
.Ltmp12:
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v45, v103, v75
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v131, v138, v110
	v_max3_f32 v114, v132, v109, v120
	v_max3_f32 v131, v142, v113, v143
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v138, v57
.Ltmp15:
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v45, 0x80000000, v45, s4
	s_clause 0x3
	buffer_load_b128 v[49:52], v41, s[40:43], 0 offen
	buffer_load_b128 v[40:43], v42, s[40:43], 0 offen
	buffer_load_b128 v[53:56], v46, s[40:43], 0 offen
	buffer_load_b128 v[45:48], v45, s[40:43], 0 offen
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v58, v131, v114, v58
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp18:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v143, v135, v134, s1
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v114, v58, s39, 0xfedcba98 op_sel:[1,0]
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v131, v138, v138
.Ltmp21:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, v125, v124, s1
	v_cndmask_b32_e64 v124, v124, v125, s1
	.loc	1 818 13                        ; attention.py:818:13
	v_add_nc_u32_e32 v75, s50, v75
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v58, v108, v58, v114
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v114, v57, v131
.Ltmp23:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v57, v107, v107 :: v_dual_sub_f32 v118, v118, v58
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v136, v136, v58
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v73, v73, v114
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v131, v108, v58
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v57, v57, v114
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, v134, v135, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v132, v132, v58
	v_sub_f32_e32 v134, v137, v73
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v125, v131
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v124, v124, v73
	v_sub_f32_e32 v126, v126, v73
	v_dual_sub_f32 v135, v140, v73 :: v_dual_sub_f32 v122, v122, v58
	v_sub_f32_e32 v137, v141, v73
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v124, v124
	v_exp_f32_e32 v134, v134
	v_exp_f32_e32 v126, v126
	v_exp_f32_e32 v135, v135
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v108, 0, v125, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v125, v138, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v137, v137
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v117, v117, v58
	v_sub_f32_e32 v113, v113, v58
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v131, v133, v59, s1
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v125, v125
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v124, s9
	v_cndmask_b32_e64 v134, 0, v134, s11
	v_cndmask_b32_e64 v126, 0, v126, s13
	v_cndmask_b32_e64 v135, 0, v135, s17
	.loc	1 882 26 is_stmt 1              ; attention.py:882:26
	v_cndmask_b32_e64 v133, v59, v133, s1
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v137, 0, v137, s18
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_sub_f32_e32 v119, v119, v58
	v_sub_f32_e32 v121, v121, v58
	v_sub_f32_e32 v109, v109, v58
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v125, s7
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v115, v115, v58
	v_sub_f32_e32 v120, v120, v58
	v_sub_f32_e32 v44, v44, v58
	v_sub_f32_e32 v116, v116, v58
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v124, v125, v124 :: v_dual_add_f32 v125, v134, v126
	v_add_f32_e32 v126, v135, v137
.Ltmp25:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v138, v143, v73
	v_sub_f32_e32 v114, v114, v73
	v_sub_f32_e32 v127, v127, v73
	v_sub_f32_e32 v128, v128, v73
	v_sub_f32_e32 v129, v129, v73
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v114, v114
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v130, v130, v73
	v_sub_f32_e32 v131, v131, v73
	v_dual_sub_f32 v133, v133, v73 :: v_dual_sub_f32 v110, v110, v58
	v_sub_f32_e32 v112, v112, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v127, v127
	v_exp_f32_e32 v128, v128
	v_exp_f32_e32 v129, v129
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v138, 0, v138, s19
	v_cndmask_b32_e64 v114, 0, v114, s21
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v139, v139, v73
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v130, v130
	v_exp_f32_e32 v131, v131
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v112, v112
.Ltmp26:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v114, v138, v114
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v139, v139
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v127, 0, v127, s12
	v_cndmask_b32_e64 v128, 0, v128, s14
	v_cndmask_b32_e64 v129, 0, v129, s15
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v109, v109
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v130, 0, v130, s16
	v_cndmask_b32_e64 v131, 0, v131, s20
	v_cndmask_b32_e64 v133, 0, v133, s22
	v_cndmask_b32_e64 v112, 0, v112, s25
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v127, v127, v128 :: v_dual_add_f32 v128, v129, v130
.Ltmp29:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v139, 0, v139, s23
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v129, v131, v133 :: v_dual_add_f32 v114, v126, v114
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v117, v117
	v_exp_f32_e32 v118, v118
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v139, v112
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v123, v123, v58 :: v_dual_add_f32 v124, v124, v125
	v_sub_f32_e32 v111, v111, v58
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v115, v115
.Ltmp34:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v125, v127, v128
	v_add_f32_e32 v112, v129, v112
.Ltmp35:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v128, v109, 0, s34
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v124, v114
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v113, v113
	v_exp_f32_e32 v136, v136
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v112, v125, v112
.Ltmp39:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v121, v121
	v_exp_f32_e32 v111, v111
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v114, v115, 0, s31
	v_cndmask_b32_e64 v115, 0, v117, s27
.Ltmp40:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v109, v109, v112
.Ltmp41:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v112, v118, 0, s28
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v118.h, v71.l
	v_mov_b16_e32 v117.h, v71.l
	v_mov_b16_e32 v118.l, v115.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v119, v119
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v117.l, v112.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, v113, 0, s36
	v_cndmask_b32_e64 v126, v136, 0, s37
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v118, 1, v118
	v_and_b32_e32 v117, 1, v117
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v132, v132
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v111, v111, 0, s3
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v112, v112
	v_add3_u32 v118, v115, v118, 0x7fff
	v_add3_u32 v117, v112, v117, 0x7fff
	v_cmp_o_f32_e64 s7, v115, v115
	v_mov_b16_e32 v112.l, v126.h
	v_mov_b16_e32 v112.h, v71.l
	v_mov_b16_e32 v115.l, v113.h
	v_mov_b16_e32 v115.h, v71.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, v121, 0, s26
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v120, v120
	v_exp_f32_e32 v122, v122
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v26, v26, v108 :: v_dual_and_b32 v115, 1, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v117.l, 0x7fff, v118.h, s7
	v_and_b32_e32 v112, 1, v112
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v118, 0, v119, s24
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v119.l, v121.h
	v_mov_b16_e32 v119.h, v71.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v127, v132, 0, s33
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v28, v28, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v117.h, 0x7fff, v117.h, s3
	v_add3_u32 v112, v126, v112, 0x7fff
	v_cmp_o_f32_e64 s3, v126, v126
	v_mov_b16_e32 v124.l, v118.h
	v_mov_b16_e32 v124.h, v71.l
	v_and_b32_e32 v119, 1, v119
	v_add3_u32 v115, v113, v115, 0x7fff
	v_cmp_o_f32_e64 s7, v113, v113
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v112.h, 0x7fff, v112.h, s3
	v_and_b32_e32 v113, 1, v124
	v_add3_u32 v119, v121, v119, 0x7fff
	v_cmp_o_f32_e64 s3, v121, v121
	v_cndmask_b16 v112.l, 0x7fff, v115.h, s7
	v_mov_b16_e32 v115.l, v127.h
	v_mov_b16_e32 v115.h, v71.l
	v_mov_b16_e64 v121.l, v128.h
	v_mov_b16_e32 v121.h, v71.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v122, v122, 0, s10
	v_cndmask_b32_e64 v120, 0, v120, s8
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v30, v30, v108 :: v_dual_and_b32 v115, 1, v115
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v113, v118, v113, 0x7fff
	v_cndmask_b16 v119.h, 0x7fff, v119.h, s3
	v_cmp_o_f32_e64 s3, v118, v118
	v_and_b32_e32 v118, 1, v121
	v_mov_b16_e32 v121.l, v122.h
	v_mov_b16_e32 v124.l, v120.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v123, v123
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v44, v44, 0, s35
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v16, v16, v108 :: v_dual_and_b32 v121, 1, v121
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v115, v127, v115, 0x7fff
	v_add3_u32 v118, v128, v118, 0x7fff
	v_cmp_o_f32_e64 s7, v128, v128
	v_cmp_o_f32_e64 s8, v127, v127
	v_and_b32_e32 v124, 1, v124
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v116, v116
	v_exp_f32_e32 v110, v110
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v119.l, 0x7fff, v113.h, s3
	v_cndmask_b16 v113.h, 0x7fff, v118.h, s7
	v_cndmask_b16 v113.l, 0x7fff, v115.h, s8
	v_add3_u32 v115, v120, v124, 0x7fff
	v_add3_u32 v118, v122, v121, 0x7fff
	v_mov_b16_e32 v121.l, v44.h
	v_mov_b16_e32 v121.h, v71.l
	v_cmp_o_f32_e64 s7, v120, v120
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v18, v18, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s3, v122, v122
	v_mov_b16_e32 v120.l, v114.h
	v_mov_b16_e32 v120.h, v71.l
	v_and_b32_e32 v121, 1, v121
	v_cndmask_b16 v122.l, 0x7fff, v115.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v123, s6
	v_cndmask_b32_e64 v110, v110, 0, s30
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v122.h, 0x7fff, v118.h, s3
	v_and_b32_e32 v118, 1, v120
	v_add3_u32 v120, v44, v121, 0x7fff
	v_cmp_o_f32_e64 s3, v44, v44
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v44, v116, 0, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v116.l, v115.h
	v_mov_b16_e32 v116.h, v71.l
	v_mov_b16_e32 v123.l, v110.h
	v_cndmask_b16 v121.h, 0x7fff, v120.h, s3
	v_mov_b16_e32 v120.l, v44.h
	v_mov_b16_e32 v120.h, v71.l
	v_and_b32_e32 v116, 1, v116
	v_mov_b16_e32 v124.l, v111.h
	v_mov_b16_e32 v124.h, v71.l
	v_mov_b16_e32 v123.h, v71.l
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v20, v20, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v118, v114, v118, 0x7fff
	v_and_b32_e32 v120, 1, v120
	v_cmp_o_f32_e64 s3, v114, v114
	v_add3_u32 v114, v115, v116, 0x7fff
	v_and_b32_e32 v116, 1, v124
	v_and_b32_e32 v123, 1, v123
	v_add3_u32 v120, v44, v120, 0x7fff
	v_cmp_o_f32_e64 s5, v44, v44
	v_cmp_o_f32_e64 s6, v115, v115
	v_add3_u32 v44, v111, v116, 0x7fff
	v_add3_u32 v115, v110, v123, 0x7fff
	v_cmp_o_f32_e64 s7, v110, v110
	v_cmp_o_f32_e64 s8, v111, v111
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v22, v22, v108
	v_mul_f32_e32 v31, v31, v108
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v121.l, 0x7fff, v118.h, s3
	v_cndmask_b16 v123.l, 0x7fff, v114.h, s6
	v_cndmask_b16 v125.l, 0x7fff, v44.h, s8
	v_cndmask_b16 v125.h, 0x7fff, v115.h, s7
	v_permlanex16_b32 v114, v117, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v115, v112, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v116, v119, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v118, v113, s39, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v142, v107, v57
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v123.h, 0x7fff, v120.h, s5
	v_permlanex16_b32 v120, v122, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v124, v121, s39, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v127, v125, s39, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v59, v142
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v126, v123, s39, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v107
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v19, v19, v108
	v_mul_f32_e32 v21, v21, v108
	v_mul_f32_e32 v23, v23, v108
	v_mul_f32_e32 v9, v9, v108
	v_mul_f32_e32 v10, v10, v108
	v_mul_f32_e32 v11, v11, v108
	v_dual_mul_f32 v12, v12, v108 :: v_dual_mov_b32 v107, v57
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e64 v59, 0, v59, s3
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v17, v17, v108
	v_mul_f32_e32 v13, v13, v108
	v_mul_f32_e32 v14, v14, v108
	v_mul_f32_e32 v15, v15, v108
	v_mul_f32_e32 v0, v0, v108
	v_mul_f32_e32 v1, v1, v108
	v_mul_f32_e32 v2, v2, v108
	v_mul_f32_e32 v3, v3, v108
	v_mul_f32_e32 v4, v4, v108
	v_mul_f32_e32 v5, v5, v108
	v_mul_f32_e32 v6, v6, v108
	v_mul_f32_e32 v7, v7, v108
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(3)
	v_mov_b16_e32 v110.l, v49.l
	s_waitcnt vmcnt(2)
	v_mov_b16_e32 v110.h, v40.l
	v_mov_b16_e32 v40.l, v49.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v108
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(1)
	v_mov_b16_e32 v111.l, v53.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v111.h, v45.l
	v_add_nc_u32_e32 v49, 0, v82
	v_mov_b16_e32 v45.l, v53.h
	v_mov_b32_e32 v44, v40
	v_mov_b16_e32 v53.l, v52.l
	v_mov_b16_e32 v53.h, v43.l
	v_mov_b16_e32 v43.l, v52.h
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v40, v114, v117, v69
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v49, v[110:111], v[44:45] offset1:8
	v_mov_b16_e32 v110.h, v41.l
	v_mov_b16_e32 v41.l, v50.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v108
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b16_e32 v111.l, v54.l
	v_mov_b16_e32 v111.h, v46.l
	v_mov_b16_e32 v110.l, v50.l
	v_mov_b16_e32 v46.l, v54.h
	v_mov_b32_e32 v45, v41
	v_mov_b16_e32 v49.h, v42.l
	v_mov_b16_e32 v42.l, v51.h
	v_mov_b16_e32 v54.h, v48.l
	v_mov_b16_e32 v48.l, v56.h
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v108
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_2addr_b64 v94, v[110:111], v[45:46] offset1:8
	v_mov_b16_e32 v50.l, v55.l
	v_mov_b16_e32 v50.h, v47.l
	v_mov_b16_e32 v49.l, v51.l
	v_mov_b16_e32 v47.l, v55.h
	v_mov_b32_e32 v46, v42
	v_mov_b16_e32 v54.l, v56.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v29, v29, v108 :: v_dual_add_nc_u32 v56, 0, v83
	.loc	1 890 30                        ; attention.py:890:30
	v_mov_b32_e32 v44, v48
	ds_store_2addr_b64 v95, v[49:50], v[46:47] offset1:8
	ds_store_2addr_b64 v96, v[53:54], v[43:44] offset1:8
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v56
	ds_load_b128 v[52:55], v97
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v41, v114, v117, v70
	v_perm_b32 v42, v115, v112, v69
	v_perm_b32 v43, v115, v112, v70
	v_perm_b32 v44, v116, v119, v69
	v_perm_b32 v45, v116, v119, v70
	v_perm_b32 v46, v118, v113, v69
	v_perm_b32 v47, v118, v113, v70
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[114:117], v101
	ds_load_b128 v[110:113], v100
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v118, v120, v122, v69
	v_perm_b32 v119, v120, v122, v70
	v_perm_b32 v120, v124, v121, v69
	v_perm_b32 v121, v124, v121, v70
	v_perm_b32 v122, v126, v123, v69
	v_perm_b32 v123, v126, v123, v70
	v_perm_b32 v124, v127, v125, v69
	v_perm_b32 v125, v127, v125, v70
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[126:129], v56 offset:2048
	ds_load_b128 v[130:133], v97 offset:2048
	ds_load_b128 v[134:137], v98
	ds_load_b128 v[142:145], v98 offset:2048
	ds_load_b128 v[150:153], v56 offset:1024
	v_mov_b32_e32 v108, v58
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(7)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[48:55], v[40:47], v[24:31]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[48:51], v100 offset:2048
	ds_load_b128 v[52:55], v101 offset:2048
	ds_load_b128 v[138:141], v99
	ds_load_b128 v[146:149], v99 offset:2048
	ds_load_b128 v[154:157], v102
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[110:117], v[40:47], v[16:23]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[110:113], v56 offset:3072
	ds_load_b128 v[114:117], v102 offset:2048
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v56, v109
.Ltmp43:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[8:15], v[126:133], v[40:47], v[8:15]
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[48:55], v[40:47], v[0:7]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[134:141], v[118:125], v[24:31]
.Ltmp46:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v40, v109, v56
.Ltmp47:
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[150:157], v[118:125], v[16:23]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[142:149], v[118:125], v[8:15]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v40, v86, v59
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[110:117], v[118:125], v[0:7]
	v_mov_b32_e32 v86, v40
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v40, 0x80000000, v60, s29
	buffer_load_b128 v[40:43], v40, s[52:55], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(0)
	ds_store_b64 v79, v[40:41]
	ds_store_b64 v84, v[42:43]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v124, v78, s[56:59], 0 offen
	buffer_load_u16 v123, v78, s[56:59], 0 offen offset:4
	buffer_load_u16 v122, v78, s[56:59], 0 offen offset:8
	buffer_load_u16 v121, v78, s[56:59], 0 offen offset:12
	buffer_load_u16 v120, v78, s[56:59], 0 offen offset:16
	buffer_load_u16 v119, v78, s[56:59], 0 offen offset:20
	buffer_load_u16 v118, v78, s[56:59], 0 offen offset:24
	buffer_load_u16 v117, v78, s[56:59], 0 offen offset:28
	buffer_load_u16 v116, v78, s[56:59], 0 offen offset:32
	buffer_load_u16 v115, v78, s[56:59], 0 offen offset:36
	buffer_load_u16 v114, v78, s[56:59], 0 offen offset:40
	buffer_load_u16 v113, v78, s[56:59], 0 offen offset:44
	buffer_load_u16 v112, v78, s[56:59], 0 offen offset:48
	buffer_load_u16 v111, v78, s[56:59], 0 offen offset:52
	buffer_load_u16 v110, v78, s[56:59], 0 offen offset:56
	buffer_load_u16 v109, v78, s[56:59], 0 offen offset:60
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[56:59], v85 offset1:1
	ds_load_2addr_stride64_b64 v[125:128], v87 offset1:1
	ds_load_2addr_stride64_b64 v[129:132], v88 offset1:1
	ds_load_2addr_stride64_b64 v[133:136], v89 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[56:57], v[61:62], v[32:39] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[58:59], v[61:62], v[32:39] neg_lo:[1,1,0]
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[125:126], v[65:66], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[127:128], v[65:66], v[40:47] neg_lo:[1,1,0]
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v59, 0
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[129:130], v[63:64], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[131:132], v[63:64], v[40:47] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[48:55], v[133:134], v[67:68], v[48:55] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[40:47], v[135:136], v[67:68], v[40:47] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	v_add3_u32 v56, v91, s60, 32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v57, 31, v56
	v_add_co_u32 v56, s3, s44, v56
	v_add_co_ci_u32_e64 v57, null, s45, v57, s3
	global_load_b128 v[56:59], v[56:57], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 818 13                        ; attention.py:818:13
	ds_bpermute_b32 v37, v76, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v71.l
	v_mov_b16_e32 v40.h, v71.l
	v_mov_b16_e32 v38.h, v71.l
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v74
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s49, v72
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s49, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v33
	v_or_b32_e32 v35, 16, v33
	v_or_b32_e32 v34, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s49, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s3, s49, v35
	v_cmp_gt_i32_e64 s1, s49, v34
	.loc	1 1044 48                       ; attention.py:1044:48
	s_waitcnt lgkmcnt(0)
	v_div_scale_f32 v41, null, v37, v37, v25
	v_div_scale_f32 v42, null, v37, v37, v24
	v_div_scale_f32 v43, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v45, v41
	v_rcp_f32_e32 v46, v42
	v_div_scale_f32 v44, null, v37, v37, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v47, v43
	v_div_scale_f32 v49, vcc_lo, v25, v37, v25
	v_rcp_f32_e32 v48, v44
	v_div_scale_f32 v50, s6, v24, v37, v24
	v_fma_f32 v52, -v41, v45, 1.0
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v53, -v42, v46, 1.0
	v_div_scale_f32 v51, s7, v27, v37, v27
	v_fma_f32 v54, -v43, v47, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v45, v52, v45 :: v_dual_fmac_f32 v46, v53, v46
	v_fma_f32 v55, -v44, v48, 1.0
	v_div_scale_f32 v52, null, v37, v37, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v53, v49, v45
	v_dual_fmac_f32 v47, v54, v47 :: v_dual_fmac_f32 v48, v55, v48
	v_mul_f32_e32 v54, v50, v46
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v58, v52
	v_fma_f32 v59, -v41, v53, v49
	v_div_scale_f32 v63, null, v37, v37, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v60, -v42, v54, v50
	v_mul_f32_e32 v55, v51, v47
	v_fmac_f32_e32 v53, v59, v45
	v_div_scale_f32 v56, s8, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v54, v60, v46
	v_fma_f32 v59, -v52, v58, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v41, -v41, v53, v49
	v_rcp_f32_e32 v49, v63
	v_mul_f32_e32 v57, v56, v48
	v_fma_f32 v42, -v42, v54, v50
	v_fma_f32 v61, -v43, v55, v51
	v_div_fmas_f32 v41, v41, v45, v53
	s_mov_b32 vcc_lo, s6
	v_fmac_f32_e32 v58, v59, v58
	v_div_fmas_f32 v42, v42, v46, v54
	v_fma_f32 v62, -v44, v57, v56
	v_fmac_f32_e32 v55, v61, v47
	v_div_fixup_f32 v25, v41, v37, v25
	.loc	1 1044 28 is_stmt 0             ; attention.py:1044:28
	v_cmp_lt_f32_e64 s6, 0, v37
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v42, v37, v24
	v_fma_f32 v42, -v63, v49, 1.0
	v_fma_f32 v43, -v43, v55, v51
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v25, 0, v25, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v45, s9, v29, v37, v29
	v_fmac_f32_e32 v49, v42, v49
	v_fmac_f32_e32 v57, v62, v48
	v_div_fmas_f32 v41, v43, v47, v55
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v25.h
	v_mov_b16_e32 v47.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v44, v57, v56
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v43, v44, v48, v57
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v44, 0, v24, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v24, v41, v37, v27
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v27, 1, v38
	v_cmp_o_f32_e32 vcc_lo, v25, v25
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v26, v43, v37, v26
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v44.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v38, 0, v24, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v25, v27, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v45, v58
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v26, 0, v26, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v24, 1, v39
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v39, s7, v28, v37, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v25.l, v38.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v40.l, v26.h
	v_add3_u32 v27, v44, v24, 0x7fff
	v_cndmask_b16 v24.h, 0x7fff, v25.h, vcc_lo
	v_mov_b16_e32 v25.h, v71.l
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_and_b32_e32 v40, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v39, v49
	v_fma_f32 v43, -v52, v41, v45
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v25, 1, v25
	v_cndmask_b16 v24.l, 0x7fff, v27.h, vcc_lo
	v_add3_u32 v27, v26, v40, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v63, v42, v39
	v_fmac_f32_e32 v41, v43, v58
	v_div_scale_f32 v43, null, v37, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v25, v38, v25, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v40, v49
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v38, v38
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v38, v43
	v_fma_f32 v44, -v52, v41, v45
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v39, -v63, v42, v39
	v_div_scale_f32 v40, null, v37, v37, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v41, v44, v58, v41
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.h, 0x7fff, v25.h, s8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v39, v39, v49, v42
	v_fma_f32 v42, -v43, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v26, v26
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v45, v40
	v_div_fixup_f32 v29, v41, v37, v29
	v_div_fixup_f32 v28, v39, v37, v28
	v_fmac_f32_e32 v38, v42, v38
	v_div_scale_f32 v39, s7, v31, v37, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v25.l, 0x7fff, v27.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v27, v39, v38
	v_fma_f32 v26, -v40, v45, 1.0
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v28, 0, v28, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v42.h, v71.l
	v_mov_b16_e32 v47.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v44, -v43, v27, v39
	v_fmac_f32_e32 v45, v26, v45
	v_div_scale_f32 v26, s8, v30, v37, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v42.l, v28.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v27, v44, v38
	v_div_scale_f32 v44, null, v37, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s9, v28, v28
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v43, v27, v39
	v_div_scale_f32 v43, null, v37, v37, v16
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v42, v28, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v27, v39, v38, v27
	v_rcp_f32_e32 v38, v43
	v_mul_f32_e32 v41, v26, v45
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v27, v27, v37, v31
	v_fma_f32 v46, -v40, v41, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v27, 0, v27, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v41, v46, v45 :: v_dual_and_b32 v46, 1, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cmp_o_f32_e64 s10, v27, v27
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v26, -v40, v41, v26
	v_rcp_f32_e32 v40, v44
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v29, v46, 0x7fff
	v_mov_b16_e32 v39.l, v27.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v44, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v31, v40
	v_div_fmas_f32 v26, v26, v45, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v43, v38, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v45.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v29, v26, v37, v30
	v_div_scale_f32 v30, s7, v17, v37, v17
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v26.h, 0x7fff, v39.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v38, v31, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v29, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v41, v30, v40
	v_div_scale_f32 v31, s8, v16, v37, v16
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v71.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v45.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v46, -v44, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v47, v31, v38
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v28, 1, v39
	v_cmp_o_f32_e64 s7, v29, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v41, v46, v40
	v_div_scale_f32 v46, null, v37, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v27, v28, 0x7fff
	v_cndmask_b16 v26.l, 0x7fff, v42.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v27, -v44, v41, v30
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v30, v46
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v45
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v45, -v43, v47, v31
	v_div_scale_f32 v44, null, v37, v37, v18
	v_div_fmas_f32 v40, v27, v40, v41
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v47, v45, v38
	v_rcp_f32_e32 v41, v44
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v40, v37, v17
	s_mov_b32 s10, 0x7ffffffe
	v_fma_f32 v31, -v43, v47, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v43.h, v71.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fmas_f32 v31, v31, v38, v47
	v_fma_f32 v38, -v46, v30, 1.0
	v_div_scale_f32 v28, vcc_lo, v19, v37, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v43.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v16, v31, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v38, v30
	v_fma_f32 v31, -v44, v41, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v29, v39, 0x7fff
	v_mov_b16_e32 v38.h, v71.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v29, 0, v16, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_dual_mul_f32 v16, v28, v30 :: v_dual_fmac_f32 v41, v31, v41
	v_div_scale_f32 v31, s8, v18, v37, v18
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v27.l, 0x7fff, v39.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v46, v16, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v38.l, v29.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v31, v41
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v16, v40, v30
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v40, -v44, v42, v31
	v_fma_f32 v28, -v46, v16, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v29, v38, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v42, v40, v41
	v_div_scale_f32 v40, null, v37, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v16, v28, v30, v16
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v28, -v44, v42, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v30, v40
	v_div_scale_f32 v31, null, v37, v37, v20
	v_div_fmas_f32 v28, v28, v41, v42
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v17, v17
	v_mov_b16_e32 v41.h, v71.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v18, v28, v37, v18
	v_fma_f32 v28, -v40, v30, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v18, 0, v18, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v28, v30
	v_div_scale_f32 v28, s7, v21, v37, v21
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v43
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v41.l, v18.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v42, v28, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v39, v17, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v17, v16, v37, v19
	v_rcp_f32_e32 v19, v31
	v_fma_f32 v43, -v40, v42, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.h, 0x7fff, v39.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v17, 0, v17, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v42, v43, v30
	v_div_scale_f32 v43, null, v37, v37, v23
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v71.l
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v31, v19, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v17.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v40, v42, v28
	v_rcp_f32_e32 v40, v43
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v41, 1, v41
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v19, v29, v19
	v_div_scale_f32 v29, s8, v20, v37, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v16.l, 0x7fff, v38.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v38, 1, v39
	v_add3_u32 v41, v18, v41, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v28, v28, v30, v42
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v18, v18
	v_mov_b16_e32 v18.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v38, v17, v38, 0x7fff
	v_cmp_o_f32_e64 s7, v17, v17
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v21, v28, v37, v21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v31, v39, v29
	v_fmac_f32_e32 v39, v44, v19
	v_div_scale_f32 v44, null, v37, v37, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v17, -v31, v39, v29
	v_rcp_f32_e32 v30, v44
	v_fma_f32 v29, -v43, v40, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v40, v29, v40
	v_fma_f32 v29, -v44, v30, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v30, v29, v30
	v_div_fmas_f32 v19, v17, v19, v39
	v_div_scale_f32 v28, vcc_lo, v23, v37, v23
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.h, 0x7fff, v38.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v29, s7, v22, v37, v22
	v_div_fixup_f32 v19, v19, v37, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v20, 0, v21, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v21, v28, v40 :: v_dual_mul_f32 v38, v29, v30
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v71.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v18.l, v20.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v31, -v43, v21, v28
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v17.l, 0x7fff, v41.h, s8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v39.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v21, v31, v40 :: v_dual_and_b32 v18, 1, v18
	v_fma_f32 v31, -v44, v38, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	v_add3_u32 v18, v20, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v28, -v43, v21, v28
	v_fmac_f32_e32 v38, v31, v30
	v_div_scale_f32 v31, null, v37, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v21, v28, v40, v21
	v_fma_f32 v28, -v44, v38, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v29, v31
	v_div_scale_f32 v40, null, v37, v37, v8
	s_mov_b32 vcc_lo, s7
	v_div_fmas_f32 v28, v28, v30, v38
	v_rcp_f32_e32 v30, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v20, v20
	v_add3_u32 v20, v19, v39, 0x7fff
	v_mov_b16_e32 v39.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v22, v28, v37, v22
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v28, -v31, v29, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v19, v21, v37, v23
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v21, 0, v22, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v22, s7, v9, v37, v9
	v_fma_f32 v23, -v40, v30, 1.0
	v_fmac_f32_e32 v29, v28, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v18.l, 0x7fff, v20.h, vcc_lo
	v_mov_b16_e32 v20.l, v21.h
	v_mov_b16_e32 v20.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v23, v30
	v_mul_f32_e32 v28, v22, v29
	v_div_scale_f32 v23, s8, v8, v37, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v20, 1, v20
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v38, -v31, v28, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v23, v30
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v19, 0, v19, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v20, v21, v20, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v28, v38, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v42, -v40, v41, v23
	v_div_scale_f32 v38, null, v37, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.l, v19.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v31, v28, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v41, v42, v30
	v_div_scale_f32 v42, null, v37, v37, v10
	v_rcp_f32_e32 v31, v38
	v_div_fmas_f32 v22, v22, v29, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v23, -v40, v41, v23
	v_rcp_f32_e32 v29, v42
	s_mov_b32 vcc_lo, s8
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v19, v19
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v9, v22, v37, v9
	v_div_fmas_f32 v22, v23, v30, v41
	v_div_scale_f32 v23, vcc_lo, v11, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v41.h, v71.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v9, 0, v9, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_div_fixup_f32 v8, v22, v37, v8
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v30, -v42, v29, 1.0
	v_div_scale_f32 v22, s8, v10, v37, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v29, v30, v29
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_and_b32_e32 v39, 1, v39
	v_mov_b16_e32 v30.l, v9.h
	v_mov_b16_e32 v30.h, v71.l
	v_mov_b16_e32 v41.l, v8.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v40, v22, v29
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v28, v19, v39, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v38, v31, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.h, 0x7fff, v28.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v31, v39, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v21, v21
	v_and_b32_e32 v21, 1, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_mul_f32 v19, v23, v31 :: v_dual_and_b32 v30, 1, v41
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v28.l, 0x7fff, v20.h, s7
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v21, v9, v21, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v38, v19, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v19, v39, v31
	v_fma_f32 v39, -v42, v40, v22
	v_fma_f32 v23, -v38, v19, v23
	v_div_scale_f32 v38, null, v37, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v40, v39, v29
	v_div_scale_f32 v39, null, v37, v37, v12
	v_div_fmas_f32 v19, v23, v31, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v23, v38
	v_fma_f32 v22, -v42, v40, v22
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v31, v39
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v11, v19, v37, v11
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s8, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v22, v22, v29, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v9, v9
	v_add3_u32 v9, v8, v30, 0x7fff
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v11, 0, v11, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v20, -v38, v23, 1.0
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v40.h, v71.l
	v_cndmask_b16 v21.h, 0x7fff, v21.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v39, v31, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v40.l, v11.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v23, v20, v23
	v_div_scale_f32 v20, vcc_lo, v13, v37, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v31, v19, v31
	v_div_scale_f32 v19, s7, v12, v37, v12
	v_mul_f32_e32 v8, v20, v23
	v_div_fixup_f32 v10, v22, v37, v10
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v21.l, 0x7fff, v9.h, s8
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v29, v19, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v9, 1, v40
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v30, -v38, v8, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v22.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v41, -v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v9, v11, v9, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v8, v30, v23
	v_div_scale_f32 v30, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v41, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v22.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v20, -v38, v8, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v19, -v39, v29, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v22, 1, v22
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v8, v20, v23, v8
	v_rcp_f32_e32 v20, v30
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v23, null, v37, v37, v14
	v_div_fmas_f32 v19, v19, v31, v29
	v_div_fixup_f32 v8, v8, v37, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v11, v11
	v_add3_u32 v22, v10, v22, 0x7fff
	v_mov_b16_e32 v29.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v11, v19, v37, v12
	v_rcp_f32_e32 v12, v23
	v_fma_f32 v13, -v30, v20, 1.0
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v9.h, 0x7fff, v9.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v11, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fmac_f32_e32 v20, v13, v20
	v_div_scale_f32 v13, s7, v15, v37, v15
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v11.l, v8.h
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v12, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v11.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v31, v13, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v9.l, 0x7fff, v22.h, vcc_lo
	v_mov_b16_e32 v29.l, v10.h
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v12, v19, v12
	v_div_scale_f32 v19, s8, v14, v37, v14
	v_fma_f32 v38, -v30, v31, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v11, 1, v11
	v_cmp_o_f32_e64 s9, v8, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v22, v19, v12
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v31, v38, v20
	v_div_scale_f32 v38, null, v37, v37, v1
	v_fma_f32 v39, -v23, v22, v19
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v11, v8, v11, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v8, -v30, v31, v13
	v_rcp_f32_e32 v13, v38
	v_div_scale_f32 v30, null, v37, v37, v0
	v_dual_fmac_f32 v22, v39, v12 :: v_dual_and_b32 v29, 1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v8, v8, v20, v31
	v_rcp_f32_e32 v20, v30
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v29, v10, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v19, -v23, v22, v19
	v_fma_f32 v23, -v38, v13, 1.0
	v_div_fixup_f32 v8, v8, v37, v15
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v10, v10
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_scale_f32 v31, null, v37, v37, v3
	v_div_fmas_f32 v12, v19, v12, v22
	v_fmac_f32_e32 v13, v23, v13
	v_div_scale_f32 v15, vcc_lo, v1, v37, v1
	v_fma_f32 v19, -v30, v20, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v10, v12, v37, v14
	v_div_scale_f32 v14, s8, v0, v37, v0
	v_mul_f32_e32 v12, v15, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v20, v19, v20
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v8, 0, v8, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v19.h, v71.l
	v_cndmask_b16 v11.l, 0x7fff, v29.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v38, v12, v15
	v_mul_f32_e32 v23, v14, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v19.l, v8.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v12, v22, v13
	v_fma_f32 v22, -v30, v23, v14
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v19, 1, v19
	v_mov_b16_e32 v29.l, v10.h
	v_cndmask_b16 v11.h, 0x7fff, v11.h, s9
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v15, -v38, v12, v15
	v_fmac_f32_e32 v23, v22, v20
	v_rcp_f32_e32 v22, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v19, v8, v19, 0x7fff
	v_and_b32_e32 v29, 1, v29
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v12, v15, v13, v12
	v_fma_f32 v13, -v30, v23, v14
	v_div_scale_f32 v14, null, v37, v37, v2
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v1, v12, v37, v1
	v_div_fmas_f32 v13, v13, v20, v23
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v15, -v31, v22, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v8, v8
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v8, v14
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v0, v13, v37, v0
	v_fmac_f32_e32 v22, v15, v22
	v_div_scale_f32 v13, s7, v3, v37, v3
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v15, v10, v29, 0x7fff
	v_cndmask_b16 v19.h, 0x7fff, v19.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v10, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v12, v13, v22
	v_fma_f32 v20, -v14, v8, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.l, v1.h
	v_mov_b16_e32 v29.h, v71.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v0, 0, v0, s6
	.loc	1 1044 48 is_stmt 0             ; attention.py:1044:48
	v_fma_f32 v23, -v31, v12, v13
	v_fmac_f32_e32 v8, v20, v8
	v_div_scale_f32 v20, s8, v2, v37, v2
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v19.l, 0x7fff, v15.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_dual_fmac_f32 v12, v23, v22 :: v_dual_and_b32 v15, 1, v29
	v_mul_f32_e32 v23, v20, v8
	s_mov_b32 vcc_lo, s7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.l, v0.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v13, -v31, v12, v13
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v29, -v14, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v15, v1, v15, 0x7fff
	v_cmp_o_f32_e64 s7, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v12, v13, v22, v12
	v_div_scale_f32 v13, null, v37, v37, v5
	v_dual_fmac_f32 v23, v29, v8 :: v_dual_and_b32 v10, 1, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v3, v12, v37, v3
	v_rcp_f32_e32 v12, v13
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v1, -v14, v23, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v10, v0, v10, 0x7fff
	v_mov_b16_e32 v29.h, v71.l
	v_mov_b16_e32 v14.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v1, v1, v8, v23
	v_div_scale_f32 v8, null, v37, v37, v4
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e32 vcc_lo, v0, v0
	v_cndmask_b16 v0.h, 0x7fff, v15.h, s7
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v1, v1, v37, v2
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v3, s6
	.loc	1 1044 48                       ; attention.py:1044:48
	v_rcp_f32_e32 v3, v8
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_cndmask_b16 v0.l, 0x7fff, v10.h, vcc_lo
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v10, -v13, v12, 1.0
	v_div_scale_f32 v15, null, v37, v37, v7
	v_div_scale_f32 v23, null, v37, v37, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v12, v10, v12
	v_div_scale_f32 v10, vcc_lo, v5, v37, v5
	v_fma_f32 v20, -v8, v3, 1.0
	v_rcp_f32_e32 v22, v15
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v1, 0, v1, s6
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_mul_f32_e32 v30, v10, v12
	v_div_scale_f32 v31, s7, v4, v37, v4
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v14.l, v2.h
	v_mov_b16_e32 v29.l, v1.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v39, -v13, v30, v10
	v_fmac_f32_e32 v3, v20, v3
	v_rcp_f32_e32 v20, v23
	v_fma_f32 v38, -v15, v22, 1.0
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v14, 1, v14
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fmac_f32_e32 v30, v39, v12
	v_mul_f32_e32 v40, v31, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v22, v38, v22
	v_div_scale_f32 v38, s8, v7, v37, v7
	v_fma_f32 v39, -v8, v40, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v41, -v23, v20, 1.0
	v_dual_mul_f32 v42, v38, v22 :: v_dual_and_b32 v29, 1, v29
	v_fma_f32 v10, -v13, v30, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v20, v41, v20
	v_div_scale_f32 v41, s9, v6, v37, v6
	v_fmac_f32_e32 v40, v39, v3
	v_fma_f32 v13, -v15, v42, v38
	v_div_fmas_f32 v10, v10, v12, v30
	v_mul_f32_e32 v39, v41, v20
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v8, -v8, v40, v31
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cmp_o_f32_e64 s7, v2, v2
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v5, v10, v37, v5
	v_fma_f32 v12, -v23, v39, v41
	v_fmac_f32_e32 v42, v13, v22
	v_div_fmas_f32 v3, v8, v3, v40
	.loc	1 1049 36                       ; attention.py:1049:36
	v_add3_u32 v8, v2, v14, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v39, v12, v20
	v_fma_f32 v2, -v15, v42, v38
	v_div_fixup_f32 v3, v3, v37, v4
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v5, 0, v5, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_add3_u32 v29, v1, v29, 0x7fff
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v4, -v23, v39, v41
	v_div_fmas_f32 v2, v2, v22, v42
	s_mov_b32 vcc_lo, s9
	.loc	1 1044 19 is_stmt 0             ; attention.py:1044:19
	v_cndmask_b32_e64 v3, 0, v3, s6
	.loc	1 1049 36 is_stmt 1             ; attention.py:1049:36
	v_mov_b16_e32 v12.h, v71.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v4, v4, v20, v39
	v_div_fixup_f32 v2, v2, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v7.l, v5.h
	v_mov_b16_e32 v7.h, v71.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v4, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v3.h
	v_mov_b16_e32 v6.h, v71.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v71.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v4, 0, v4, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_cndmask_b16 v8.l, 0x7fff, v29.h, vcc_lo
	v_and_b32_e32 v6, 1, v6
	v_mov_b16_e32 v10.l, v2.h
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s5
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v12.l, v4.h
	v_and_b32_e32 v7, 1, v7
	v_add3_u32 v1, v3, v6, 0x7fff
	v_and_b32_e32 v10, 1, v10
	v_cndmask_b32_e64 v15, v19, v9, s0
	v_cndmask_b32_e64 v9, v9, v19, s0
	.loc	1 1049 17 is_stmt 0             ; attention.py:1049:17
	v_add_lshl_u32 v19, v32, v36, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_and_b32_e32 v6, 1, v12
	v_cndmask_b16 v8.h, 0x7fff, v8.h, s7
	v_add3_u32 v7, v5, v7, 0x7fff
	v_cmp_o_f32_e64 s6, v5, v5
	v_cmp_o_f32_e64 s7, v3, v3
	v_add3_u32 v3, v4, v6, 0x7fff
	v_add3_u32 v5, v2, v10, 0x7fff
	v_cmp_o_f32_e64 s8, v2, v2
	v_cmp_o_f32_e64 s9, v4, v4
	v_cndmask_b16 v2.h, 0x7fff, v7.h, s6
	v_cndmask_b16 v2.l, 0x7fff, v1.h, s7
	v_cndmask_b32_e64 v4, v24, v26, s0
	v_cndmask_b16 v1.h, 0x7fff, v5.h, s8
	v_cndmask_b16 v1.l, 0x7fff, v3.h, s9
	v_cndmask_b32_e64 v6, v25, v27, s0
	v_cndmask_b32_e64 v7, v18, v16, s0
	v_cndmask_b32_e64 v10, v16, v18, s0
	v_cndmask_b32_e64 v13, v17, v28, s0
	v_cndmask_b32_e64 v16, v2, v0, s0
	v_cndmask_b32_e64 v0, v0, v2, s0
	v_cndmask_b32_e64 v12, v28, v17, s0
	v_cndmask_b32_e64 v14, v11, v21, s0
	v_cndmask_b32_e64 v11, v21, v11, s0
	v_cndmask_b32_e64 v17, v1, v8, s0
	v_cndmask_b32_e64 v1, v8, v1, s0
	s_mov_b32 s6, 0x76543210
	v_cndmask_b32_e64 v3, v26, v24, s0
	v_cndmask_b32_e64 v5, v27, v25, s0
	v_permlanex16_b32 v2, v4, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v6, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v6, v10, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v8, v13, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v0, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v11, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v9, s6, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v18, v1, s6, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v2, v3, v69
	v_perm_b32 v1, v2, v3, v70
	v_perm_b32 v2, v4, v5, v69
	v_perm_b32 v3, v4, v5, v70
	v_perm_b32 v4, v6, v7, v69
	v_perm_b32 v5, v6, v7, v70
	v_perm_b32 v6, v8, v12, v69
	v_perm_b32 v7, v8, v12, v70
	v_perm_b32 v12, v13, v16, v69
	v_perm_b32 v13, v13, v16, v70
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v14, v69
	v_perm_b32 v9, v10, v14, v70
	v_perm_b32 v10, v11, v15, v69
	v_perm_b32 v11, v11, v15, v70
	v_perm_b32 v14, v18, v17, v69
	v_perm_b32 v15, v18, v17, v70
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v35, 1
	v_add_lshl_u32 v18, v32, v34, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s47, 0xffff
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s46
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s4
	.loc	1 1049 17                       ; attention.py:1049:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[8:11], 0 offen
	buffer_store_b128 v[4:7], v17, s[8:11], 0 offen
	buffer_store_b128 v[8:11], v18, s[8:11], 0 offen
	buffer_store_b128 v[12:15], v19, s[8:11], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp48:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 158
		.amdhsa_next_free_sgpr 61
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_vgpr, 158
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.numbered_sgpr, 61
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 11164
; TotalNumSgprs: 63
; NumVgprs: 158
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 19
; NumSGPRsForWavesPerEU: 63
; NumVGPRsForWavesPerEU: 158
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     63
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     158
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
