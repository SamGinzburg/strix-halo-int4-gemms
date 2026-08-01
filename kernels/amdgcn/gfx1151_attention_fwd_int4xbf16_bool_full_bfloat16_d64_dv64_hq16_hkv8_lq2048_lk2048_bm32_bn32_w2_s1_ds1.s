	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b128 s[56:59], s[0:1], 0x60
	v_dual_mov_b32 v41, 0x6420 :: v_dual_lshlrev_b32 v94, 4, v0
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_lshrrev_b32_e32 v3, 1, v0
	s_load_b256 s[36:43], s[0:1], 0x0
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v43, 0x5410 :: v_dual_and_b32 v36, 16, v94
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s4, s2, 5
	.loc	1 772 26                        ; attention.py:772:26
	s_lshl_b32 s2, s3, 11
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v38, s4, v3
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s5, s4, s2
	v_dual_mov_b32 v42, 0x7531 :: v_dual_and_b32 v39, 15, v0
	s_mov_b32 s63, 0x31027000
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, 0x800, v38
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[64:65], s[0:1], 0x20
	s_load_b128 s[52:55], s[0:1], 0x30
	v_dual_mov_b32 v44, 0x7632 :: v_dual_and_b32 v47, 1, v0
	v_mov_b32_e32 v24, 0
	.loc	1 773 26                        ; attention.py:773:26
	s_waitcnt lgkmcnt(0)
	v_mad_u64_u32 v[80:81], null, s56, v3, v[36:37]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s31, s56, v36
	.loc	1 759 31                        ; attention.py:759:31
	v_bfe_u32 v46, v0, 4, 1
	.loc	1 774 26                        ; attention.py:774:26
	s_and_b32 s61, s37, 0xffff
	s_mov_b32 s60, s36
	.loc	1 889 86                        ; attention.py:889:86
	v_lshlrev_b32_e32 v37, 3, v0
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 s2, vcc_lo, s31
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[1:2], null, s56, s5, v[80:81]
	v_dual_mov_b32 v27, v24 :: v_dual_lshlrev_b32 v48, 1, v0
	v_dual_mov_b32 v52, 0xff800000 :: v_dual_and_b32 v49, 24, v0
	.loc	1 759 31                        ; attention.py:759:31
	v_lshrrev_b32_e32 v45, 3, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 774 26                        ; attention.py:774:26
	v_and_or_b32 v50, v48, 30, v46
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	v_dual_mov_b32 v26, v24 :: v_dual_and_b32 v37, 56, v37
	v_mov_b32_e32 v28, v24
	v_dual_mov_b32 v29, v24 :: v_dual_lshlrev_b32 v100, 2, v50
	buffer_load_b128 v[32:35], v1, s[60:63], 0 offen
	.loc	1 759 31                        ; attention.py:759:31
	v_and_or_b32 v1, v3, 16, v39
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s61, s43, 0xffff
	s_mov_b32 s60, s42
	v_xor_b32_e32 v98, v94, v49
	v_and_b32_e32 v49, 24, v48
	.loc	1 780 17                        ; attention.py:780:17
	v_or_b32_e32 v95, s5, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s4, v1
	s_load_b64 s[4:5], s[0:1], 0x70
	v_mov_b32_e32 v97, 0xff800000
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s3, 31
	.loc	1 779 31                        ; attention.py:779:31
	v_lshlrev_b32_e32 v2, 1, v95
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, 0x800, v1
	.loc	1 755 23                        ; attention.py:755:23
	s_lshr_b32 s0, s0, 28
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[81:82], null, s57, v45, v[37:38]
	.loc	1 755 23                        ; attention.py:755:23
	s_add_i32 s0, s3, s0
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v1, 0x80000000, v2, s2
	.loc	1 756 22                        ; attention.py:756:22
	s_and_b32 s1, s0, -16
	.loc	1 755 23                        ; attention.py:755:23
	s_ashr_i32 s0, s0, 4
	.loc	1 756 22                        ; attention.py:756:22
	s_sub_i32 s3, s3, s1
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s1, 0, v47
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v40, v1, s[60:63], 0 offen
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_u32 s7, s3, 0x10007
	v_lshl_add_u32 v99, v39, 1, 0
	s_add_i32 s7, s3, s7
	v_cndmask_b32_e64 v41, 0x7531, v41, s1
	v_lshl_or_b32 v101, v39, 5, v49
	.loc	1 872 27                        ; attention.py:872:27
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s3, s4, s3
	.loc	1 892 65                        ; attention.py:892:65
	v_cmp_gt_i32_e64 s4, s57, v37
	v_mul_lo_u32 v37, s5, v38
	v_cndmask_b32_e64 v39, 0x6420, v42, s1
	v_lshl_or_b32 v41, v41, 8, v41
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v103, 4, v100
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s6, s0, 14
	.loc	1 871 27                        ; attention.py:871:27
	s_mul_i32 s0, s59, s0
	v_dual_mov_b32 v25, v24 :: v_dual_and_b32 v96, 16, v0
	s_add_i32 s3, s3, s0
	v_dual_mov_b32 v16, v24 :: v_dual_and_b32 v41, 0x750031, v41
	v_lshl_or_b32 v39, v39, 8, v39
	v_add3_u32 v114, s3, v36, v37
	v_mov_b32_e32 v20, v24
	v_xor_b32_e32 v42, 8, v101
	v_lshl_or_b32 v38, v41, 4, v41
	v_and_b32_e32 v39, 0x750031, v39
	.loc	1 774 26                        ; attention.py:774:26
	v_cmp_eq_u32_e64 s0, 0, v96
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v22, v24 :: v_dual_add_nc_u32 v107, 0, v42
	v_dual_mov_b32 v10, v24 :: v_dual_and_b32 v111, 0x7050301, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v38, v39, 4, v39
	v_cndmask_b32_e64 v42, 0x1054, v43, s0
	v_cndmask_b32_e64 v43, 0x3276, v44, s0
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v19, v24
	.loc	1 758 19                        ; attention.py:758:19
	s_bfe_i32 s7, s7, 0x80000
	v_and_b32_e32 v130, 0x7050301, v38
	s_sext_i32_i16 s7, s7
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[82:83], null, s57, 24, v[81:82]
	.loc	1 821 32                        ; attention.py:821:32
	s_lshl_b32 s7, s7, 10
	v_dual_mov_b32 v30, v24 :: v_dual_lshlrev_b32 v47, 6, v47
	s_and_b32 s7, s7, 0xfffff800
	.loc	1 844 25                        ; attention.py:844:25
	s_mul_f32 s8, s58, 0x3fb8aa3b
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s58, s7, s6
	v_xor_b32_e32 v50, 8, v98
	v_and_or_b32 v102, v48, 60, v47
	v_xor_b32_e32 v47, 16, v101
	v_xor_b32_e32 v48, 24, v101
	v_or_b32_e32 v110, s58, v46
	v_mov_b32_e32 v31, v24
	v_dual_mov_b32 v18, v24 :: v_dual_add_nc_u32 v105, 0, v50
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v8, v24 :: v_dual_add_nc_u32 v109, 0, v48
	v_dual_mov_b32 v11, v24 :: v_dual_mov_b32 v60, 0xff800000
	v_mov_b32_e32 v13, v24
	v_mov_b32_e32 v15, v24
	v_mov_b32_e32 v0, v24
	v_mov_b32_e32 v1, v24
	v_mov_b32_e32 v2, v24
	v_mov_b32_e32 v3, v24
	v_mov_b32_e32 v4, v24
	v_mov_b32_e32 v5, v24
	v_mov_b32_e32 v6, v24
	v_mov_b32_e32 v7, v24
	v_mov_b32_e32 v106, v24
	v_xor_b32_e32 v104, 64, v102
	v_add_nc_u32_e32 v108, 0, v47
	.loc	1 818 13                        ; attention.py:818:13
	v_lshl_add_u32 v112, s57, 3, v81
	v_lshl_add_u32 v113, s57, 4, v81
	v_or_b32_e32 v115, 2, v110
	v_or_b32_e32 v116, 4, v110
	v_or_b32_e32 v117, 6, v110
	v_or_b32_e32 v118, 8, v110
	v_or_b32_e32 v119, 10, v110
	v_or_b32_e32 v120, 12, v110
	v_or_b32_e32 v121, 14, v110
	v_or_b32_e32 v122, 16, v110
	v_or_b32_e32 v123, 18, v110
	v_or_b32_e32 v124, 20, v110
	v_or_b32_e32 v125, 22, v110
	v_or_b32_e32 v126, 24, v110
	v_or_b32_e32 v127, 26, v110
	v_or_b32_e32 v128, 28, v110
	v_or_b32_e32 v129, 30, v110
	s_mov_b32 s44, 0
	s_and_b32 s39, s39, 0xffff
	s_mov_b32 s68, 0x76543210
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_and_b32 s65, s65, 0xffff
	s_and_b32 s41, s41, 0xffff
	s_mov_b32 s60, s38
	s_mov_b32 s61, s39
	s_mov_b32 s42, s62
	s_mov_b32 s43, s63
	s_mov_b32 s39, s44
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(1)
	ds_bpermute_b32 v36, v100, v32
	ds_bpermute_b32 v32, v103, v32
	ds_bpermute_b32 v37, v100, v33
	ds_bpermute_b32 v33, v103, v33
	ds_bpermute_b32 v39, v100, v34
	ds_bpermute_b32 v34, v103, v34
	ds_bpermute_b32 v41, v100, v35
	ds_bpermute_b32 v35, v103, v35
	s_waitcnt lgkmcnt(6)
	v_cndmask_b32_e64 v83, v32, v36, s0
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v38, 16, v40
	v_lshl_or_b32 v40, v42, 8, v42
	v_lshl_or_b32 v42, v43, 8, v43
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v23, v24
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e64 v85, v36, v32, s0
	v_and_b32_e32 v32, 0x540054, v40
	v_and_b32_e32 v36, 0x760076, v42
	s_waitcnt lgkmcnt(4)
	v_cndmask_b32_e64 v84, v33, v37, s0
	v_cndmask_b32_e64 v86, v37, v33, s0
	v_dual_mov_b32 v12, v24 :: v_dual_mul_f32 v131, s8, v38
	v_lshl_or_b32 v32, v32, 4, v32
	v_lshl_or_b32 v33, v36, 4, v36
	v_mov_b32_e32 v9, v24
	v_mov_b32_e32 v14, v24
	s_waitcnt lgkmcnt(2)
	v_cndmask_b32_e64 v87, v34, v39, s0
	v_cndmask_b32_e64 v89, v39, v34, s0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v88, v35, v41, s0
	v_cndmask_b32_e64 v90, v41, v35, s0
	v_and_b32_e32 v91, 0x5040504, v32
	v_and_b32_e32 v92, 0x7060706, v33
	s_branch .LBB0_2
