	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[22:23], s[0:1], 0x30
	s_load_b32 s12, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s6, s2
	v_dual_mov_b32 v11, 0 :: v_dual_and_b32 v2, 31, v0
	.loc	1 144 24                        ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 5, v0
	v_dual_mov_b32 v20, 0 :: v_dual_lshlrev_b32 v7, 1, v0
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v30, 15, v0
	v_mov_b32_e32 v24, 0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v26, 1, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v12, 0 :: v_dual_add_nc_u32 v31, 0, v7
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v17, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_mov_b32_e32 v21, 0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s23, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s7, s22, 63
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
	s_lshl_b32 s13, s4, 2
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s4, s13
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_bfe_u32 v27, v0, 4, 1
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v28, 0x70, v26
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add_nc_u32_e32 v32, v31, v7
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	v_rcp_iflag_f32_e32 v1, s5
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v13, 0
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s17, s14, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s14, s14, s13
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s4, s7, s17
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s2, s2, s14
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s18, s4, 4
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s15, s18
	s_abs_i32 s14, s2
	s_cvt_f32_u32 s16, s15
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s16
	v_readfirstlane_b32 s16, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v1, 1, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v2, 2, v2
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[24:25], s[6:7]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s7, 0, s15
	s_mul_f32 s16, s16, 0x4f7ffffe
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_mad_u64_u32 v[4:5], null, s22, v3, v[1:2]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s6, s16
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_mad_u64_u32 v[5:6], null, s23, v3, v[2:3]
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_mov_b32 s7, 0x31027000
	s_mul_hi_u32 s16, s14, s6
	s_xor_b32 s6, s2, s18
	s_mul_i32 s19, s16, s15
	s_ashr_i32 s13, s6, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s19, s16, 1
	s_sub_i32 s20, s14, s15
	s_cmp_ge_u32 s14, s15
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s16, s19, s16
	s_cselect_b32 s14, s20, s14
	s_add_i32 s19, s16, 1
	s_cmp_ge_u32 s14, s15
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s27, s7
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cselect_b32 s14, s19, s16
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s16, s12, 31
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s14, s14, s13
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s15, s3, 4
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s19, s12, 31
.Ltmp13:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_add_i32 s12, s12, s16
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_sub_i32 s26, s14, s13
	.loc	1 155 22                        ; generate_amdgcn.py:155:22
	v_or_b32_e32 v6, s15, v3
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s19, 31
.Ltmp15:
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_ashr_i32 s16, s12, 1
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s12, s26, s18
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s3, s3, 27
.Ltmp17:
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_sub_i32 s2, s2, s12
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s18, s19, s3
.Ltmp19:
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_gt_i32_e64 s3, s16, v6
	.loc	1 156 51 is_stmt 0              ; generate_amdgcn.py:156:51
	v_cmp_gt_i32_e32 vcc_lo, 16, v6
	.loc	1 92 13 is_stmt 1               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s17
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	s_mul_i32 s20, s22, s15
	.loc	1 99 14                         ; generate_amdgcn.py:99:14
	s_lshl_b32 s33, s26, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s35, s18, 5
