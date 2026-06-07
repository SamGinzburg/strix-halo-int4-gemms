	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v2, 31, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 5, v0
	v_dual_mov_b32 v17, 0 :: v_dual_and_b32 v22, 15, v0
	v_dual_mov_b32 v10, 0 :: v_dual_lshlrev_b32 v7, 2, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v9, 1, v0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_bfe_u32 v19, v0, 4, 1
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_add_nc_u32_e32 v23, 0, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v20, 0x70, v9
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v24, 0, v7
	v_mov_b32_e32 v12, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s14, 31
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
	s_lshr_b32 s9, s9, 27
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
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s13, s4, 2
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s14, v3, v[2:3]
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	v_rcp_iflag_f32_e32 v1, s5
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s8, s8, s5
	s_mul_hi_u32 s8, s5, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s8
	s_xor_b32 s8, s2, s13
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
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
	s_sub_i32 s18, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s19, s18, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s18, s18, s13
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s19
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s18
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s21, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s20, s21
	s_abs_i32 s13, s2
	s_cvt_f32_u32 s16, s20
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v1, 2, v2
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s22, s16, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[16:17], s[6:7]
	s_sub_i32 s7, 0, s20
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s15, v3, v[1:2]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s22
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s7, s6
	s_mul_hi_u32 s7, s6, s7
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s18, s13, s6
	s_xor_b32 s6, s2, s21
	s_mul_i32 s23, s18, s20
	s_ashr_i32 s22, s6, 31
	s_sub_i32 s13, s13, s23
	s_add_i32 s23, s18, 1
	s_sub_i32 s24, s13, s20
	s_cmp_ge_u32 s13, s20
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s18, s23, s18
	s_cselect_b32 s13, s24, s13
	s_add_i32 s23, s18, 1
	s_cmp_ge_u32 s13, s20
	s_cselect_b32 s13, s23, s18
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s18, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s23, s13, s22
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s20, s3, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s24, s12, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s18
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s25, s23, s22
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s20, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s24, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s26, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s25, s21
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s21, s24, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s26, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s19
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s13, s14, s20
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s28, s25, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s30, s21, 5
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s29, s2, 5
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s18, s15, s20
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s24, 31
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s13, s29, v4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s18, s28, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s3, s2, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s18, s6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_mov_b32 s19, s7
	s_and_b32 s17, s17, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u8 v6, v4, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v5, v5, s[16:19], 0 offen
	s_load_b64 s[12:13], s[0:1], 0x20
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s30, -1
	s_cmp_lt_i32 s24, 64
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(1)
	ds_store_b8 v23, v6 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v5
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v18, v4, v22
	v_add_nc_u32_e32 v21, 0, v18
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s3, s20, 16
	s_lshl_b32 s0, s23, 7
	v_add_nc_u32_e32 v6, s3, v3
	v_add3_u32 v4, s29, v4, v22
	v_dual_mov_b32 v10, 0 :: v_dual_add_nc_u32 v5, 0, v22
	v_sub_nc_u32_e32 v25, s26, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v8, s15, v6
	v_mul_lo_u32 v4, s30, v4
	s_lshl_b32 s18, s22, 8
	v_dual_mov_b32 v16, 0 :: v_dual_add_nc_u32 v31, v5, v20
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v11, 0
	s_and_b32 s21, s9, 0xffff
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v1, v8, s0, v1
	s_lshl_b32 s0, s22, 7
	s_mov_b32 s20, s8
	s_and_b32 s25, s11, 0xffff
	s_mov_b32 s24, s10
	v_subrev_nc_u32_e32 v29, s0, v1
	v_mov_b32_e32 v1, 0
	v_mul_lo_u32 v6, s14, v6
	v_and_b32_e32 v7, 0xe0, v0
	v_lshlrev_b32_e32 v26, 1, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v5, v1 :: v_dual_lshlrev_b32 v28, 1, v4
	v_dual_mov_b32 v4, v1 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v8, v1 :: v_dual_mov_b32 v13, 0
	v_add3_u32 v30, v6, s29, v2
	v_mov_b32_e32 v2, v1
	v_lshl_or_b32 v3, s23, 8, v7
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v7, v1 :: v_dual_mov_b32 v14, 0
	s_delay_alu instid0(VALU_DEP_3)
	v_subrev_nc_u32_e32 v27, s18, v3
	v_mov_b32_e32 v3, v1
	s_max_i32 s31, s1, 1
	s_lshl_b32 s33, s15, 1
	s_lshl_b32 s34, s15, 4
	s_lshl_b32 s14, s14, 4
	s_mov_b32 s18, s6
	s_mov_b32 s19, s7
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s3, v25
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v32, v26, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s31, s31, -1
	s_add_i32 s3, s3, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s31, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v33, 0x80000000, v30, s0
	buffer_load_u8 v48, v33, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v49, v28, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v50, v32, s[24:27], 0 offen
	buffer_load_u16 v51, v32, s[24:27], 0 offen offset:4
	buffer_load_u16 v52, v32, s[24:27], 0 offen offset:8
	buffer_load_u16 v53, v32, s[24:27], 0 offen offset:12
	buffer_load_u16 v54, v32, s[24:27], 0 offen offset:16
	buffer_load_u16 v55, v32, s[24:27], 0 offen offset:20
	buffer_load_u16 v56, v32, s[24:27], 0 offen offset:24
	buffer_load_u16 v57, v32, s[24:27], 0 offen offset:28
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v32, 0x80000000, v29, s0
	buffer_load_b32 v58, v32, s[16:19], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v32, v21 offset:2208
	ds_load_u8 v33, v21 offset:2272
	ds_load_u8 v34, v21 offset:2240
	ds_load_u8 v35, v21 offset:2176
	ds_load_u8 v36, v21 offset:2144
	ds_load_u8 v37, v21 offset:2112
	ds_load_u8 v38, v21 offset:2048
	ds_load_u8 v39, v21 offset:2080
	ds_load_u8 v40, v31 offset:640
	ds_load_u8 v41, v31 offset:896
	ds_load_u8 v42, v31 offset:768
	ds_load_u8 v43, v31 offset:512
	ds_load_u8 v44, v31 offset:128
	ds_load_u8 v45, v31 offset:384
	ds_load_u8 v46, v31 offset:256
	ds_load_u8 v47, v31
	ds_load_u8 v59, v21 offset:2464
	ds_load_u8 v60, v21 offset:2528
	ds_load_u8 v61, v21 offset:2496
	ds_load_u8 v62, v21 offset:2432
	ds_load_u8 v63, v21 offset:2336
	ds_load_u8 v64, v21 offset:2400
	ds_load_u8 v65, v21 offset:2368
	ds_load_u8 v66, v21 offset:2304
	ds_load_u8 v67, v31 offset:1664
	ds_load_u8 v68, v31 offset:1920
	ds_load_u8 v69, v31 offset:1792
	ds_load_u8 v70, v31 offset:1536
	ds_load_u8 v71, v31 offset:1152
	ds_load_u8 v72, v31 offset:1280
	ds_load_u8 v73, v31 offset:1024
	ds_load_u8 v74, v31 offset:1408
	s_waitcnt lgkmcnt(28)
	v_perm_b32 v32, v35, v32, 0xc0c0004
	v_perm_b32 v33, v34, v33, 0xc0c0004
	s_waitcnt lgkmcnt(26)
	v_perm_b32 v34, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v35, v38, v39, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v36, v43, v40, 0xc0c0004
	v_perm_b32 v37, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v38, v47, v44, 0xc0c0004
	v_perm_b32 v39, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v44, v62, v59, 0xc0c0004
	v_perm_b32 v45, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v47, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v46, v66, v63, 0xc0c0004
	v_lshl_or_b32 v41, v33, 16, v32
	v_lshl_or_b32 v40, v34, 16, v35
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v60, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v59, v70, v67, 0xc0c0004
	v_lshl_or_b32 v43, v37, 16, v36
	v_lshl_or_b32 v42, v39, 16, v38
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v61, v73, v71, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v72, v74, 0xc0c0004
	v_lshl_or_b32 v45, v45, 16, v44
	v_lshl_or_b32 v44, v47, 16, v46
	v_lshl_or_b32 v47, v60, 16, v59
	v_wmma_i32_16x16x16_iu4 v[32:39], v[42:43], v[40:41], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v46, v62, 16, v61
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(10)
	ds_store_b8 v23, v48 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v24, v58
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_wmma_i32_16x16x16_iu4 v[32:39], v[46:47], v[44:45], v[32:39] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v39, v39
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v44, 16, v53
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v40, 16, v49
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v30, s14, v30
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v32, v32
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v36, v36
	v_mul_f32_e32 v35, v35, v40
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v33, v33
	v_cvt_f32_i32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v15, v35, v44
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v32, v32, v40 :: v_dual_add_nc_u32 v27, s33, v27
	v_dual_mul_f32 v36, v36, v40 :: v_dual_lshlrev_b32 v41, 16, v50
	v_dual_mul_f32 v34, v34, v40 :: v_dual_add_nc_u32 v29, s34, v29
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v10, v32, v41 :: v_dual_lshlrev_b32 v43, 16, v52
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v38, v38, v40 :: v_dual_lshlrev_b32 v45, 16, v54
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v16, v34, v43 :: v_dual_lshlrev_b32 v47, 16, v56
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v37, v37, v40 :: v_dual_lshlrev_b32 v42, 16, v51
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v12, v38, v47 :: v_dual_lshlrev_b32 v49, 16, v57
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v33, v33, v40
	v_dual_mul_f32 v39, v39, v40 :: v_dual_lshlrev_b32 v46, 16, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v17, v33, v42 :: v_dual_add_nc_u32 v28, 2, v28
	v_fmac_f32_e32 v11, v39, v49
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v14, v36, v45 :: v_dual_fmac_f32 v13, v37, v46
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add3_u32 v1, 0, v22, v20
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v2, v21 offset:2208
	ds_load_u8 v3, v21 offset:2272
	ds_load_u8 v4, v21 offset:2240
	ds_load_u8 v5, v21 offset:2176
	ds_load_u8 v6, v21 offset:2144
	ds_load_u8 v7, v21 offset:2112
	ds_load_u8 v8, v21 offset:2048
	ds_load_u8 v22, v21 offset:2080
	ds_load_u8 v23, v1 offset:640
	ds_load_u8 v24, v1 offset:896
	ds_load_u8 v25, v1 offset:768
	ds_load_u8 v26, v1 offset:512
	ds_load_u8 v27, v1 offset:128
	ds_load_u8 v28, v1 offset:256
	ds_load_u8 v29, v1
	ds_load_u8 v30, v1 offset:384
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v2, v5, v2, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v4, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v5, v8, v22, 0xc0c0004
	v_lshl_or_b32 v22, v3, 16, v2
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v7, v25, v24, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v6, v26, v23, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v8, v29, v27, 0xc0c0004
	ds_load_u8 v25, v21 offset:2464
	ds_load_u8 v26, v21 offset:2528
	ds_load_u8 v27, v21 offset:2496
	ds_load_u8 v29, v21 offset:2432
	ds_load_u8 v31, v21 offset:2336
	ds_load_u8 v32, v21 offset:2400
	ds_load_u8 v33, v21 offset:2368
	ds_load_u8 v34, v21 offset:2304
	ds_load_u8 v35, v1 offset:1664
	ds_load_u8 v36, v1 offset:1920
	ds_load_u8 v37, v1 offset:1792
	ds_load_u8 v38, v1 offset:1536
	ds_load_u8 v39, v1 offset:1152
	ds_load_u8 v40, v1 offset:1408
	ds_load_u8 v41, v1 offset:1280
	ds_load_u8 v42, v1 offset:1024
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v23, v28, v30, 0xc0c0004
	v_mov_b32_e32 v1, 0
	v_lshl_or_b32 v21, v4, 16, v5
	v_lshl_or_b32 v24, v7, 16, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v23, v23, 16, v8
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v25, v29, v25, 0xc0c0004
	v_perm_b32 v26, v27, v26, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v27, v34, v31, 0xc0c0004
	v_perm_b32 v28, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v29, v38, v35, 0xc0c0004
	v_perm_b32 v30, v37, v36, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v31, v42, v39, 0xc0c0004
	v_perm_b32 v32, v41, v40, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v26, 16, v25
	v_lshl_or_b32 v21, v28, 16, v27
	v_lshl_or_b32 v24, v30, 16, v29
	v_lshl_or_b32 v23, v32, 16, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_f32_i32_e32 v4, v4
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v8, v8
.LBB0_5:
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v21, s30, v18
	s_mul_i32 s0, s29, s30
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v19, v19, v20
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	s_add_i32 s0, s0, s1
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_add_lshl_u32 v20, s0, v21, 1
	s_mov_b32 s4, s8
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s1, s1, s15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.h, 0
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s0, s28, s1
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v20, 0x80000000, v20, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v19, s0, v19, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v30, 0x7632
	v_mov_b32_e32 v29, 0x5410
	v_mov_b16_e32 v31.h, v28.h
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v20, v20, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v21, 4, v19
	v_add_nc_u32_e32 v22, 8, v19
	v_cndmask_b32_e64 v23, 0x80000000, v19, s2
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	v_cndmask_b32_e64 v21, 0x80000000, v21, s2
	v_cndmask_b32_e64 v22, 0x80000000, v22, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v33.h, v28.h
	v_mov_b16_e32 v32.h, v28.h
	v_mov_b16_e32 v34.h, v28.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_or_b32_e32 v18, s29, v18
	s_mov_b32 s0, 0x76543210
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v20, 16, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v24, 12, v19
	v_add_nc_u32_e32 v25, 16, v19
	v_add_nc_u32_e32 v26, 20, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v4, v4, v20 :: v_dual_add_nc_u32 v27, 24, v19
	v_dual_mul_f32 v6, v6, v20 :: v_dual_add_nc_u32 v19, 28, v19
	v_mul_f32_e32 v1, v1, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v24, 0x80000000, v24, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v19, 0x80000000, v19, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v2, v2, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v25, 0x80000000, v25, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v3, v3, v20
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v26, 0x80000000, v26, s2
	s_clause 0x7
	buffer_load_u16 v23, v23, s[4:7], 0 offen
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	buffer_load_u16 v22, v22, s[4:7], 0 offen
	buffer_load_u16 v24, v24, s[4:7], 0 offen
	buffer_load_u16 v25, v25, s[4:7], 0 offen
	buffer_load_u16 v26, v26, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v21, 16, v21
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v22, 16, v22
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v2, v2, v21, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v3, v3, v22, v16
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v2, v17, v2, s2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b32_e64 v3, v16, v3, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v3, v3, v3
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v5, v20 :: v_dual_lshlrev_b32 v26, 16, v26
	v_mul_f32_e32 v7, v7, v20
	v_dual_mul_f32 v8, v8, v20 :: v_dual_lshlrev_b32 v23, 16, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fma_f32 v5, v5, v25, v14
	v_fma_f32 v6, v6, v26, v13
	.loc	1 187 19 is_stmt 1              ; generate_amdgcn.py:187:19
	v_max_f32_e32 v2, 0, v2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v23, v10
	v_fma_f32 v8, v8, v19, v11
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v5, v14, v5, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v13, v6, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v27, 16, v27
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v10, v1, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v5, v5, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v4, v4, v24, v15
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, v6, v6
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v7, v7, v27, v12
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v1, v1, v1 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v4, v15, v4, s2
	v_cndmask_b32_e64 v8, v11, v8, s2
	v_cndmask_b32_e64 v7, v12, v7, s2
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v2, v2, v2 :: v_dual_max_f32 v3, 0, v3
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v6, 0, v6
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v1, 0, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v7, v7, v7 :: v_dual_max_f32 v8, v8, v8
	v_dual_max_f32 v5, 0, v5 :: v_dual_max_f32 v4, 0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v1, v1, v1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v31.l, v2.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v7, 0, v7 :: v_dual_max_f32 v8, 0, v8
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v4, v4, v4
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v28.l, v1.h
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v5, v5, v5
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v13, 1, v31
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v3, v3, v3 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v10, 1, v28
	v_mov_b16_e32 v28.l, v4.h
	v_mov_b16_e32 v33.l, v5.h
	v_add3_u32 v2, v2, v13, 0x7fff
	v_mov_b16_e32 v32.l, v3.h
	v_add3_u32 v1, v1, v10, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v12, 1, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v0, 1, v32
	v_mov_b16_e32 v2.l, v1.h
	v_and_b32_e32 v11, 1, v28
	v_mov_b16_e32 v28.l, v6.h
	v_add3_u32 v5, v5, v12, 0x7fff
	v_mov_b16_e32 v34.l, v7.h
	v_add3_u32 v0, v3, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_and_b32_e32 v10, 1, v28
	v_mov_b16_e32 v28.l, v8.h
	v_cndmask_b32_e32 v12, 0x3276, v30, vcc_lo
	v_add3_u32 v1, v6, v10, 0x7fff
	v_mov_b16_e32 v1.l, v5.h
	v_cndmask_b32_e32 v10, 0x1054, v29, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v6, v1, v2, vcc_lo
	v_add3_u32 v4, v4, v11, 0x7fff
	v_mov_b16_e32 v4.l, v0.h
	v_and_b32_e32 v5, 1, v34
	v_cndmask_b32_e32 v1, v2, v1, vcc_lo
	v_add3_u32 v3, v7, v5, 0x7fff
	v_and_b32_e32 v5, 1, v28
	v_lshl_or_b32 v7, v10, 8, v10
	v_lshl_or_b32 v10, v12, 8, v12
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v0, v8, v5, 0x7fff
	v_and_b32_e32 v5, 0x540054, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_and_b32_e32 v7, 0x760076, v10
	v_mov_b16_e32 v0.l, v3.h
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v8, v18, s15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_mov_b32 s15, s7
	v_lshl_or_b32 v2, v5, 4, v5
	v_lshl_or_b32 v3, v7, 4, v7
	v_cndmask_b32_e32 v5, v4, v0, vcc_lo
	v_cndmask_b32_e32 v4, v0, v4, vcc_lo
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_and_or_b32 v7, 0x78, v9, s28
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v2, 0x5040504, v2
	v_and_b32_e32 v3, 0x7060706, v3
	v_permlanex16_b32 v5, v5, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v0, v1, v6, v2
	v_perm_b32 v1, v1, v6, v3
	s_delay_alu instid0(VALU_DEP_3)
	v_perm_b32 v2, v5, v4, v2
	v_perm_b32 v3, v5, v4, v3
	v_add_lshl_u32 v4, v7, v8, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 75
		.amdhsa_next_free_sgpr 35
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
		.amdhsa_inst_pref_size 30
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 75
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3732
; TotalNumSgprs: 37
; NumVgprs: 75
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 9
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 75
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
	.byte	140                             ; DW_AT_call_line
	.byte	22                              ; DW_AT_call_column
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     75
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