.LBB0_1:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 0 26 is_stmt 0                ; attention.py:0:26
	s_or_b32 exec_lo, exec_lo, s5
	.loc	1 828 33 is_stmt 1              ; attention.py:828:33
	v_mov_b16_e32 v93.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v54.h, v53.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v53, v33
	v_cvt_f32_i32_e32 v74, v36
	v_cvt_f32_i32_e32 v38, v38
	.loc	1 877 34                        ; attention.py:877:34
	v_lshrrev_b32_e32 v33, 8, v48
	v_lshrrev_b32_e32 v36, 8, v50
	.loc	1 828 33                        ; attention.py:828:33
	v_lshrrev_b32_e32 v70, 8, v49
	v_lshrrev_b32_e32 v71, 8, v51
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v56.h, v55.l
	v_mov_b16_e32 v55.l, v93.l
	v_mov_b16_e32 v55.h, v54.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v73, v35
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v35.l, 0xff, v50.l
	v_and_b16 v35.h, 0xff, v36.l
	v_and_b16 v36.l, 0xff, v50.h
	v_lshrrev_b32_e32 v50, 24, v50
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v38, v131, v38
	v_mul_f32_e32 v76, v131, v32
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v32.l, 0xff, v48.l
	v_and_b16 v32.h, 0xff, v33.l
	v_and_b16 v33.l, 0xff, v48.h
	v_lshrrev_b32_e32 v48, 24, v48
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v72, v34
	v_cvt_f32_i32_e32 v75, v37
	.loc	1 877 34                        ; attention.py:877:34
	v_and_b16 v33.h, 0xff, v49.l
	v_and_b16 v34.l, 0xff, v70.l
	v_and_b16 v34.h, 0xff, v49.h
	v_lshrrev_b32_e32 v49, 24, v49
	v_and_b16 v36.h, 0xff, v51.l
	v_and_b16 v37.l, 0xff, v71.l
	v_and_b16 v37.h, 0xff, v51.h
	v_lshrrev_b32_e32 v51, 24, v51
	v_cmp_ne_u16_e64 s3, 0, v32.l
	v_cmp_ne_u16_e64 s5, 0, v32.h
	v_cmp_ne_u16_e64 s8, 0, v48.l
	v_cmp_ne_u16_e64 s15, 0, v36.l
	v_cmp_ne_u16_e64 s16, 0, v50.l
	v_cmp_ne_u16_e64 s6, 0, v33.l
	v_cmp_ne_u16_e64 s18, 0, v34.l
	v_cmp_ne_u16_e64 s20, 0, v49.l
	v_cmp_ne_u16_e64 s12, 0, v35.l
	v_cmp_ne_u16_e64 s14, 0, v35.h
	v_cmp_ne_u16_e64 s22, 0, v36.h
	v_cmp_ne_u16_e64 s23, 0, v37.l
	v_cmp_ne_u16_e64 s24, 0, v37.h
	v_cmp_ne_u16_e64 s25, 0, v51.l
	.loc	1 877 25 is_stmt 0              ; attention.py:877:25
	s_and_b32 s7, vcc_lo, s3
	s_and_b32 s10, vcc_lo, s5
	s_and_b32 s13, vcc_lo, s8
	s_and_b32 s15, vcc_lo, s15
	s_and_b32 s16, vcc_lo, s16
	.loc	1 877 34                        ; attention.py:877:34
	v_cmp_ne_u16_e64 s9, 0, v33.h
	v_cmp_ne_u16_e64 s19, 0, v34.h
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v36, 0, 1, s7
	v_cndmask_b32_e64 v33, 0, 1, s10
	v_cndmask_b32_e64 v32, 0, 1, s13
	v_cndmask_b32_e64 v49, 0, 1, s15
	v_cndmask_b32_e64 v34, 0, 1, s16
	s_and_b32 s11, vcc_lo, s6
	s_and_b32 s12, vcc_lo, s12
	s_and_b32 s14, vcc_lo, s14
	s_and_b32 s18, vcc_lo, s18
	s_and_b32 s21, vcc_lo, s20
	s_and_b32 s20, vcc_lo, s22
	s_and_b32 s22, vcc_lo, s23
	s_and_b32 s23, vcc_lo, s24
	s_and_b32 s24, vcc_lo, s25
	v_cndmask_b32_e64 v35, 0, 1, s11
	v_cndmask_b32_e64 v37, 0, 1, s12
	v_cndmask_b32_e64 v48, 0, 1, s14
	v_cndmask_b32_e64 v51, 0, 1, s18
	v_cndmask_b32_e64 v71, 0, 1, s21
	v_cndmask_b32_e64 v78, 0, 1, s22
	v_cndmask_b32_e64 v132, 0, 1, s24
	v_lshlrev_b16 v32.l, 8, v32.l
	v_lshlrev_b16 v32.h, 8, v33.l
	v_mov_b16_e32 v33.l, v36.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v49.l
	s_and_b32 s17, vcc_lo, s9
	s_and_b32 s19, vcc_lo, s19
	v_cndmask_b32_e64 v50, 0, 1, s17
	v_cndmask_b32_e64 v70, 0, 1, s19
	v_cndmask_b32_e64 v77, 0, 1, s20
	v_cndmask_b32_e64 v79, 0, 1, s23
	v_mov_b16_e32 v36.l, v48.l
	v_or_b16 v48.h, v35.l, v32.l
	v_or_b16 v48.l, v33.l, v32.h
	v_mov_b16_e32 v32.l, v71.l
	v_or_b16 v49.h, v34.l, v33.h
	v_mov_b16_e32 v33.l, v37.l
	v_mov_b16_e32 v34.l, v51.l
	v_mov_b16_e64 v35.l, v132.l
	v_mov_b16_e32 v37.l, v78.l
	v_lshlrev_b16 v32.h, 8, v36.l
	v_lshlrev_b16 v32.l, 8, v32.l
	v_mov_b16_e32 v36.l, v70.l
	v_lshlrev_b16 v33.h, 8, v34.l
	v_mov_b16_e32 v34.l, v50.l
	v_lshlrev_b16 v34.h, 8, v35.l
	v_mov_b16_e32 v35.l, v79.l
	v_lshlrev_b16 v35.h, 8, v37.l
	v_mov_b16_e32 v37.l, v77.l
	v_or_b16 v49.l, v33.l, v32.h
	v_or_b16 v32.h, v36.l, v32.l
	v_or_b16 v32.l, v34.l, v33.h
	v_or_b16 v33.h, v35.l, v34.h
	v_or_b16 v33.l, v37.l, v35.h
	.loc	1 838 37 is_stmt 1              ; attention.py:838:37
	v_mov_b16_e32 v57.h, v56.l
	v_mov_b16_e32 v56.l, v93.l
	.loc	1 877 25                        ; attention.py:877:25
	v_perm_b32 v36, v32, v48, v111
	v_perm_b32 v32, v32, v48, v130
	v_perm_b32 v37, v33, v49, v111
	v_perm_b32 v33, v33, v49, v130
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v50, v131, v75
	.loc	1 877 25                        ; attention.py:877:25
	ds_bpermute_b32 v36, v100, v36
	ds_bpermute_b32 v32, v103, v32
	ds_bpermute_b32 v37, v100, v37
	ds_bpermute_b32 v33, v103, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v49, v131, v74 :: v_dual_mul_f32 v50, v50, v56
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v63.h, v62.l
	v_mov_b16_e32 v62.l, v93.l
	v_mov_b16_e32 v62.h, v61.l
	v_mov_b16_e32 v61.l, v93.l
	v_mov_b16_e32 v61.h, v59.l
	v_mov_b16_e32 v59.l, v93.l
	v_mov_b16_e32 v59.h, v58.l
	v_mov_b16_e32 v58.h, v57.l
	v_mov_b16_e32 v57.l, v93.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v68.h, v68.l
	v_mov_b16_e32 v68.l, v93.l
	v_mov_b16_e32 v67.h, v66.l
	v_mov_b16_e32 v66.l, v93.l
	.loc	1 877 25                        ; attention.py:877:25
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v56, v33, v37, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v131, v53
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v33, v37, v33, s0
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v66.h, v65.l
	v_mov_b16_e32 v65.l, v93.l
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v37, 0x100, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v35, v131, v72 :: v_dual_mul_f32 v34, v34, v61
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v65.h, v64.l
	v_mov_b16_e32 v64.l, v93.l
	v_mov_b16_e32 v64.h, v63.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v40, v40
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v47, v47
	v_mul_f32_e32 v46, v131, v46
	v_mul_f32_e32 v53, v35, v59
	v_mul_f32_e32 v35, v49, v57
	v_mul_f32_e32 v45, v131, v45
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v59, 1, v33
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v55, v38, v55 :: v_dual_mul_f32 v44, v131, v44
	v_mul_f32_e32 v51, v76, v62
	v_mul_f32_e32 v41, v131, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v93.h, v69.l
	v_mov_b16_e32 v69.l, v93.l
	v_mov_b16_e32 v69.h, v67.l
	v_mov_b16_e32 v67.l, v93.l
	v_mov_b16_e32 v63.l, v93.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v44, v44, v66
	v_dual_mul_f32 v42, v131, v42 :: v_dual_mul_f32 v41, v41, v68
	v_dual_mul_f32 v47, v131, v47 :: v_dual_mul_f32 v46, v46, v64
	v_dual_mul_f32 v40, v131, v40 :: v_dual_mul_f32 v45, v45, v65
	v_mul_f32_e32 v43, v131, v43
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v49, v32, v36, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v40, v40, v93
	v_dual_mul_f32 v42, v42, v69 :: v_dual_mul_f32 v43, v43, v67
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v47, v47, v63 :: v_dual_and_b32 v38, 1, v49
	.loc	1 877 25                        ; attention.py:877:25
	v_cndmask_b32_e64 v57, v36, v32, s0
	v_and_b32_e32 v32, 0x100, v49
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v58.l, v93.l
	v_mov_b16_e32 v54.l, v93.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v131, v73
	v_mul_f32_e32 v39, v131, v39
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s27, 1, v38
	v_cmp_eq_u32_e64 s28, 0, v32
	v_and_b32_e32 v36, 1, v56
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v48, v48, v58
	v_dual_mul_f32 v54, v39, v54 :: v_dual_and_b32 v61, 0x100, v33
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v39, 1, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v63, 0xff800000, v40, s27
	v_cndmask_b32_e64 v64, v41, 0xff800000, s28
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v58, 0x100, v57
	v_cmp_eq_u32_e64 s25, 1, v36
	v_cmp_eq_u32_e64 s8, 1, v39
	v_cmp_eq_u32_e64 s26, 0, v37
	v_cmp_eq_u32_e64 s6, 1, v59
	v_cmp_eq_u32_e64 s5, 0, v61
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v139, v63, v64
.Ltmp2:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s9, 0, v58
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v65, 0xff800000, v44, s25
	v_cndmask_b32_e64 v51, 0xff800000, v51, s8
	v_cndmask_b32_e64 v66, v45, 0xff800000, s26
	v_cndmask_b32_e64 v59, 0xff800000, v35, s6
	v_cndmask_b32_e64 v58, v34, 0xff800000, s9
	v_cndmask_b32_e64 v50, v50, 0xff800000, s5
	v_cndmask_b32_e64 v34, v63, v51, s0
	v_cndmask_b32_e64 v32, v51, v63, s0
	v_cndmask_b32_e64 v37, v59, v65, s0
	v_cndmask_b32_e64 v35, v58, v64, s0
	v_cndmask_b32_e64 v36, v64, v58, s0
	v_cndmask_b32_e64 v38, v65, v59, s0
	v_cndmask_b32_e64 v39, v50, v66, s0
	v_cndmask_b32_e64 v40, v66, v50, s0
	ds_bpermute_b32 v62, v104, v34
	ds_bpermute_b32 v67, v102, v35
	ds_bpermute_b32 v68, v104, v36
	ds_bpermute_b32 v69, v102, v37
	ds_bpermute_b32 v70, v104, v38
	ds_bpermute_b32 v71, v102, v39
	ds_bpermute_b32 v72, v104, v40
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v40, 0x10000, v33
	.loc	1 889 30                        ; attention.py:889:30
	s_mul_i32 s29, s29, s57
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v61, v102, v32
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v32, s29, v81, 1
	v_add_lshl_u32 v34, s29, v112, 1
	v_add_lshl_u32 v35, s29, v113, 1
	v_add_lshl_u32 v41, s29, v82, 1
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v45, 0x1000000, v33
	v_cmp_eq_u32_e64 s29, 0, v40
	v_and_b32_e32 v40, 0x10000, v56
	v_and_b32_e32 v56, 0x1000000, v56
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v73, 0x80000000, v41, s4
	v_cndmask_b32_e64 v32, 0x80000000, v32, s4
	v_cndmask_b32_e64 v44, 0x80000000, v35, s4
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s34, 0, v40
	v_and_b32_e32 v40, 0x1000000, v49
	.loc	1 882 26                        ; attention.py:882:26
	s_waitcnt lgkmcnt(5)
	v_cndmask_b32_e64 v135, v68, v67, s1
	v_cndmask_b32_e64 v67, v67, v68, s1
	s_waitcnt lgkmcnt(3)
	v_cndmask_b32_e64 v68, v70, v69, s1
	v_cndmask_b32_e64 v69, v69, v70, s1
	s_waitcnt lgkmcnt(1)
	v_cndmask_b32_e64 v70, v72, v71, s1
	v_cndmask_b32_e64 v71, v71, v72, s1
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v72, v62, v62
.Ltmp4:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s30, 0, v45
	v_and_b32_e32 v45, 0x1000000, v57
	v_cmp_eq_u32_e64 s37, 0, v40
	v_cmp_eq_u32_e64 s35, 0, v56
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v74, v46, 0xff800000, s34
	v_cndmask_b32_e64 v54, v54, 0xff800000, s30
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s33, 0, v45
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v78, v43, 0xff800000, s37
	v_cndmask_b32_e64 v56, v47, 0xff800000, s35
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v36, 0x80000000, v34, s4
	s_clause 0x1
	buffer_load_b128 v[32:35], v32, s[40:43], 0 offen
	buffer_load_b128 v[36:39], v36, s[40:43], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v48, v48, 0xff800000, s33
	v_cndmask_b32_e64 v55, v55, 0xff800000, s29
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v140, v78, v65, v66
.Ltmp6:
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e64 s38, 0xff800000, v52
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v133, v78, v48, s0
	v_cndmask_b32_e64 v75, v55, v74, s0
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v138, v59, v50, v55
.Ltmp8:
	.loc	1 877 25                        ; attention.py:877:25
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v134, v104, v133
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v133, v61, v61
.Ltmp10:
	.loc	1 877 25                        ; attention.py:877:25
	v_and_b32_e32 v41, 0x10000, v57
	v_and_b32_e32 v57, 0x10000, v49
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v49, v74, v55, s0
	.loc	1 877 25                        ; attention.py:877:25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v72, v133, v72