.Ltmp21:
	.loc	1 98 14                         ; generate_amdgcn.py:98:14
	s_lshl_b32 s34, s2, 6
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	s_mul_i32 s21, s23, s15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_gt_i32 s19, 31
	.loc	1 160 34                        ; generate_amdgcn.py:160:34
	v_add3_u32 v4, s20, s34, v4
	.loc	1 166 34                        ; generate_amdgcn.py:166:34
	v_add3_u32 v5, s21, s33, v5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, vcc_lo, s3
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_and_b32 s5, s5, 0xffff
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_and_b32 s3, s2, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s26, s6
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v4, 0x80000000, v4, s3
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v5, 0x80000000, v5, s3
	s_and_b32 s25, s25, 0xffff
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v6, v4, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v5, v5, s[24:27], 0 offen
	s_load_b64 s[20:21], s[0:1], 0x20
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v4, 4, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s1, s35, -1
	s_mov_b32 s12, 0
	s_cmp_lt_i32 s19, 64
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt vmcnt(1)
	ds_store_b16 v31, v6 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b32 v32, v5
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v4, 16, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_or_b32_e32 v25, v4, v30
	v_add_nc_u32_e32 v29, 0, v25
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.lr.ph
	s_add_i32 s3, s15, 16
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v6, 0xe0, v0
	v_sub_nc_u32_e32 v33, s16, v3
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	v_add_nc_u32_e32 v7, s3, v3
	v_lshl_or_b32 v3, s14, 8, v6
	v_add3_u32 v4, s34, v4, v30
	s_lshl_b32 s0, s13, 8
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v21, 0
	v_mul_lo_u32 v6, s23, v7
	v_subrev_nc_u32_e32 v35, s0, v3
	s_lshl_b32 s0, s14, 7
	s_mov_b32 s14, s12
	v_mul_lo_u32 v3, s22, v7
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v17, 0
	v_add3_u32 v2, v6, s0, v2
	s_lshl_b32 s0, s13, 7
	s_mov_b32 s13, s12
	v_add_nc_u32_e32 v8, 32, v4
	v_mul_lo_u32 v4, s35, v4
	v_add_nc_u32_e32 v5, 0, v30
	v_lshlrev_b32_e32 v34, 1, v27
	v_subrev_nc_u32_e32 v38, s0, v2
	v_mul_lo_u32 v8, s35, v8
	v_add3_u32 v39, v3, s34, v1
	v_dual_mov_b32 v23, 0 :: v_dual_add_nc_u32 v40, v5, v28
	v_dual_mov_b32 v18, 0 :: v_dual_lshlrev_b32 v37, 1, v4
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	v_dual_mov_b32 v13, 0 :: v_dual_lshlrev_b32 v36, 1, v8
	v_dual_mov_b32 v1, s12 :: v_dual_mov_b32 v2, s13
	v_dual_mov_b32 v3, s14 :: v_dual_mov_b32 v4, s15
	v_dual_mov_b32 v5, s16 :: v_dual_mov_b32 v6, s17
	v_dual_mov_b32 v7, s18 :: v_dual_mov_b32 v8, s19
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v10, 0
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s28, s8
	s_and_b32 s37, s11, 0xffff
	s_mov_b32 s36, s10
	s_max_i32 s40, s1, 1
	s_lshl_b32 s41, s23, 1
	s_lshl_b32 s42, s23, 4
	s_lshl_b32 s22, s22, 4
	s_mov_b32 s26, s6
	s_mov_b32 s27, s7
	s_mov_b32 s30, s6
	s_mov_b32 s31, s7
	s_mov_b32 s38, s6
	s_mov_b32 s39, s7
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s0, s3, v33
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s40, s40, -1
	s_add_i32 s3, s3, 16
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s0, s0, vcc_lo
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s40, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v41, 0x80000000, v39, s0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v39, s22, v39
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_u16 v63, v41, s[4:7], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v41, 0x80000000, v38, s0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v38, s42, v38
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b32 v64, v41, s[24:27], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v41, v29 offset:2368
	ds_load_u8 v42, v29 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v29 offset:2496
	ds_load_u8 v43, v29 offset:2432
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v42, 16, v41
	ds_load_u8 v41, v29 offset:2112
	ds_load_u8 v42, v29 offset:2048
	ds_load_u8 v51, v29 offset:2080
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v29 offset:2240
	ds_load_u8 v43, v29 offset:2176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v42, 16, v41
	ds_load_u8 v41, v40 offset:640
	ds_load_u8 v42, v40 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v40 offset:896
	ds_load_u8 v43, v40 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v42, 16, v41
	ds_load_u8 v41, v40 offset:128
	ds_load_u8 v42, v40
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v40 offset:384
	ds_load_u8 v43, v40 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v42, 16, v41
	v_wmma_i32_16x16x16_iu4 v[41:48], v[57:58], v[49:50], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v49, v29 offset:2880
	ds_load_u8 v50, v29 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v29 offset:3008
	ds_load_u8 v52, v29 offset:2944
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v29 offset:2624
	ds_load_u8 v52, v29 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v52, v49, 0xc0c0004
	ds_load_u8 v52, v29 offset:2752
	ds_load_u8 v53, v29 offset:2688
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v49, v52, 16, v49
	ds_load_u8 v52, v40 offset:1664
	ds_load_u8 v53, v40 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v40 offset:1920
	ds_load_u8 v54, v40 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v60, v53, 16, v52
	ds_load_u8 v52, v40 offset:1152
	ds_load_u8 v53, v40 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v52, v53, v52, 0xc0c0004
	ds_load_u8 v53, v40 offset:1408
	ds_load_u8 v54, v40 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v53, v54, v53, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v59, v53, 16, v52
	v_wmma_i32_16x16x16_iu4 v[41:48], v[59:60], v[49:50], v[41:48] neg_lo:[1,1,0]
	ds_load_u8 v49, v29 offset:2400
	ds_load_u8 v50, v29 offset:2336
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v41, v41
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v42, v42
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v45, v45
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v48, v48
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v29 offset:2528
	ds_load_u8 v52, v29 offset:2464
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v52, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v50, 16, v49
	ds_load_u8 v49, v29 offset:2144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v50, v29 offset:2272
	ds_load_u8 v51, v29 offset:2208
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v50, 16, v49
	v_wmma_i32_16x16x16_iu4 v[49:56], v[57:58], v[61:62], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v57, v29 offset:2912
	ds_load_u8 v58, v29 offset:2848
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v58, v57, 0xc0c0004
	ds_load_u8 v58, v29 offset:3040
	ds_load_u8 v61, v29 offset:2976
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v58, v61, v58, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v58, v58, 16, v57
	ds_load_u8 v57, v29 offset:2656
	ds_load_u8 v61, v29 offset:2592
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v57, v61, v57, 0xc0c0004
	ds_load_u8 v61, v29 offset:2784
	ds_load_u8 v62, v29 offset:2720
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v57, v61, 16, v57
	v_wmma_i32_16x16x16_iu4 v[49:56], v[59:60], v[57:58], v[49:56] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v57, v37, s[28:31], 0 offen
	buffer_load_u16 v58, v36, s[28:31], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v36, 2, v36
	v_add_nc_u32_e32 v37, 2, v37
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v51, v51
	v_cvt_f32_i32_e32 v52, v52
	v_cvt_f32_i32_e32 v53, v53
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v55, v55
	v_cvt_f32_i32_e32 v56, v56
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v58, 16, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v50, v50, v58 :: v_dual_lshlrev_b32 v57, 16, v57
	v_dual_mul_f32 v44, v44, v57 :: v_dual_add_nc_u32 v59, v34, v35
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_clause 0x7
	buffer_load_u16 v60, v59, s[36:39], 0 offen
	buffer_load_u16 v61, v59, s[36:39], 0 offen offset:4
	buffer_load_u16 v62, v59, s[36:39], 0 offen offset:8
	buffer_load_u16 v65, v59, s[36:39], 0 offen offset:12
	buffer_load_u16 v66, v59, s[36:39], 0 offen offset:16
	buffer_load_u16 v67, v59, s[36:39], 0 offen offset:20
	buffer_load_u16 v68, v59, s[36:39], 0 offen offset:24
	buffer_load_u16 v59, v59, s[36:39], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v41, v41, v57
	v_mul_f32_e32 v42, v42, v57
	v_mul_f32_e32 v43, v43, v57
	v_mul_f32_e32 v45, v45, v57
	v_mul_f32_e32 v46, v46, v57
	v_mul_f32_e32 v47, v47, v57
	v_dual_mul_f32 v48, v48, v57 :: v_dual_mul_f32 v51, v51, v58
	v_mul_f32_e32 v49, v49, v58
	v_mul_f32_e32 v52, v52, v58
	v_dual_mul_f32 v54, v54, v58 :: v_dual_add_nc_u32 v35, s41, v35
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v31, v63 offset:2048
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	ds_store_b32 v32, v64
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v60, 16, v60
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v61, 16, v61
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v62, 16, v62
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v65, 16, v65
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v66, 16, v66
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v67, 16, v67
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v68, 16, v68
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v59, 16, v59
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v53, v53, v58 :: v_dual_fmac_f32 v24, v42, v61
	v_dual_mul_f32 v55, v55, v58 :: v_dual_fmac_f32 v22, v44, v65
	v_dual_mul_f32 v56, v56, v58 :: v_dual_fmac_f32 v9, v41, v60
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_dual_fmac_f32 v23, v43, v62 :: v_dual_fmac_f32 v20, v46, v67
	v_dual_fmac_f32 v21, v45, v66 :: v_dual_fmac_f32 v18, v48, v59
	v_dual_fmac_f32 v19, v47, v68 :: v_dual_fmac_f32 v16, v50, v61
	v_dual_fmac_f32 v17, v49, v60 :: v_dual_fmac_f32 v14, v52, v65
	v_dual_fmac_f32 v15, v51, v62 :: v_dual_fmac_f32 v12, v54, v67
	v_dual_fmac_f32 v13, v53, v66 :: v_dual_fmac_f32 v10, v56, v59
	v_fmac_f32_e32 v11, v55, v68
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_2
.LBB0_3:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v38, 0
	.loc	1 167 27 is_stmt 1              ; generate_amdgcn.py:167:27
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_cbranch_vccnz .LBB0_5
; %bb.4:
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_add3_u32 v5, 0, v30, v28
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v1, v29 offset:2368
	ds_load_u8 v2, v29 offset:2304
	ds_load_u8 v3, v29 offset:2496
	ds_load_u8 v4, v29 offset:2432
	ds_load_u8 v6, v29 offset:2112
	ds_load_u8 v7, v29 offset:2048
	ds_load_u8 v8, v29 offset:2240
	ds_load_u8 v30, v29 offset:2176
	ds_load_u8 v31, v5 offset:640
	ds_load_u8 v32, v5 offset:768
	ds_load_u8 v33, v5 offset:512
	ds_load_u8 v34, v5 offset:896
	ds_load_u8 v35, v5 offset:128
	ds_load_u8 v36, v5 offset:384
	ds_load_u8 v37, v5 offset:256
	ds_load_u8 v38, v5
	ds_load_u8 v46, v29 offset:2528
	ds_load_u8 v47, v29 offset:2464
	ds_load_u8 v48, v29 offset:2400
	ds_load_u8 v49, v29 offset:2336
	ds_load_u8 v50, v29 offset:2272
	ds_load_u8 v51, v29 offset:2208
	ds_load_u8 v52, v29 offset:2144
	ds_load_u8 v53, v29 offset:2080
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	ds_load_u8 v64, v29 offset:2784
	ds_load_u8 v65, v29 offset:2720
	ds_load_u8 v66, v29 offset:2656
	ds_load_u8 v67, v29 offset:2592
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_mov_b32 s12, 0
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v3, v7, v6, 0xc0c0004
	s_mov_b32 s19, s12
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v4, v30, v8, 0xc0c0004
	v_lshl_or_b32 v2, v2, 16, v1
	s_mov_b32 s13, s12
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v6, v33, v31, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v7, v32, v34, 0xc0c0004
	v_lshl_or_b32 v1, v4, 16, v3
	ds_load_u8 v30, v29 offset:3008
	ds_load_u8 v31, v29 offset:2944
	s_mov_b32 s14, s12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v3, v38, v35, 0xc0c0004
	v_lshl_or_b32 v4, v7, 16, v6
	ds_load_u8 v7, v29 offset:2880
	ds_load_u8 v8, v29 offset:2816
	v_perm_b32 v6, v37, v36, 0xc0c0004
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	v_lshl_or_b32 v3, v6, 16, v3
	ds_load_u8 v6, v29 offset:2624
	ds_load_u8 v32, v29 offset:2560
	ds_load_u8 v33, v29 offset:2752
	ds_load_u8 v34, v29 offset:2688
	ds_load_u8 v37, v5 offset:1664
	ds_load_u8 v54, v5 offset:1920
	ds_load_u8 v55, v5 offset:1792
	ds_load_u8 v56, v5 offset:1536
	ds_load_u8 v57, v29 offset:3040
	ds_load_u8 v58, v29 offset:2976
	ds_load_u8 v59, v29 offset:2912
	ds_load_u8 v60, v29 offset:2848
	v_dual_mov_b32 v45, s19 :: v_dual_mov_b32 v44, s18
	v_dual_mov_b32 v43, s17 :: v_dual_mov_b32 v42, s16
	v_dual_mov_b32 v41, s15 :: v_dual_mov_b32 v40, s14
	v_dual_mov_b32 v39, s13 :: v_dual_mov_b32 v38, s12
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v63, v31, v30, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v6, v32, v6, 0xc0c0004
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v68, v34, v33, 0xc0c0004
	v_perm_b32 v7, v8, v7, 0xc0c0004
	ds_load_u8 v8, v5 offset:1152
	ds_load_u8 v61, v5 offset:1408
	ds_load_u8 v62, v5 offset:1280
	ds_load_u8 v5, v5 offset:1024
	v_wmma_i32_16x16x16_iu4 v[29:36], v[3:4], v[1:2], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v1, v68, 16, v6
	v_lshl_or_b32 v2, v63, 16, v7
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v6, v56, v37, 0xc0c0004
	v_perm_b32 v7, v55, v54, 0xc0c0004
	v_perm_b32 v37, v49, v48, 0xc0c0004
	v_perm_b32 v47, v53, v52, 0xc0c0004
	v_perm_b32 v48, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v6, v7, 16, v6
	v_lshl_or_b32 v7, v48, 16, v47
	v_perm_b32 v47, v67, v66, 0xc0c0004
	v_perm_b32 v48, v65, v64, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v49, v62, v61, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v5, v5, v8, 0xc0c0004
	v_lshl_or_b32 v8, v46, 16, v37
	v_perm_b32 v37, v60, v59, 0xc0c0004
	v_perm_b32 v46, v58, v57, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v5, v49, 16, v5
	v_wmma_i32_16x16x16_iu4 v[38:45], v[3:4], v[7:8], v[38:45] neg_lo:[1,1,0]
	v_lshl_or_b32 v3, v48, 16, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v4, v46, 16, v37
	v_wmma_i32_16x16x16_iu4 v[29:36], v[5:6], v[1:2], v[29:36] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[38:45], v[5:6], v[3:4], v[38:45] neg_lo:[1,1,0]
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v1, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v2, v30
	v_cvt_f32_i32_e32 v4, v31
	v_cvt_f32_i32_e32 v6, v32
	v_cvt_f32_i32_e32 v31, v33
	v_cvt_f32_i32_e32 v33, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v37, v36
	v_cvt_f32_i32_e32 v3, v38
	v_cvt_f32_i32_e32 v5, v39
	v_cvt_f32_i32_e32 v7, v40
	v_cvt_f32_i32_e32 v8, v41
	v_cvt_f32_i32_e32 v32, v42
	v_cvt_f32_i32_e32 v34, v43
	v_cvt_f32_i32_e32 v36, v44
	v_cvt_f32_i32_e32 v38, v45
