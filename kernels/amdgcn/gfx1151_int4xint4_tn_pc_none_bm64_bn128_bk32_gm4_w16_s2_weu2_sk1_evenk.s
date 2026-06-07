	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[18:19], s[0:1], 0x30
	s_load_b32 s20, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	.loc	1 100 14                        ; generate_amdgcn.py:100:14
	v_lshrrev_b32_e32 v26, 5, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v20, 1, v0
	v_dual_mov_b32 v16, 0 :: v_dual_and_b32 v23, 15, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	v_lshlrev_b32_e32 v22, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v12, v16 :: v_dual_and_b32 v21, 0x70, v20
	v_mov_b32_e32 v15, v16
	v_mov_b32_e32 v14, v16
	v_dual_mov_b32 v13, v16 :: v_dual_add_nc_u32 v24, 0, v22
	v_mov_b32_e32 v10, v16
	v_mov_b32_e32 v9, v16
	v_mov_b32_e32 v8, v16
	v_mov_b32_e32 v7, v16
	v_mov_b32_e32 v6, v16
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s19, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s18, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s9, s9, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s12, s4, 2
	v_mov_b32_e32 v5, v16
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s12
	v_mov_b32_e32 v4, v16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add_nc_u32_e32 v25, v24, v22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s8, s8, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s8, s5, s8
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s12
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s10, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s10, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s13, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s14, s13, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s13, s13, s12
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s14
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s13
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s15, s4, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s13, s2
	s_abs_i32 s16, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s16
	s_sub_i32 s21, 0, s16
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_2)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s17, s4, 0x4f7ffffe
	s_load_b256 s[4:11], s[0:1], 0x0
	s_cvt_u32_f32 s17, s17
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s21, s21, s17
	s_mul_hi_u32 s12, s17, s21
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s17, s17, s12
	s_xor_b32 s12, s2, s15
	s_mul_hi_u32 s17, s13, s17
	s_ashr_i32 s21, s12, 31
	s_mul_i32 s22, s17, s16
	s_add_i32 s23, s17, 1
	s_sub_i32 s22, s13, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s24, s22, s16
	s_cmp_ge_u32 s22, s16
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[12:13], s[6:7]
	s_cselect_b32 s6, s23, s17
	s_cselect_b32 s7, s24, s22
	s_add_i32 s17, s6, 1
	s_cmp_ge_u32 s7, s16
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s6, s17, s6
	.loc	1 107 23                        ; generate_amdgcn.py:107:23
	s_lshl_b32 s23, s3, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s22, s6, s21
	s_mov_b32 s6, 0x7ffffffe
	s_sub_i32 s16, s22, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s15, s16, s15
	s_sub_i32 s2, s2, s15
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	s_mul_i32 s15, s18, s23
	.loc	1 92 13                         ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s14
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	s_mul_i32 s14, s19, s23
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s3, s2, 6
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s2, s16, 7
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_gt_i32 s20, 1
	s_load_b64 s[16:17], s[0:1], 0x20
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v1, 31, v0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_and_b32 s13, s13, 0xffff
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lt_i32 s20, 34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v17, 1, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v18, 2, v1
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_mad_u64_u32 v[1:2], null, s18, v26, v[17:18]
	.loc	1 117 30                        ; generate_amdgcn.py:117:30
	v_mad_u64_u32 v[2:3], null, s19, v26, v[18:19]
	v_mov_b32_e32 v3, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 111 30                        ; generate_amdgcn.py:111:30
	v_add3_u32 v1, s15, s3, v1
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s15, s7
	.loc	1 117 30 is_stmt 0              ; generate_amdgcn.py:117:30
	v_add3_u32 v2, s14, s2, v2
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_mov_b32 s14, s6
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 111 22 is_stmt 1              ; generate_amdgcn.py:111:22
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_cndmask_b32 v2, 0x80000000, v2
	buffer_load_u16 v27, v1, s[4:7], 0 offen
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v28, v2, s[12:15], 0 offen
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v1, 4, v0
	v_mov_b32_e32 v2, v16
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt vmcnt(1)
	ds_store_b16 v24, v27 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v25, v28
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_or_b32 v19, v1, 16, v23
	v_mov_b32_e32 v11, v16
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mov_b32 v1, v16 :: v_dual_add_nc_u32 v22, 0, v19
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	v_add3_u32 v2, s23, v26, 16
	s_lshl_b32 s14, s22, 7
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v3, 0, v23
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s1, s20, 1
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_mul_lo_u32 v4, s19, v2
	v_mul_lo_u32 v5, s18, v2
	s_lshl_b32 s15, s21, 7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:105:32 ]
	s_add_i32 s1, s1, 15
	v_mov_b32_e32 v2, v1
	v_add_nc_u32_e32 v26, v3, v21
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v7, v1
.Ltmp13:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add3_u32 v6, v4, s14, v18
	v_mov_b32_e32 v4, v1
	v_add3_u32 v17, v5, s3, v17
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v8, v1
	v_subrev_nc_u32_e32 v18, s15, v6
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:105:32 ]
	s_lshr_b32 s1, s1, 4