.Ltmp12:
	.loc	1 877 25                        ; attention.py:877:25
	v_cmp_eq_u32_e64 s3, 0, v41
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_eq_u32_e64 s36, 0, v57
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v41, v54, v56, s0
	ds_bpermute_b32 v49, v104, v49
	v_cndmask_b32_e64 v53, v53, 0xff800000, s3
	v_cndmask_b32_e64 v57, v42, 0xff800000, s36
	v_cndmask_b32_e64 v42, v56, v54, s0
	ds_bpermute_b32 v76, v102, v41
	v_cndmask_b32_e64 v45, v53, v57, s0
	v_cndmask_b32_e64 v46, v57, v53, s0
	ds_bpermute_b32 v77, v104, v42
	ds_bpermute_b32 v79, v102, v45
	ds_bpermute_b32 v132, v104, v46
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_b128 v[40:43], v44, s[40:43], 0 offen
	buffer_load_b128 v[44:47], v73, s[40:43], 0 offen
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v73, v102, v75
	v_cndmask_b32_e64 v75, v48, v78, s0
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 882 26                        ; attention.py:882:26
	ds_bpermute_b32 v75, v102, v75
	v_cndmask_b32_e64 v136, v77, v76, s1
	v_cndmask_b32_e64 v76, v76, v77, s1
	v_cndmask_b32_e64 v137, v132, v79, s1
	v_cndmask_b32_e64 v79, v79, v132, s1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v132, v69, v70, v71
	v_max3_f32 v77, v73, v49, v136
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max3_f32 v133, v67, v137, v79
	v_max3_f32 v77, v132, v77, v76
	s_waitcnt lgkmcnt(0)
	v_max3_f32 v132, v75, v134, v68
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v72, v72, v135, v133
	v_max3_f32 v133, v58, v53, v48
	v_max3_f32 v72, v72, v132, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_max3_f32 v77, v133, v138, v54
	v_max3_f32 v132, v74, v56, v51
	v_max3_f32 v133, v139, v57, v140
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v139, v62, v61, s1
.Ltmp15:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_e32 v138, v72
.Ltmp16:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v77, v133, v132, v77
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp17:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_mov_b32_dpp v138, v138 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_permlanex16_b32 v132, v77, s68, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v138, v138, v138
.Ltmp19:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v133, v52, v77, v132
	v_max_f32_e32 v77, v60, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v72, v72, v138