.LBB0_5:
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v29, 32, v25
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_or_b32_e32 v27, v27, v28
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v28, s35, v25
	s_mul_i32 s0, s34, s35
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_max_i32 s1, s1, 0
	.loc	1 178 26                        ; generate_amdgcn.py:178:26
	v_mul_lo_u32 v30, s35, v29
	s_add_i32 s0, s0, s1
	.loc	1 178 18 is_stmt 0              ; generate_amdgcn.py:178:18
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_add_lshl_u32 v28, s0, v28, 1
	s_mov_b32 s4, s8
	.loc	1 179 36 is_stmt 1              ; generate_amdgcn.py:179:36
	s_mul_i32 s3, s1, s23
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_add_lshl_u32 v30, s0, v30, 1
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	s_add_i32 s1, s33, s3
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v28, 0x80000000, v28, s2
	.loc	1 179 26                        ; generate_amdgcn.py:179:26
	v_add_lshl_u32 v27, s1, v27, 1
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v48, 0x7632
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_cndmask_b32_e64 v30, 0x80000000, v30, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b32_e32 v47, 0x5410
	v_mov_b16_e32 v46.h, 0
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v39, 4, v27
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	s_clause 0x1
	buffer_load_u16 v28, v28, s[4:7], 0 offen
	buffer_load_u16 v30, v30, s[4:7], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v40, 8, v27
	v_cndmask_b32_e64 v41, 0x80000000, v27, s2
	s_and_b32 s5, s11, 0xffff
	v_cndmask_b32_e64 v39, 0x80000000, v39, s2
	s_mov_b32 s4, s10
	v_cndmask_b32_e64 v40, 0x80000000, v40, s2
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v49.h, v46.h
	v_mov_b16_e32 v50.h, v46.h
	v_mov_b16_e32 v51.h, v46.h
	v_mov_b16_e32 v52.h, v46.h
	v_mov_b16_e32 v53.h, v46.h
	v_mov_b16_e32 v54.h, v46.h
	v_mov_b16_e32 v56.h, v46.h
	v_mov_b16_e32 v55.h, v46.h
	s_mov_b32 s0, 0x76543210
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v25, s23, v25
	s_mul_i32 s34, s34, s23
	v_mul_lo_u32 v29, s23, v29
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 178 18 is_stmt 1              ; generate_amdgcn.py:178:18
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v5, v5, v30 :: v_dual_lshlrev_b32 v28, 16, v28
	v_dual_mul_f32 v1, v1, v28 :: v_dual_add_nc_u32 v42, 12, v27
	v_dual_mul_f32 v2, v2, v28 :: v_dual_add_nc_u32 v43, 16, v27
	v_dual_mul_f32 v31, v31, v28 :: v_dual_add_nc_u32 v44, 20, v27
	v_dual_mul_f32 v4, v4, v28 :: v_dual_add_nc_u32 v45, 24, v27
	v_dual_mul_f32 v6, v6, v28 :: v_dual_add_nc_u32 v27, 28, v27
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_cndmask_b32_e64 v42, 0x80000000, v42, s2
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	v_cndmask_b32_e64 v44, 0x80000000, v44, s2
	v_cndmask_b32_e64 v45, 0x80000000, v45, s2
	v_cndmask_b32_e64 v27, 0x80000000, v27, s2
	s_clause 0x7
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v39, v39, s[4:7], 0 offen
	buffer_load_u16 v40, v40, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v27, v27, s[4:7], 0 offen
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v35, v35, v28 :: v_dual_and_b32 v26, 0x78, v26
	v_mul_f32_e32 v33, v33, v28
	v_mul_f32_e32 v28, v37, v28
	v_dual_mul_f32 v3, v3, v30 :: v_dual_and_b32 v0, 16, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_add3_u32 v26, s34, s33, v26
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v8, v8, v30
	v_mul_f32_e32 v7, v7, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v34, v34, v30
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add_lshl_u32 v25, v26, v25, 1
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(7)
	v_dual_mul_f32 v32, v32, v30 :: v_dual_lshlrev_b32 v37, 16, v41
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v39, 16, v39
	s_waitcnt vmcnt(5)
	v_lshlrev_b32_e32 v40, 16, v40
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v1, v1, v37, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v2, v2, v39, v24
	v_fma_f32 v4, v4, v40, v23
	v_fma_f32 v3, v3, v37, v17
	v_fma_f32 v5, v5, v39, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v1, v9, v1, s2
	v_cndmask_b32_e64 v2, v24, v2, s2
	v_cndmask_b32_e64 v4, v23, v4, s2
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v41, 16, v42
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	s_waitcnt vmcnt(3)
	v_dual_max_f32 v1, v1, v1 :: v_dual_lshlrev_b32 v42, 16, v43
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v44
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v4, v4, v4
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v6, v6, v41, v22
	v_fma_f32 v8, v8, v41, v14
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v44, 16, v45
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v31, v31, v42, v21
	v_fma_f32 v33, v33, v43, v20
	v_fma_f32 v7, v7, v40, v15
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v6, v22, v6, s2
	v_cndmask_b32_e64 v3, v17, v3, s2
	v_cndmask_b32_e64 v5, v16, v5, s2
	v_cndmask_b32_e64 v8, v14, v8, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	s_waitcnt vmcnt(0)
	v_dual_max_f32 v2, v2, v2 :: v_dual_lshlrev_b32 v27, 16, v27
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v35, v35, v44, v19
	v_fma_f32 v32, v32, v42, v13
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v9, v21, v31, s2
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v36, v36, v30
	v_dual_mul_f32 v30, v38, v30 :: v_dual_max_f32 v3, v3, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v20, v20, v33, s2
	v_cndmask_b32_e64 v7, v15, v7, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v6, v6, v6 :: v_dual_max_f32 v5, v5, v5
	v_dual_max_f32 v8, v8, v8 :: v_dual_max_f32 v1, 0, v1
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v28, v28, v27, v18
	v_fma_f32 v34, v34, v43, v12
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v19, v19, v35, s2
	v_cndmask_b32_e64 v13, v13, v32, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v14, v20, v20 :: v_dual_max_f32 v7, v7, v7
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v6, 0, v6
	v_dual_max_f32 v8, 0, v8 :: v_dual_mul_f32 v1, v1, v1
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v2, v2, v2 :: v_dual_mul_f32 v5, v5, v5
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v27, v30, v27, v10
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v18, v18, v28, s2
	v_cndmask_b32_e64 v12, v12, v34, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v9, v9, v9
	v_max_f32_e32 v15, v19, v19
	.loc	1 180 13                        ; generate_amdgcn.py:180:13
	v_fma_f32 v36, v36, v44, v11
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v13, v13, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v7, 0, v7 :: v_dual_mul_f32 v6, v6, v6
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v46.l, v1.h
	v_mov_b16_e32 v49.l, v2.h
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_cndmask_b32_e64 v11, v11, v36, s2
	v_cndmask_b32_e64 v10, v10, v27, s2
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_max_f32_e32 v16, v18, v18
	v_dual_max_f32 v12, v12, v12 :: v_dual_max_f32 v9, 0, v9
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v4, v4, v4
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v3, v3, v3 :: v_dual_mul_f32 v14, v14, v14
	v_dual_mul_f32 v7, v7, v7 :: v_dual_mul_f32 v8, v8, v8
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_and_b32_e32 v17, 1, v49
	v_and_b32_e32 v18, 1, v46
	v_mov_b16_e32 v46.l, v6.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v10, v10, v10
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v12, 0, v12 :: v_dual_mul_f32 v9, v9, v9
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_mul_f32_e32 v13, v13, v13
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v50.l, v4.h
	v_add3_u32 v2, v2, v17, 0x7fff
	v_and_b32_e32 v17, 1, v46
	v_mov_b16_e32 v46.l, v14.h
	.loc	1 187 19                        ; generate_amdgcn.py:187:19
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v10, 0, v10
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v15, v15, v15 :: v_dual_mul_f32 v16, v16, v16
	v_dual_mul_f32 v12, v12, v12 :: v_dual_and_b32 v19, 1, v50
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v51.l, v9.h
	v_add3_u32 v1, v1, v18, 0x7fff
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v11, v11, v11 :: v_dual_and_b32 v18, 1, v46
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v52.l, v15.h
	v_add3_u32 v4, v4, v19, 0x7fff
	v_mov_b16_e32 v46.l, v16.h
	v_mov_b16_e32 v2.l, v1.h
	v_add3_u32 v1, v6, v17, 0x7fff
	v_add3_u32 v6, v14, v18, 0x7fff
	v_and_b32_e32 v20, 1, v51
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v10, v10, v10 :: v_dual_and_b32 v21, 1, v52
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.l, v4.h
	v_and_b32_e32 v4, 1, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v9, v9, v20, 0x7fff
	v_mov_b16_e32 v46.l, v3.h
	v_mov_b16_e32 v53.l, v5.h
	v_mov_b16_e32 v54.l, v7.h
	v_mov_b16_e32 v56.l, v11.h
	v_add3_u32 v15, v15, v21, 0x7fff
	v_mov_b16_e32 v6.l, v9.h
	v_add3_u32 v0, v16, v4, 0x7fff
	v_and_b32_e32 v4, 1, v46
	v_mov_b16_e32 v46.l, v8.h
	v_and_b32_e32 v22, 1, v53
	v_and_b32_e32 v23, 1, v54
	v_and_b32_e32 v27, 1, v56
	v_mov_b16_e32 v0.l, v15.h
	v_cndmask_b32_e32 v9, v6, v2, vcc_lo
	v_cndmask_b32_e32 v2, v2, v6, vcc_lo
	v_cndmask_b32_e32 v6, 0x1054, v47, vcc_lo
	v_cndmask_b32_e32 v14, 0x3276, v48, vcc_lo
	v_add3_u32 v3, v3, v4, 0x7fff
	v_and_b32_e32 v4, 1, v46
	v_mov_b16_e32 v46.l, v12.h
	v_mov_b16_e32 v55.l, v13.h
	v_add3_u32 v5, v5, v22, 0x7fff
	v_add3_u32 v7, v7, v23, 0x7fff
	v_dual_cndmask_b32 v15, v0, v1 :: v_dual_cndmask_b32 v0, v1, v0
	v_permlanex16_b32 v1, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_or_b32 v2, v6, 8, v6
	v_lshl_or_b32 v6, v14, 8, v14
	v_mov_b16_e32 v5.l, v3.h
	v_add3_u32 v3, v8, v4, 0x7fff
	v_and_b32_e32 v4, 1, v46
	v_mov_b16_e32 v46.l, v10.h
	v_and_b32_e32 v24, 1, v55
	v_mov_b16_e32 v3.l, v7.h
	v_permlanex16_b32 v7, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v0, 0x540054, v2
	v_and_b32_e32 v2, 0x760076, v6
	v_and_b32_e32 v6, 1, v46
	v_add3_u32 v13, v13, v24, 0x7fff
	v_add3_u32 v11, v11, v27, 0x7fff
	v_add3_u32 v4, v12, v4, 0x7fff
	v_lshl_or_b32 v0, v0, 4, v0
	v_add3_u32 v6, v10, v6, 0x7fff
	v_mov_b16_e32 v4.l, v13.h
	v_lshl_or_b32 v2, v2, 4, v2
	v_mov_b16_e32 v6.l, v11.h
	v_and_b32_e32 v10, 0x5040504, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v8, v4, v5, vcc_lo
	v_dual_cndmask_b32 v4, v5, v4 :: v_dual_and_b32 v11, 0x7060706, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v2, v3, v6, vcc_lo
	v_cndmask_b32_e32 v12, v6, v3, vcc_lo
	v_perm_b32 v0, v1, v9, v10
	v_permlanex16_b32 v5, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v1, v1, v9, v11
	v_permlanex16_b32 v9, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v2, v7, v15, v10
	v_perm_b32 v3, v7, v15, v11
	v_perm_b32 v4, v5, v8, v10
	v_perm_b32 v5, v5, v8, v11
	v_perm_b32 v6, v9, v12, v10
	v_perm_b32 v7, v9, v12, v11
	v_add_lshl_u32 v8, v26, v29, 1
	s_clause 0x1
	buffer_store_b128 v[0:3], v25, s[20:23], 0 offen
	buffer_store_b128 v[4:7], v8, s[20:23], 0 offen
	.loc	1 79 1                          ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 69
		.amdhsa_next_free_sgpr 43
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
		.amdhsa_inst_pref_size 42
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 69
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 43
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5280
; TotalNumSgprs: 45
; NumVgprs: 69
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 45
; NumVGPRsForWavesPerEU: 69
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     45
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc32_relu2_bm64_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     69
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