.Ltmp15:
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_lshl_b32 s0, s19, 4
	s_add_i32 s1, s1, -1
	s_lshl_b32 s18, s18, 4
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	buffer_load_u16 v39, v17, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	buffer_load_b32 v40, v18, s[12:15], 0 offen
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v27, v22 offset:2368
	ds_load_u8 v28, v22 offset:2304
	ds_load_u8 v29, v22 offset:2496
	ds_load_u8 v30, v22 offset:2432
	ds_load_u8 v31, v22 offset:2112
	ds_load_u8 v32, v22 offset:2048
	ds_load_u8 v33, v22 offset:2240
	ds_load_u8 v34, v22 offset:2176
	ds_load_u8 v35, v22 offset:2272
	ds_load_u8 v36, v22 offset:2208
	ds_load_u8 v37, v22 offset:2144
	ds_load_u8 v38, v22 offset:2080
	ds_load_u8 v41, v26 offset:640
	ds_load_u8 v42, v26 offset:896
	ds_load_u8 v43, v26 offset:768
	ds_load_u8 v44, v26 offset:512
	ds_load_u8 v45, v26 offset:128
	ds_load_u8 v46, v26 offset:384
	ds_load_u8 v47, v26 offset:256
	ds_load_u8 v48, v26
	ds_load_u8 v49, v22 offset:2880
	ds_load_u8 v50, v22 offset:2816
	ds_load_u8 v51, v22 offset:3008
	ds_load_u8 v52, v22 offset:2944
	ds_load_u8 v53, v22 offset:2624
	ds_load_u8 v54, v22 offset:2560
	ds_load_u8 v55, v22 offset:2752
	ds_load_u8 v56, v22 offset:2688
	ds_load_u8 v57, v26 offset:1664
	ds_load_u8 v58, v26 offset:1920
	ds_load_u8 v59, v26 offset:1792
	ds_load_u8 v60, v26 offset:1536
	ds_load_u8 v61, v26 offset:1152
	ds_load_u8 v62, v26 offset:1408
	ds_load_u8 v63, v26 offset:1280
	ds_load_u8 v64, v26 offset:1024
	ds_load_u8 v65, v22 offset:2528
	ds_load_u8 v66, v22 offset:2464
	ds_load_u8 v67, v22 offset:2400
	ds_load_u8 v68, v22 offset:2336
	ds_load_u8 v69, v22 offset:3040
	ds_load_u8 v70, v22 offset:2976
	ds_load_u8 v71, v22 offset:2912
	ds_load_u8 v72, v22 offset:2848
	ds_load_u8 v73, v22 offset:2784
	ds_load_u8 v74, v22 offset:2720
	ds_load_u8 v75, v22 offset:2656
	ds_load_u8 v76, v22 offset:2592
	s_waitcnt lgkmcnt(46)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(44)
	v_perm_b32 v28, v30, v29, 0xc0c0004
	s_waitcnt lgkmcnt(42)
	v_perm_b32 v29, v32, v31, 0xc0c0004
	s_waitcnt lgkmcnt(40)
	v_perm_b32 v30, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(32)
	v_perm_b32 v31, v44, v41, 0xc0c0004
	v_perm_b32 v32, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v33, v48, v45, 0xc0c0004
	v_perm_b32 v34, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v41, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v50, v66, v65, 0xc0c0004
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v49, v68, v67, 0xc0c0004
	v_perm_b32 v35, v36, v35, 0xc0c0004
	v_perm_b32 v42, v52, v51, 0xc0c0004
	v_perm_b32 v43, v54, v53, 0xc0c0004
	v_perm_b32 v44, v56, v55, 0xc0c0004
	v_perm_b32 v45, v60, v57, 0xc0c0004
	v_perm_b32 v46, v59, v58, 0xc0c0004
	v_perm_b32 v47, v64, v61, 0xc0c0004
	v_perm_b32 v48, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v38, v72, v71, 0xc0c0004
	v_perm_b32 v51, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v76, v75, 0xc0c0004
	v_perm_b32 v53, v74, v73, 0xc0c0004
	v_lshl_or_b32 v28, v28, 16, v27
	v_lshl_or_b32 v27, v30, 16, v29
	v_lshl_or_b32 v30, v32, 16, v31
	v_lshl_or_b32 v29, v34, 16, v33
	v_lshl_or_b32 v36, v50, 16, v49
	v_lshl_or_b32 v35, v35, 16, v37
	v_lshl_or_b32 v32, v42, 16, v41
	v_lshl_or_b32 v31, v44, 16, v43
	v_lshl_or_b32 v34, v46, 16, v45
	v_lshl_or_b32 v33, v48, 16, v47
	v_lshl_or_b32 v38, v51, 16, v38
	v_lshl_or_b32 v37, v53, 16, v52
	v_wmma_i32_16x16x16_iu4 v[1:8], v[29:30], v[27:28], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[29:30], v[35:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	v_add_nc_u32_e32 v18, s0, v18
	v_add_nc_u32_e32 v17, s18, v17
	s_add_i32 s1, s1, -1
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[31:32], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[37:38], v[9:16] neg_lo:[1,1,0]
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cmp_lg_u32 s1, 0
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v24, v39 offset:2048
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	s_waitcnt vmcnt(0)
	ds_store_b32 v25, v40
	.loc	1 105 9                         ; generate_amdgcn.py:105:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 111 22                        ; generate_amdgcn.py:111:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	ds_load_u8 v17, v22 offset:2368
	ds_load_u8 v18, v22 offset:2304
	ds_load_u8 v24, v22 offset:2496
	ds_load_u8 v25, v22 offset:2432
	.loc	1 117 22                        ; generate_amdgcn.py:117:22
	v_add3_u32 v26, 0, v23, v21
	.loc	1 118 23                        ; generate_amdgcn.py:118:23
	ds_load_u8 v23, v22 offset:2112
	ds_load_u8 v27, v22 offset:2048
	ds_load_u8 v28, v22 offset:2240
	ds_load_u8 v29, v22 offset:2176
	ds_load_u8 v30, v26 offset:640
	ds_load_u8 v31, v26 offset:896
	ds_load_u8 v32, v26 offset:768
	ds_load_u8 v33, v26 offset:512
	ds_load_u8 v34, v26 offset:128
	ds_load_u8 v35, v26 offset:384
	ds_load_u8 v36, v26 offset:256
	ds_load_u8 v37, v26
	ds_load_u8 v38, v22 offset:2528
	ds_load_u8 v39, v22 offset:2464
	ds_load_u8 v40, v22 offset:2400
	ds_load_u8 v41, v22 offset:2336
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v23, v27, v23, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v27, v37, v34, 0xc0c0004
	v_perm_b32 v17, v18, v17, 0xc0c0004
	v_perm_b32 v18, v25, v24, 0xc0c0004
	v_perm_b32 v24, v29, v28, 0xc0c0004
	ds_load_u8 v25, v22 offset:2272
	ds_load_u8 v42, v22 offset:2208
	ds_load_u8 v43, v22 offset:2144
	ds_load_u8 v44, v22 offset:2080
	v_perm_b32 v28, v36, v35, 0xc0c0004
	v_lshl_or_b32 v18, v18, 16, v17
	v_lshl_or_b32 v17, v24, 16, v23
	v_perm_b32 v23, v33, v30, 0xc0c0004
	v_perm_b32 v24, v32, v31, 0xc0c0004
	ds_load_u8 v29, v22 offset:2880
	ds_load_u8 v30, v22 offset:2816
	ds_load_u8 v31, v22 offset:3008
	ds_load_u8 v32, v22 offset:2944
	v_lshl_or_b32 v24, v24, 16, v23
	v_lshl_or_b32 v23, v28, 16, v27
	ds_load_u8 v27, v22 offset:2624
	ds_load_u8 v28, v22 offset:2560
	ds_load_u8 v33, v22 offset:2752
	ds_load_u8 v34, v22 offset:2688
	ds_load_u8 v35, v26 offset:1664
	ds_load_u8 v36, v26 offset:1920
	ds_load_u8 v37, v26 offset:1792
	ds_load_u8 v45, v26 offset:1536
	ds_load_u8 v46, v26 offset:1152
	ds_load_u8 v47, v26 offset:1408
	ds_load_u8 v48, v26 offset:1280
	ds_load_u8 v26, v26 offset:1024
	ds_load_u8 v49, v22 offset:3040
	ds_load_u8 v50, v22 offset:2976
	ds_load_u8 v51, v22 offset:2912
	ds_load_u8 v52, v22 offset:2848
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v25, v42, v25, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v27, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v28, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v33, v37, v36, 0xc0c0004
	v_perm_b32 v29, v30, v29, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v17, v28, 16, v27
	v_perm_b32 v30, v32, v31, 0xc0c0004
	ds_load_u8 v31, v22 offset:2784
	ds_load_u8 v32, v22 offset:2720
	ds_load_u8 v53, v22 offset:2656
	ds_load_u8 v22, v22 offset:2592
	v_perm_b32 v28, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v27, v45, v35, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v34, v26, v46, 0xc0c0004
	v_lshl_or_b32 v18, v30, 16, v29
	v_perm_b32 v29, v39, v38, 0xc0c0004
	v_perm_b32 v30, v44, v43, 0xc0c0004
	v_perm_b32 v35, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v26, v29, 16, v28
	v_lshl_or_b32 v25, v25, 16, v30
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v52, v51, 0xc0c0004
	v_perm_b32 v30, v50, v49, 0xc0c0004
	v_lshl_or_b32 v28, v33, 16, v27
	v_lshl_or_b32 v27, v35, 16, v34
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[25:26], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v31, v32, v31, 0xc0c0004
	v_lshl_or_b32 v23, v30, 16, v29
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v22, v22, v53, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[17:18], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v22, v31, 16, v22
	v_wmma_i32_16x16x16_iu4 v[9:16], v[27:28], v[22:23], v[9:16] neg_lo:[1,1,0]
.LBB0_5:                                ; %._crit_edge._crit_edge
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v17, 32, v19
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v18, v0, 4, 1
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v22, s3, v19
	.loc	1 128 14 is_stmt 0              ; generate_amdgcn.py:128:14
	s_and_b32 s21, s9, 0xffff
	s_mov_b32 s23, 0x31027000
	.loc	1 128 22                        ; generate_amdgcn.py:128:22
	v_or_b32_e32 v23, s3, v17
	.loc	1 129 22 is_stmt 1              ; generate_amdgcn.py:129:22
	v_or3_b32 v18, v18, v21, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_dual_mov_b32 v30, 0x5410 :: v_dual_lshlrev_b32 v21, 1, v22
	s_mov_b32 s22, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v31, 0x7632 :: v_dual_lshlrev_b32 v22, 1, v23
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_mov_b32 s20, s8
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v20, 0x78, v20
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_clause 0x1
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v19, s19, v19
	v_mul_lo_u32 v17, s19, v17
	s_mul_i32 s3, s3, s19
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_and_b32 s21, s11, 0xffff
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v20, s3, s2, v20
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	s_mov_b32 s20, s10
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v19, v20, v19, 1
	v_add_lshl_u32 v17, v20, v17, 1
	.loc	1 127 15                        ; generate_amdgcn.py:127:15
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v16, v16
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v8, v8
	v_cvt_f32_i32_e32 v15, v15
	s_mov_b32 s15, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s17, s17, 0xffff
	s_mov_b32 s18, s22
	s_mov_b32 s19, s23
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v20, 16, v21
	.loc	1 129 22                        ; generate_amdgcn.py:129:22
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v21, 16, v22
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 129 14                        ; generate_amdgcn.py:129:14
	v_or_b32_e32 v23, 4, v18
	v_or_b32_e32 v24, 8, v18
	v_or_b32_e32 v25, 12, v18
	v_or_b32_e32 v26, 16, v18
	v_or_b32_e32 v27, 20, v18
	v_or_b32_e32 v28, 24, v18
	v_or_b32_e32 v29, 28, v18
	s_clause 0x7
	buffer_load_u16 v18, v18, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	buffer_load_u16 v26, v26, s[20:23], 0 offen
	buffer_load_u16 v27, v27, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v22, 16, v23
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v23, 16, v24
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v24, 16, v25
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v25, 16, v26
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v26, 16, v27
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v27, 16, v28
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v37, v20, v27 :: v_dual_lshlrev_b32 v28, 16, v29
	v_dual_mul_f32 v27, v21, v27 :: v_dual_lshlrev_b32 v18, 16, v18
	v_dual_mul_f32 v35, v20, v25 :: v_dual_and_b32 v0, 16, v0
	v_dual_mul_f32 v34, v20, v24 :: v_dual_mul_f32 v25, v21, v25
	v_mul_f32_e32 v29, v20, v18
	v_mul_f32_e32 v18, v21, v18
	v_mul_f32_e32 v32, v20, v22
	v_mul_f32_e32 v33, v20, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v36, v20, v26 :: v_dual_mul_f32 v1, v29, v1
	v_dual_mul_f32 v22, v21, v22 :: v_dual_mul_f32 v9, v18, v9
	v_mul_f32_e32 v23, v21, v23
	v_dual_mul_f32 v24, v21, v24 :: v_dual_mul_f32 v5, v35, v5
	v_mul_f32_e32 v26, v21, v26
	.loc	1 130 9 is_stmt 0               ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v2, v32, v2 :: v_dual_mul_f32 v7, v37, v7
	v_mul_f32_e32 v3, v33, v3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v21, v21, v28
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v4, v34, v4 :: v_dual_mul_f32 v13, v25, v13
	v_mul_f32_e32 v12, v24, v12
	.loc	1 190 9 is_stmt 1               ; generate_amdgcn.py:190:9
	v_bfe_u32 v18, v1, 16, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v16, v21, v16
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v21, v2, 16, 1
	v_bfe_u32 v24, v5, 16, 1
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v11, v23, v11
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v23, v4, 16, 1
	v_cmp_o_f32_e32 vcc_lo, v1, v1
	v_cmp_o_f32_e64 s1, v2, v2
	v_cmp_o_f32_e64 s4, v5, v5
	v_add3_u32 v1, v1, v18, 0x7fff
	v_add3_u32 v2, v2, v21, 0x7fff
	v_add3_u32 v5, v5, v24, 0x7fff
	v_cmp_o_f32_e64 s3, v4, v4
	v_add3_u32 v4, v4, v23, 0x7fff
	v_cndmask_b16 v1.l, 0x7fff, v1.h, vcc_lo
	v_cndmask_b16 v1.h, 0x7fff, v2.h, s1
	v_cndmask_b16 v4.l, 0x7fff, v5.h, s4
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v10, v22, v10
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v22, v3, 16, 1
	v_cmp_o_f32_e64 s2, v3, v3
	.loc	1 130 16                        ; generate_amdgcn.py:130:16
	v_mul_f32_e32 v20, v20, v28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_o_f32_e64 s6, v7, v7
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_dual_mul_f32 v6, v36, v6 :: v_dual_mul_f32 v15, v27, v15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v3, v22, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v8, v20, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v20, v9, 16, 1
	v_bfe_u32 v25, v6, 16, 1
	v_cmp_o_f32_e64 s5, v6, v6
	v_cndmask_b16 v3.l, 0x7fff, v3.h, s2
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s3
	.loc	1 130 9                         ; generate_amdgcn.py:130:9
	v_mul_f32_e32 v14, v26, v14
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_bfe_u32 v26, v7, 16, 1
	v_bfe_u32 v33, v13, 16, 1
	v_add3_u32 v6, v6, v25, 0x7fff
	v_cmp_o_f32_e64 s0, v9, v9
	v_cmp_o_f32_e64 s11, v13, v13
	v_add3_u32 v7, v7, v26, 0x7fff
	v_add3_u32 v9, v9, v20, 0x7fff
	v_add3_u32 v13, v13, v33, 0x7fff
	v_cndmask_b16 v4.h, 0x7fff, v6.h, s5
	v_bfe_u32 v29, v11, 16, 1
	v_cndmask_b16 v5.l, 0x7fff, v7.h, s6
	v_cndmask_b32_e32 v7, 0x1054, v30, vcc_lo
	v_bfe_u32 v27, v8, 16, 1
	v_cmp_o_f32_e64 s7, v8, v8
	v_bfe_u32 v35, v15, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v9.h, s0
	v_lshl_or_b32 v7, v7, 8, v7
	v_add3_u32 v8, v8, v27, 0x7fff
	v_cndmask_b16 v9.l, 0x7fff, v13.h, s11
	v_dual_cndmask_b32 v6, v4, v1 :: v_dual_cndmask_b32 v1, v1, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 0x540054, v7
	v_cndmask_b16 v5.h, 0x7fff, v8.h, s7
	v_bfe_u32 v28, v10, 16, 1
	v_bfe_u32 v32, v12, 16, 1
	v_cmp_o_f32_e64 s8, v10, v10
	v_lshl_or_b32 v7, v7, 4, v7
	v_dual_cndmask_b32 v4, v5, v3 :: v_dual_cndmask_b32 v3, v3, v5
	v_bfe_u32 v34, v14, 16, 1
	v_cmp_o_f32_e64 s9, v11, v11
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v7, 0x5040504, v7
	v_bfe_u32 v36, v16, 16, 1
	v_cmp_o_f32_e64 s10, v12, v12
	v_cmp_o_f32_e64 s12, v14, v14
	v_cmp_o_f32_e64 s13, v15, v15
	v_cmp_o_f32_e64 s14, v16, v16
	v_add3_u32 v10, v10, v28, 0x7fff
	v_add3_u32 v11, v11, v29, 0x7fff
	v_add3_u32 v12, v12, v32, 0x7fff
	v_add3_u32 v14, v14, v34, 0x7fff
	v_add3_u32 v15, v15, v35, 0x7fff
	v_add3_u32 v16, v16, v36, 0x7fff
	v_cndmask_b16 v2.h, 0x7fff, v10.h, s8
	v_cndmask_b16 v0.l, 0x7fff, v11.h, s9
	v_cndmask_b16 v0.h, 0x7fff, v12.h, s10
	v_cndmask_b16 v9.h, 0x7fff, v14.h, s12
	v_cndmask_b16 v10.l, 0x7fff, v15.h, s13
	v_cndmask_b16 v10.h, 0x7fff, v16.h, s14
	v_cndmask_b32_e32 v8, 0x3276, v31, vcc_lo
	v_permlanex16_b32 v1, v1, s15, 0xfedcba98 op_sel:[1,0]
	v_dual_cndmask_b32 v5, v9, v2 :: v_dual_cndmask_b32 v2, v2, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v9, v10, v0, vcc_lo
	v_lshl_or_b32 v8, v8, 8, v8
	v_cndmask_b32_e32 v0, v0, v10, vcc_lo
	v_permlanex16_b32 v3, v3, s15, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v10, v2, s15, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v8, 0x760076, v8
	v_permlanex16_b32 v11, v0, s15, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v0, v1, v6, v7
	v_perm_b32 v2, v3, v4, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v8, v8, 4, v8
	v_and_b32_e32 v8, 0x7060706, v8
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v1, v1, v6, v8
	v_perm_b32 v3, v3, v4, v8
	v_perm_b32 v4, v10, v5, v7
	v_perm_b32 v5, v10, v5, v8
	v_perm_b32 v6, v11, v9, v7
	v_perm_b32 v7, v11, v9, v8
	s_clause 0x1
	buffer_store_b128 v[0:3], v19, s[16:19], 0 offen
	buffer_store_b128 v[4:7], v17, s[16:19], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 80
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
		.amdhsa_next_free_vgpr 77
		.amdhsa_next_free_sgpr 25
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
		.amdhsa_inst_pref_size 33
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 77
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 25
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4148
; TotalNumSgprs: 27
; NumVgprs: 77
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 27
; NumVGPRsForWavesPerEU: 77
; Occupancy: 16
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
	.byte	0                               ; EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x5c DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	87                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	105                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"generate_amdgcn.py"            ; string offset=7 ; generate_amdgcn.py
.Linfo_string2:
	.asciz	"<repo>/scripts" ; string offset=26 ; <repo>/scripts
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
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
      - .offset:         48
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .max_flat_workgroup_size: 512
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_pc_none_bm64_bn128_bk32_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     77
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