.Ltmp21:
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v132, v77, v72
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v77, v61, v62, s1
	.loc	1 884 24                        ; attention.py:884:24
	v_max_f32_e32 v61, v97, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v97, v61, v72
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v72, v75, v134, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v79, v79, v97
	v_sub_f32_e32 v67, v67, v97
	v_sub_f32_e32 v68, v68, v97
	v_sub_f32_e32 v71, v71, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v79, v79
	v_exp_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v68, v68
	v_exp_f32_e32 v71, v71
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v79, 0, v79, s18
	.loc	1 885 74 is_stmt 1              ; attention.py:885:74
	v_sub_f32_e32 v138, v52, v133
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, 0, v67, s13
	v_cndmask_b32_e64 v68, 0, v68, s12
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v71, 0, v71, s16
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v62, v138
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, v49, v73, s1
	v_cndmask_b32_e64 v49, v73, v49, s1
	v_cndmask_b32_e64 v73, v134, v75, s1
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v75, v77, v97
	v_dual_sub_f32 v77, v135, v97 :: v_dual_sub_f32 v140, v60, v132
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v75, v75
	v_exp_f32_e32 v77, v77
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v62, 0, v62, s38
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v70, v70, v97
	v_sub_f32_e32 v49, v49, v97
	v_sub_f32_e32 v136, v136, v97
	v_dual_sub_f32 v76, v76, v97 :: v_dual_mul_f32 v29, v29, v62
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v25, v25, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v75, 0, v75, s10
	v_cndmask_b32_e64 v77, 0, v77, s11
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v76, v76
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v24, v24, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v49, v49
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v27, v27, v62
.Ltmp22:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v67, v77, v67
.Ltmp23:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v69, v69, v97
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v136, v136
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v70, 0, v70, s15
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v52, v139, v97
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v8, v8, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v69, v69
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v76, 0, v76, s24
	v_cndmask_b32_e64 v49, 0, v49, s22
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v64, v64, v133 :: v_dual_mul_f32 v31, v31, v62
	v_dual_sub_f32 v53, v53, v133 :: v_dual_mul_f32 v18, v18, v62
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v136, 0, v136, s23
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v73, v73, v97
	v_dual_sub_f32 v48, v48, v133 :: v_dual_mul_f32 v11, v11, v62
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v69, 0, v69, s14
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v63, v63, v133 :: v_dual_mul_f32 v26, v26, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v64, v64
	v_exp_f32_e32 v53, v53
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp24:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v68, v68, v69 :: v_dual_mul_f32 v1, v1, v62
	v_add_f32_e32 v69, v70, v71
.Ltmp25:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v52, v52
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v70, v136, v76
.Ltmp27:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v73, v73
	v_exp_f32_e32 v48, v48
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v68, v68, v69
.Ltmp29:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v63, v63
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v78, v78, v133 :: v_dual_mul_f32 v17, v17, v62
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v10, v10, v62 :: v_dual_sub_f32 v57, v57, v133
	v_mul_f32_e32 v28, v28, v62
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, 0, v52, s7
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_cndmask_b32_e64 v73, 0, v73, s19
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v66, v66, v133 :: v_dual_mul_f32 v19, v19, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v78, v78
.Ltmp30:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v52, v52, v75
.Ltmp31:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v57, v57
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v65, v65, v133 :: v_dual_mul_f32 v30, v30, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v66, v66
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp32:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_dual_add_f32 v52, v52, v67 :: v_dual_sub_f32 v135, v138, v97
.Ltmp33:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v56, v56, v133 :: v_dual_mul_f32 v23, v23, v62
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v65, v65
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v74, v74, v133 :: v_dual_mul_f32 v21, v21, v62
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v135, v135
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v57, v57, 0, s36
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v51, v51, v133 :: v_dual_mul_f32 v16, v16, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v56, v56
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_dual_mul_f32 v5, v5, v62 :: v_dual_sub_f32 v58, v58, v133
	v_mul_f32_e32 v9, v9, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v51, v51
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v135, 0, v135, s20
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v58, v58
	.loc	1 895 23 is_stmt 1              ; attention.py:895:23
	v_mul_f32_e32 v7, v7, v62
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v59, v59, v133 :: v_dual_mul_f32 v20, v20, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v135, v49
.Ltmp35:
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v72, v72, v97
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v56, v56, 0, s35
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v50, v50, v133 :: v_dual_mul_f32 v13, v13, v62
.Ltmp36:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v49, v70
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp37:
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v72, v72
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v51, 0, v51, s8
	v_cndmask_b32_e64 v58, v58, 0, s9
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v55, v55, v133 :: v_dual_mul_f32 v22, v22, v62
.Ltmp38:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v49, v68, v49
.Ltmp39:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v68, v74, 0, s34
	.loc	1 886 62 is_stmt 0              ; attention.py:886:62
	v_dual_sub_f32 v54, v54, v133 :: v_dual_mul_f32 v15, v15, v62
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v59, v59
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v72, 0, v72, s21
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s8, v68, v68
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v50, v50
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v54, v54
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v72, v73, v72
.Ltmp41:
	.loc	1 886 62                        ; attention.py:886:62
	v_dual_sub_f32 v134, v137, v97 :: v_dual_mul_f32 v3, v3, v62
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v6, v6, v62
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v61, v140
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(TRANS32_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v134, v134
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v50, v50, 0, s5
	v_cndmask_b32_e64 v55, v55, 0, s29
	v_cndmask_b32_e64 v54, v54, 0, s30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_cmp_o_f32_e64 s5, v50, v50
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v134, 0, v134, s17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp42:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v75, v134, v79
	v_add_f32_e32 v67, v75, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add_f32_e32 v52, v52, v67
.Ltmp43:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v67, v78, 0, s37
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v134, v52, v49
.Ltmp45:
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v52, v53, 0, s3
	v_cndmask_b32_e64 v53, v48, 0, s33
	v_cndmask_b32_e64 v48, v64, 0, s28
	v_cndmask_b32_e64 v49, 0, v63, s27
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.h, v93.l
	v_mov_b16_e32 v64.h, v93.l
.Ltmp46:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_e32 v135, v134
.Ltmp47:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v63.l, v48.h
	v_mov_b16_e32 v64.l, v49.h
	v_cmp_o_f32_e64 s3, v48, v48
	v_cmp_o_f32_e64 s7, v49, v49
.Ltmp48:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_mov_b32_dpp v135, v135 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v63, 1, v63
	v_and_b32_e32 v64, 1, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v63, v48, v63, 0x7fff
	v_add3_u32 v64, v49, v64, 0x7fff
	v_mov_b16_e32 v48.l, v67.h
	v_mov_b16_e32 v48.h, v93.l
	v_mov_b16_e32 v49.l, v57.h
	v_cndmask_b16 v69.h, 0x7fff, v63.h, s3
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v63, v66, 0, s26
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v49.h, v93.l
	v_cndmask_b16 v69.l, 0x7fff, v64.h, s7
	v_and_b32_e32 v48, 1, v48
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v64, 0, v65, s25
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v65.l, v63.h
	v_mov_b16_e32 v65.h, v93.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v12, v12, v62 :: v_dual_and_b32 v49, 1, v49
	v_mul_f32_e32 v14, v14, v62
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v48, v67, v48, 0x7fff
	v_cmp_o_f32_e64 s3, v67, v67
	v_and_b32_e32 v65, 1, v65
	v_mov_b16_e32 v66.l, v64.h
	v_mov_b16_e32 v66.h, v93.l
	v_add3_u32 v49, v57, v49, 0x7fff
	v_cmp_o_f32_e64 s7, v57, v57
	v_cndmask_b16 v57.h, 0x7fff, v48.h, s3
	v_add3_u32 v65, v63, v65, 0x7fff
	v_cmp_o_f32_e64 s3, v63, v63
	v_mov_b16_e32 v63.l, v56.h
	v_mov_b16_e32 v63.h, v93.l
	v_and_b32_e32 v48, 1, v66
	v_cndmask_b16 v57.l, 0x7fff, v49.h, s7
	v_mov_b16_e32 v49.l, v68.h
	v_mov_b16_e32 v49.h, v93.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v2, v2, v62 :: v_dual_and_b32 v63, 1, v63
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v66.l, v51.h
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v0, v0, v62 :: v_dual_and_b32 v49, 1, v49
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v48, v64, v48, 0x7fff
	v_cndmask_b16 v65.h, 0x7fff, v65.h, s3
	v_cmp_o_f32_e64 s3, v64, v64
	v_mov_b16_e32 v64.l, v58.h
	v_mov_b16_e32 v64.h, v93.l
	v_add3_u32 v63, v56, v63, 0x7fff
	v_cmp_o_f32_e64 s7, v56, v56
	v_and_b32_e32 v56, 1, v66
	v_add3_u32 v49, v68, v49, 0x7fff
	v_and_b32_e32 v64, 1, v64
	v_cndmask_b16 v65.l, 0x7fff, v48.h, s3
	v_cndmask_b16 v48.h, 0x7fff, v63.h, s7
	v_add3_u32 v56, v51, v56, 0x7fff
	v_mov_b16_e32 v63.l, v53.h
	v_mov_b16_e32 v63.h, v93.l
	v_cmp_o_f32_e64 s7, v51, v51
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s8
	v_add3_u32 v49, v58, v64, 0x7fff
	v_cmp_o_f32_e64 s3, v58, v58
	v_and_b32_e32 v58, 1, v63
	v_cndmask_b16 v49.l, 0x7fff, v56.h, s7
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v56, 0, v59, s6
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v51.l, v52.h
	v_mov_b16_e32 v51.h, v93.l
	v_cndmask_b16 v49.h, 0x7fff, v49.h, s3
	v_add3_u32 v58, v53, v58, 0x7fff
	v_cmp_o_f32_e64 s3, v53, v53
	v_mov_b16_e32 v53.l, v56.h
	v_mov_b16_e32 v53.h, v93.l
	.loc	1 895 23                        ; attention.py:895:23
	v_dual_mul_f32 v4, v4, v62 :: v_dual_and_b32 v51, 1, v51
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v59.h, 0x7fff, v58.h, s3
	v_mov_b16_e32 v58.l, v50.h
	v_mov_b16_e32 v58.h, v93.l
	v_and_b32_e32 v53, 1, v53
	v_mov_b16_e32 v63.l, v54.h
	v_mov_b16_e32 v64.l, v55.h
	v_mov_b16_e32 v64.h, v93.l
	v_add3_u32 v51, v52, v51, 0x7fff
	v_and_b32_e32 v58, 1, v58
	v_cmp_o_f32_e64 s3, v52, v52
	v_add3_u32 v52, v56, v53, 0x7fff
	v_and_b32_e32 v53, 1, v64
	v_and_b32_e32 v63, 1, v63
	v_add3_u32 v58, v50, v58, 0x7fff
	v_cmp_o_f32_e64 s7, v54, v54
	v_cmp_o_f32_e64 s8, v55, v55
	v_add3_u32 v50, v55, v53, 0x7fff
	v_add3_u32 v53, v54, v63, 0x7fff
	v_cndmask_b16 v59.l, 0x7fff, v51.h, s3
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v51, 0, v94
	s_waitcnt vmcnt(3)
	ds_store_b128 v51, v[32:35]
	s_waitcnt vmcnt(2)
	ds_store_b128 v51, v[36:39] offset:1024
	s_waitcnt vmcnt(1)
	ds_store_b128 v51, v[40:43] offset:2048
	s_waitcnt vmcnt(0)
	ds_store_b128 v51, v[44:47] offset:3072
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v136.h, 0x7fff, v53.h, s7
	v_cndmask_b16 v136.l, 0x7fff, v50.h, s8
	v_permlanex16_b32 v50, v69, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v53, v65, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 896 30                        ; attention.py:896:30
	v_cmp_o_f32_e64 s6, v56, v56
	v_perm_b32 v32, v50, v69, v91
	v_perm_b32 v33, v50, v69, v92
	v_perm_b32 v36, v53, v65, v91
	v_perm_b32 v37, v53, v65, v92
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v50, v99 offset:512
	ds_load_u16_d16 v41, v99 offset:288
	ds_load_u16_d16 v66, v99 offset:608
	ds_load_u16_d16 v65, v99 offset:352
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v63.l, 0x7fff, v52.h, s6
	v_permlanex16_b32 v52, v57, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v39, v48, s68, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v40, v49, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v78, v99 offset:1600
	ds_load_u16_d16 v55, v99 offset:1792
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v42, v59, s68, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v34, v52, v57, v91
	v_perm_b32 v35, v52, v57, v92
	v_perm_b32 v38, v39, v48, v91
	v_perm_b32 v39, v39, v48, v92
	v_perm_b32 v56, v40, v49, v91
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v74, v99 offset:576
	ds_load_u16_d16 v51, v99 offset:768
	ds_load_u16_d16 v75, v99 offset:832
	ds_load_u16_d16 v52, v99 offset:1024
	ds_load_u16_d16 v76, v99 offset:1088
	ds_load_u16_d16 v53, v99 offset:1280
	ds_load_u16_d16 v77, v99 offset:1344
	ds_load_u16_d16 v54, v99 offset:1536
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v57, v40, v49, v92
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_u16_d16 v48, v99
	ds_load_u16_d16 v49, v99 offset:256
	ds_load_u16_d16 v40, v99 offset:32
	ds_load_u16_d16 v72, v99 offset:64
	ds_load_u16_d16 v73, v99 offset:320
	s_waitcnt lgkmcnt(15)
	ds_load_u16_d16_hi v65, v99 offset:480
	ds_load_u16_d16 v64, v99 offset:96
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v63.h, 0x7fff, v58.h, s5
	v_perm_b32 v58, v42, v59, v91
	v_perm_b32 v59, v42, v59, v92
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v74, v99 offset:704
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v51, v99 offset:896
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v75, v99 offset:960
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v52, v99 offset:1152
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v76, v99 offset:1216
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v53, v99 offset:1408
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v77, v99 offset:1472
	s_waitcnt lgkmcnt(14)
	ds_load_u16_d16_hi v54, v99 offset:1664
	ds_load_u16_d16 v79, v99 offset:1856
	ds_load_u16_d16_hi v78, v99 offset:1728
	ds_load_u16_d16_hi v55, v99 offset:1920
	ds_load_u16_d16 v137, v99 offset:2112
	ds_load_u16_d16 v138, v99 offset:2368
	ds_load_u16_d16 v139, v99 offset:2624
	ds_load_u16_d16 v140, v99 offset:2880
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v48, v99 offset:128
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v40, v99 offset:160
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v72, v99 offset:192
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v64, v99 offset:224
	ds_load_u16_d16_hi v50, v99 offset:640
	ds_load_u16_d16_hi v49, v99 offset:384
	ds_load_u16_d16 v42, v99 offset:544
	ds_load_u16_d16_hi v41, v99 offset:416
	ds_load_u16_d16_hi v73, v99 offset:448
	ds_load_u16_d16 v141, v99 offset:3136
	ds_load_u16_d16 v142, v99 offset:3392
	ds_load_u16_d16 v143, v99 offset:3648
	ds_load_u16_d16 v144, v99 offset:3904
	ds_load_u16_d16 v43, v99 offset:800
	ds_load_u16_d16 v67, v99 offset:864
	ds_load_u16_d16 v44, v99 offset:1056
	ds_load_u16_d16 v68, v99 offset:1120
	ds_load_u16_d16 v45, v99 offset:1312
	ds_load_u16_d16 v69, v99 offset:1376
	ds_load_u16_d16 v46, v99 offset:1568
	ds_load_u16_d16 v70, v99 offset:1632
	ds_load_u16_d16 v145, v99 offset:2048
	ds_load_u16_d16 v47, v99 offset:1824
	s_waitcnt lgkmcnt(29)
	ds_load_u16_d16_hi v79, v99 offset:1984
	ds_load_u16_d16 v71, v99 offset:1888
	ds_load_u16_d16 v146, v99 offset:2304
	ds_load_u16_d16 v153, v99 offset:2080
	s_waitcnt lgkmcnt(30)
	ds_load_u16_d16_hi v137, v99 offset:2240
	ds_load_u16_d16 v161, v99 offset:2144
	ds_load_u16_d16 v147, v99 offset:2560
	ds_load_u16_d16 v154, v99 offset:2336
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v138, v99 offset:2496
	ds_load_u16_d16 v162, v99 offset:2400
	ds_load_u16_d16 v148, v99 offset:2816
	ds_load_u16_d16 v155, v99 offset:2592
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v139, v99 offset:2752
	ds_load_u16_d16 v163, v99 offset:2656
	ds_load_u16_d16 v149, v99 offset:3072
	ds_load_u16_d16 v156, v99 offset:2848
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v140, v99 offset:3008
	ds_load_u16_d16 v164, v99 offset:2912
	ds_load_u16_d16 v150, v99 offset:3328
	ds_load_u16_d16 v157, v99 offset:3104
	s_waitcnt lgkmcnt(33)
	ds_load_u16_d16_hi v141, v99 offset:3264
	ds_load_u16_d16 v165, v99 offset:3168
	ds_load_u16_d16 v151, v99 offset:3584
	ds_load_u16_d16 v158, v99 offset:3360
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v142, v99 offset:3520
	ds_load_u16_d16 v166, v99 offset:3424
	ds_load_u16_d16 v152, v99 offset:3840
	ds_load_u16_d16 v159, v99 offset:3616
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v143, v99 offset:3776
	ds_load_u16_d16 v167, v99 offset:3680
	ds_load_u16_d16 v160, v99 offset:3872
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v144, v99 offset:4032
	ds_load_u16_d16 v168, v99 offset:3936
	ds_load_u16_d16_hi v42, v99 offset:672
	ds_load_u16_d16_hi v66, v99 offset:736
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v43, v99 offset:928
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v67, v99 offset:992
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v44, v99 offset:1184
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v68, v99 offset:1248
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v45, v99 offset:1440
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v69, v99 offset:1504
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v46, v99 offset:1696
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v70, v99 offset:1760
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v145, v99 offset:2176
	s_waitcnt lgkmcnt(44)
	ds_load_u16_d16_hi v47, v99 offset:1952
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v71, v99 offset:2016
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v146, v99 offset:2432
	s_waitcnt lgkmcnt(43)
	ds_load_u16_d16_hi v153, v99 offset:2208
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v161, v99 offset:2272
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v147, v99 offset:2688
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v154, v99 offset:2464
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v162, v99 offset:2528
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v148, v99 offset:2944
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v155, v99 offset:2720
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v163, v99 offset:2784
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v149, v99 offset:3200
	s_waitcnt lgkmcnt(40)
	ds_load_u16_d16_hi v156, v99 offset:2976
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v164, v99 offset:3040
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v150, v99 offset:3456
	s_waitcnt lgkmcnt(39)
	ds_load_u16_d16_hi v157, v99 offset:3232
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v165, v99 offset:3296
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v151, v99 offset:3712
	s_waitcnt lgkmcnt(38)
	ds_load_u16_d16_hi v158, v99 offset:3488
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v166, v99 offset:3552
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v152, v99 offset:3968
	s_waitcnt lgkmcnt(37)
	ds_load_u16_d16_hi v159, v99 offset:3744
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v167, v99 offset:3808
	s_waitcnt lgkmcnt(36)
	ds_load_u16_d16_hi v160, v99 offset:4000
	s_waitcnt lgkmcnt(35)
	ds_load_u16_d16_hi v168, v99 offset:4064
	.loc	1 896 23                        ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[24:31], v[48:55], v[32:39], v[24:31]
	.loc	1 896 30 is_stmt 0              ; attention.py:896:30
	v_permlanex16_b32 v48, v63, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cmp_neq_f32_e64 s3, 0xff800000, v60
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v49, v136, s68, 0xfedcba98 op_sel:[1,0]
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	v_wmma_f32_16x16x16_bf16 v[8:15], v[72:79], v[32:39], v[8:15]
	v_mov_b32_e32 v52, v133
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v60, v48, v63, v91
	.loc	1 885 25 is_stmt 1              ; attention.py:885:25
	v_cndmask_b32_e64 v50, 0, v61, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v61, v48, v63, v92
.Ltmp50:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v48, v134, v135
.Ltmp51:
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v62, v49, v136, v91
	v_perm_b32 v63, v49, v136, v92
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(24)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[40:47], v[32:39], v[16:23]
	s_waitcnt lgkmcnt(23)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[64:71], v[32:39], v[0:7]
	.loc	1 897 23 is_stmt 1              ; attention.py:897:23
	v_fmac_f32_e32 v48, v106, v50
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s3, s39, 32
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[24:31], v[145:152], v[56:63], v[24:31]
	v_wmma_f32_16x16x16_bf16 v[8:15], v[137:144], v[56:63], v[8:15]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[16:23], v[153:160], v[56:63], v[16:23]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[0:7], v[161:168], v[56:63], v[0:7]
	v_mov_b32_e32 v106, v48
	v_mov_b32_e32 v60, v132
	.loc	1 818 13                        ; attention.py:818:13
	s_cmpk_lt_u32 s39, 0x7e0
	s_mov_b32 s39, s3
	s_cbranch_scc0 .LBB0_4
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 822 32                        ; attention.py:822:32
	s_or_b32 s29, s39, s58
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v77, s51 :: v_dual_add_nc_u32 v36, 0, v98
	.loc	1 822 32                        ; attention.py:822:32
	v_mad_u64_u32 v[32:33], null, s29, s56, v[80:81]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v37, s39, v110, 1
	v_add_lshl_u32 v38, s39, v115, 1
	v_add_lshl_u32 v39, s39, v116, 1
	v_add_lshl_u32 v40, s39, v117, 1
	v_add_lshl_u32 v41, s39, v118, 1
	v_add_lshl_u32 v53, s39, v129, 1
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e64 v32, 0x80000000, v32, s31
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v42, s39, v119, 1
	v_add_lshl_u32 v43, s39, v120, 1
	v_add_lshl_u32 v44, s39, v121, 1
	v_add_lshl_u32 v45, s39, v122, 1
	.loc	1 823 32                        ; attention.py:823:32
	buffer_load_b128 v[32:35], v32, s[60:63], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_add_lshl_u32 v46, s39, v123, 1
	v_add_lshl_u32 v47, s39, v124, 1
	v_add_lshl_u32 v48, s39, v125, 1
	v_add_lshl_u32 v49, s39, v126, 1
	v_add_lshl_u32 v50, s39, v127, 1
	v_add_lshl_u32 v51, s39, v128, 1
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v76, s50 :: v_dual_mov_b32 v73, s47
	v_dual_mov_b32 v74, s48 :: v_dual_mov_b32 v71, s45
	v_mov_b32_e32 v72, s46
	v_mov_b32_e32 v70, s44
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v36, v[32:33]
	ds_store_b64 v105, v[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 838 37                        ; attention.py:838:37
	s_clause 0xf
	buffer_load_u16 v69, v37, s[64:67], 0 offen
	buffer_load_u16 v68, v38, s[64:67], 0 offen
	buffer_load_u16 v67, v39, s[64:67], 0 offen
	buffer_load_u16 v66, v40, s[64:67], 0 offen
	buffer_load_u16 v65, v41, s[64:67], 0 offen
	buffer_load_u16 v64, v42, s[64:67], 0 offen
	buffer_load_u16 v63, v43, s[64:67], 0 offen
	buffer_load_u16 v62, v44, s[64:67], 0 offen
	buffer_load_u16 v61, v45, s[64:67], 0 offen
	buffer_load_u16 v59, v46, s[64:67], 0 offen
	buffer_load_u16 v58, v47, s[64:67], 0 offen
	buffer_load_u16 v57, v48, s[64:67], 0 offen
	buffer_load_u16 v56, v49, s[64:67], 0 offen
	buffer_load_u16 v55, v50, s[64:67], 0 offen
	buffer_load_u16 v54, v51, s[64:67], 0 offen
	buffer_load_u16 v53, v53, s[64:67], 0 offen
	.loc	1 828 33                        ; attention.py:828:33
	v_dual_mov_b32 v75, s49 :: v_dual_add_nc_u32 v32, 0, v101
	.loc	1 823 32                        ; attention.py:823:32
	ds_load_2addr_stride64_b64 v[48:51], v32 offset1:1
	ds_load_2addr_stride64_b64 v[132:135], v107 offset1:1
	ds_load_2addr_stride64_b64 v[136:139], v108 offset1:1
	ds_load_2addr_stride64_b64 v[140:143], v109 offset1:1
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[48:49], v[83:84], v[70:77] neg_lo:[1,1,0]
	v_mov_b32_e32 v49, 0
	v_wmma_i32_16x16x16_iu4 v[32:39], v[50:51], v[83:84], v[70:77] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_3)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[132:133], v[87:88], v[40:47] neg_lo:[1,1,0]
	v_mov_b32_e32 v48, 0
	v_mov_b32_e32 v50, 0
	v_wmma_i32_16x16x16_iu4 v[32:39], v[134:135], v[87:88], v[32:39] neg_lo:[1,1,0]
	v_mov_b32_e32 v51, 0
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[136:137], v[85:86], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[138:139], v[85:86], v[32:39] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[40:47], v[140:141], v[89:90], v[40:47] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[32:39], v[142:143], v[89:90], v[32:39] neg_lo:[1,1,0]
	.loc	1 877 34                        ; attention.py:877:34
	s_and_saveexec_b32 s5, vcc_lo
	s_cbranch_execz .LBB0_1
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	.loc	1 870 25                        ; attention.py:870:25
	v_add_nc_u32_e32 v48, s39, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 877 34                        ; attention.py:877:34
	v_ashrrev_i32_e32 v49, 31, v48
	v_add_co_u32 v48, s3, s52, v48
	v_add_co_ci_u32_e64 v49, null, s53, v49, s3
	global_load_b128 v[48:51], v[48:49], off
	s_branch .LBB0_1
.LBB0_4:
	.loc	1 818 13                        ; attention.py:818:13
	ds_bpermute_b32 v37, v100, v48
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v39.h, v93.l
	v_mov_b16_e32 v40.h, v93.l
	v_mov_b16_e32 v38.h, v93.l
	.loc	1 1046 74                       ; attention.py:1046:74
	v_lshrrev_b32_e32 v33, 1, v96
	.loc	1 1046 24 is_stmt 0             ; attention.py:1046:24
	v_mul_lo_u32 v32, s57, v95
	s_mov_b32 s11, 0x31027000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1047 63 is_stmt 1             ; attention.py:1047:63
	v_cmp_gt_i32_e64 s5, s57, v33
	.loc	1 1046 74                       ; attention.py:1046:74
	v_or_b32_e32 v36, 48, v33
	v_or_b32_e32 v35, 16, v33
	v_or_b32_e32 v34, 32, v33
	.loc	1 1047 63                       ; attention.py:1047:63
	v_cmp_gt_i32_e64 s4, s57, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_gt_i32_e64 s3, s57, v35
	v_cmp_gt_i32_e64 s1, s57, v34
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
	v_mov_b16_e32 v47.h, v93.l
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
	v_mov_b16_e32 v25.h, v93.l
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
	v_mov_b16_e32 v42.h, v93.l
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
	v_mov_b16_e32 v45.h, v93.l
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
	v_mov_b16_e32 v39.h, v93.l
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
	v_mov_b16_e32 v43.h, v93.l
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
	v_mov_b16_e32 v38.h, v93.l
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
	v_mov_b16_e32 v41.h, v93.l
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
	v_mov_b16_e32 v39.h, v93.l
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
	v_mov_b16_e32 v18.h, v93.l
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
	v_mov_b16_e32 v39.h, v93.l
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
	v_mov_b16_e32 v39.h, v93.l
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
	v_mov_b16_e32 v20.h, v93.l
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
	v_mov_b16_e32 v41.h, v93.l
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
	v_mov_b16_e32 v30.h, v93.l
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
	v_mov_b16_e32 v40.h, v93.l
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
	v_mov_b16_e32 v22.h, v93.l
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
	v_mov_b16_e32 v29.h, v93.l
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
	v_mov_b16_e32 v11.h, v93.l
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
	v_mov_b16_e32 v19.h, v93.l
	v_cndmask_b16 v11.l, 0x7fff, v29.h, s7
	.loc	1 1044 48                       ; attention.py:1044:48
	v_fma_f32 v22, -v38, v12, v15
	v_mul_f32_e32 v23, v14, v20
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v19.l, v8.h
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v10, 0, v10, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v29.h, v93.l
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
	v_mov_b16_e32 v29.h, v93.l
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
	v_mov_b16_e32 v10.h, v93.l
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
	v_mov_b16_e32 v29.h, v93.l
	v_mov_b16_e32 v14.h, v93.l
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
	v_mov_b16_e32 v12.h, v93.l
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fmas_f32 v4, v4, v20, v39
	v_div_fixup_f32 v2, v2, v37, v7
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v7.l, v5.h
	v_mov_b16_e32 v7.h, v93.l
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	.loc	1 1044 48                       ; attention.py:1044:48
	v_div_fixup_f32 v4, v4, v37, v6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v6.l, v3.h
	v_mov_b16_e32 v6.h, v93.l
	.loc	1 1044 19                       ; attention.py:1044:19
	v_cndmask_b32_e64 v2, 0, v2, s6
	.loc	1 1049 36                       ; attention.py:1049:36
	v_mov_b16_e32 v10.h, v93.l
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
	v_perm_b32 v0, v2, v3, v91
	v_perm_b32 v1, v2, v3, v92
	v_perm_b32 v2, v4, v5, v91
	v_perm_b32 v3, v4, v5, v92
	v_perm_b32 v4, v6, v7, v91
	v_perm_b32 v5, v6, v7, v92
	v_perm_b32 v6, v8, v12, v91
	v_perm_b32 v7, v8, v12, v92
	v_perm_b32 v12, v13, v16, v91
	v_perm_b32 v13, v13, v16, v92
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v16, v32, v33, 1
	.loc	1 1049 36                       ; attention.py:1049:36
	v_perm_b32 v8, v10, v14, v91
	v_perm_b32 v9, v10, v14, v92
	v_perm_b32 v10, v11, v15, v91
	v_perm_b32 v11, v11, v15, v92
	v_perm_b32 v14, v18, v17, v91
	v_perm_b32 v15, v18, v17, v92
	.loc	1 1049 17                       ; attention.py:1049:17
	v_add_lshl_u32 v17, v32, v35, 1
	v_add_lshl_u32 v18, v32, v34, 1
	v_cndmask_b32_e32 v16, 0x80000000, v16, vcc_lo
	.loc	1 1047 24 is_stmt 1             ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1049 17                       ; attention.py:1049:17
	s_and_b32 s9, s55, 0xffff
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 1047 24                       ; attention.py:1047:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 1049 17                       ; attention.py:1049:17
	s_mov_b32 s8, s54
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
.Ltmp52:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
		.amdhsa_next_free_vgpr 169
		.amdhsa_next_free_sgpr 69
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_vgpr, 169
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.numbered_sgpr, 69
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 12276
; TotalNumSgprs: 71
; NumVgprs: 169
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 71
; NumVGPRsForWavesPerEU: 169
; Occupancy: 8
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp22-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp22-.Lfunc_begin0
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_bool_full_bfloat16_d64_dv64_hq16_hkv8_lq2048_lk2048_bm32_bn32_w2_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     169
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
