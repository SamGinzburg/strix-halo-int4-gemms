	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s17, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v5, 15, v0
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:87:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s15, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s14, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_lshr_b32 s10, s10, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:87:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:86:17 ]
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 88 24 is_stmt 1               ; generate_amdgcn.py:88:24
	s_lshl_b32 s4, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 89 16                         ; generate_amdgcn.py:89:16
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s9, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s6, s9
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s9
	s_sub_i32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 90 19                         ; generate_amdgcn.py:90:19
	s_lshl_b32 s6, s5, 2
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_mul_i32 s5, s5, s4
	.loc	1 91 31                         ; generate_amdgcn.py:91:31
	s_sub_i32 s7, s8, s6
	.loc	1 92 29                         ; generate_amdgcn.py:92:29
	s_sub_i32 s4, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s4
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s10, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s9, v1
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshrrev_b32_e32 v1, 4, v0
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_f32 s9, s9, 0x4f7ffffe
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v7, 16, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_cvt_u32_f32 s9, s9
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_or_b32_e32 v12, v7, v5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s2, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s5, s9
	s_xor_b32 s9, s4, s7
	s_mul_i32 s10, s2, s8
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s2, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s2, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s2, s9, s2
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s17, 0xff
.Ltmp13:
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_xor_b32 s21, s2, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s2, s21, s16
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s5, s2, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s4, s4, s5
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s4, 5
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s22, 0xff
	v_or_b32_e32 v18, s20, v12
	s_mov_b32 s4, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v1, s20, v12
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr1
.LBB0_3:                                ; %Flow
	s_load_b64 s[12:13], s[0:1], 0x20
	v_lshrrev_b32_e32 v17, 1, v0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v11, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v10, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 144 24 is_stmt 1              ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v1, 3, v0
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v2, 0x70, v17
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s1, s3, 6
	v_dual_mov_b32 v37, 0 :: v_dual_and_b32 v10, 0xe0, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_add3_u32 v20, 0, v5, v2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v2, s1, v1
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s17, s17, 1
	v_dual_mov_b32 v28, 0 :: v_dual_and_b32 v3, 7, v0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v21, s17, v1
	v_add_nc_u32_e32 v9, 64, v2
	v_dual_mov_b32 v35, 0 :: v_dual_and_b32 v22, 2, v1
	v_add3_u32 v5, s20, v7, v5
	v_lshl_or_b32 v7, s21, 8, v10
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v1, s15, v9
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s22, 31
.Ltmp15:
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshlrev_b32_e32 v8, 4, v3
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s17, s16, 8
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s22, s22, s0
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_subrev_nc_u32_e32 v23, s17, v7
	s_lshl_b32 s17, s21, 7
.Ltmp20:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s3, s22, 8
.Ltmp21:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add3_u32 v1, v1, s17, v8
	v_cmp_gt_i32_e64 s0, 0x80, v9
	v_mul_lo_u32 v5, s3, v5
	v_mul_lo_u32 v7, s14, v9
	v_mul_lo_u32 v9, s15, v2
	s_add_i32 s25, s1, 64
	s_lshl_b32 s1, s16, 7
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v2
	v_subrev_nc_u32_e32 v26, s1, v1
	v_mov_b32_e32 v1, 0
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_lshlrev_b32_e32 v3, 2, v3
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_mul_lo_u32 v2, s14, v2
	v_lshlrev_b32_e32 v4, 2, v0
	v_lshlrev_b32_e32 v6, 4, v0
	v_dual_mov_b32 v33, 0 :: v_dual_lshlrev_b32 v24, 1, v5
	v_add3_u32 v25, v7, s20, v3
	v_mov_b32_e32 v7, v1
	v_add3_u32 v5, v9, s17, v8
	v_add_nc_u32_e32 v19, 0, v12
	v_add3_u32 v29, v2, s20, v3
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_subrev_nc_u32_e32 v27, s1, v5
	v_add_nc_u32_e32 v30, 0, v4
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v8, v1 :: v_dual_add_nc_u32 v31, 0, v6
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v38, 0
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v34, 0
	v_mov_b32_e32 v32, 0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s24, s15, 1
	s_lshl_b32 s14, s14, 7
	s_lshl_b32 s26, s15, 7
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s18
	s_mov_b32 s7, s19
	s_mov_b32 s20, s8
	s_mov_b32 s21, s9
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s1, s25, 64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s3, s3, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s1, v21
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 160 26 is_stmt 1              ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v29, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v29, s14, v29
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b32 v13, v9, s[16:19], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v27, s1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s1, s25, v21
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v27, s26, v27
	s_addk_i32 s25, 0x80
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[9:12], v9, s[4:7], 0 offen
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s1, s1, s0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v30, v13 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v31, v[9:12]
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	v_cndmask_b32_e64 v9, 0x80000000, v25, s1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v25, s14, v25
	s_cmp_lg_u32 s3, 0
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	buffer_load_b32 v47, v9, s[16:19], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v26, s1
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v26, s26, v26
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[39:42], v9, s[4:7], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v19 offset:8352
	ds_load_u8 v10, v19 offset:8320
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v19 offset:8416
	ds_load_u8 v11, v19 offset:8384
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v10, 16, v9
	ds_load_u8 v9, v19 offset:8288
	ds_load_u8 v10, v19 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v19 offset:8192
	ds_load_u8 v11, v19 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v10, v11, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v9, 16, v10
	ds_load_u8 v9, v20 offset:640
	ds_load_u8 v10, v20 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v20 offset:896
	ds_load_u8 v11, v20 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v10, 16, v9
	ds_load_u8 v9, v20 offset:128
	ds_load_u8 v10, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v20 offset:384
	ds_load_u8 v11, v20 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v43, v19 offset:8608
	ds_load_u8 v44, v19 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v19 offset:8672
	ds_load_u8 v45, v19 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v19 offset:8480
	ds_load_u8 v45, v19 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v19 offset:8544
	ds_load_u8 v46, v19 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v45, v20 offset:1664
	ds_load_u8 v46, v20 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:1920
	ds_load_u8 v48, v20 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:1152
	ds_load_u8 v48, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v45, 0xc0c0004
	ds_load_u8 v48, v20 offset:1408
	ds_load_u8 v49, v20 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v48, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v43, v19 offset:8864
	ds_load_u8 v44, v19 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v19 offset:8928
	ds_load_u8 v45, v19 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v19 offset:8736
	ds_load_u8 v45, v19 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v19 offset:8800
	ds_load_u8 v46, v19 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v45, v20 offset:2688
	ds_load_u8 v46, v20 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:2944
	ds_load_u8 v48, v20 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:2176
	ds_load_u8 v48, v20 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v45, 0xc0c0004
	ds_load_u8 v48, v20 offset:2432
	ds_load_u8 v49, v20 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v48, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v43, v19 offset:9120
	ds_load_u8 v44, v19 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v19 offset:9184
	ds_load_u8 v45, v19 offset:9152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v19 offset:8992
	ds_load_u8 v45, v19 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v19 offset:9056
	ds_load_u8 v46, v19 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v45, v20 offset:3712
	ds_load_u8 v46, v20 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:3968
	ds_load_u8 v48, v20 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:3200
	ds_load_u8 v48, v20 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v45, 0xc0c0004
	ds_load_u8 v48, v20 offset:3456
	ds_load_u8 v49, v20 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v48, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v43, v19 offset:9376
	ds_load_u8 v44, v19 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v19 offset:9440
	ds_load_u8 v45, v19 offset:9408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v19 offset:9248
	ds_load_u8 v45, v19 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v19 offset:9312
	ds_load_u8 v46, v19 offset:9280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v45, v20 offset:4736
	ds_load_u8 v46, v20 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:4992
	ds_load_u8 v48, v20 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:4224
	ds_load_u8 v48, v20 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v45, 0xc0c0004
	ds_load_u8 v48, v20 offset:4480
	ds_load_u8 v49, v20 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v48, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v43, v19 offset:9632
	ds_load_u8 v44, v19 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v19 offset:9696
	ds_load_u8 v45, v19 offset:9664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v19 offset:9504
	ds_load_u8 v45, v19 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v19 offset:9568
	ds_load_u8 v46, v19 offset:9536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v45, v20 offset:5760
	ds_load_u8 v46, v20 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:6016
	ds_load_u8 v48, v20 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:5248
	ds_load_u8 v48, v20 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v45, 0xc0c0004
	ds_load_u8 v48, v20 offset:5504
	ds_load_u8 v49, v20 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v48, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v43, v19 offset:9888
	ds_load_u8 v44, v19 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v19 offset:9952
	ds_load_u8 v45, v19 offset:9920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v19 offset:9760
	ds_load_u8 v45, v19 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v19 offset:9824
	ds_load_u8 v46, v19 offset:9792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v45, v20 offset:6784
	ds_load_u8 v46, v20 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:7040
	ds_load_u8 v48, v20 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:6272
	ds_load_u8 v48, v20 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v45, 0xc0c0004
	ds_load_u8 v48, v20 offset:6528
	ds_load_u8 v49, v20 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v48, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v43, v19 offset:10144
	ds_load_u8 v44, v19 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	ds_load_u8 v44, v19 offset:10208
	ds_load_u8 v45, v19 offset:10176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v44, v44, 16, v43
	ds_load_u8 v43, v19 offset:10016
	ds_load_u8 v45, v19 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v45, v43, 0xc0c0004
	ds_load_u8 v45, v19 offset:10080
	ds_load_u8 v46, v19 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v43, v45, 16, v43
	ds_load_u8 v45, v20 offset:7808
	ds_load_u8 v46, v20 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:8064
	ds_load_u8 v48, v20 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v48, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:7296
	ds_load_u8 v48, v20 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v48, v45, 0xc0c0004
	ds_load_u8 v48, v20 offset:7552
	ds_load_u8 v49, v20 offset:7424
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v30, v47 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v31, v[39:42]
	.loc	1 160 26                        ; generate_amdgcn.py:160:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v39, v19 offset:8352
	ds_load_u8 v40, v19 offset:8320
	v_perm_b32 v48, v49, v48, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v45, v48, 16, v45
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v19 offset:8416
	ds_load_u8 v41, v19 offset:8384
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[43:44], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v19 offset:8288
	ds_load_u8 v41, v19 offset:8256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v19 offset:8192
	ds_load_u8 v42, v19 offset:8224
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v41, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v39, 16, v41
	ds_load_u8 v41, v20 offset:640
	ds_load_u8 v42, v20 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v20 offset:896
	ds_load_u8 v43, v20 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v20 offset:128
	ds_load_u8 v43, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v20 offset:384
	ds_load_u8 v44, v20 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[39:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v39, v19 offset:8608
	ds_load_u8 v40, v19 offset:8576
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v19 offset:8672
	ds_load_u8 v41, v19 offset:8640
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v19 offset:8480
	ds_load_u8 v41, v19 offset:8448
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v19 offset:8544
	ds_load_u8 v42, v19 offset:8512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	ds_load_u8 v41, v20 offset:1664
	ds_load_u8 v42, v20 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v20 offset:1920
	ds_load_u8 v43, v20 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v20 offset:1152
	ds_load_u8 v43, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v20 offset:1408
	ds_load_u8 v44, v20 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[39:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v39, v19 offset:8864
	ds_load_u8 v40, v19 offset:8832
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v19 offset:8928
	ds_load_u8 v41, v19 offset:8896
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v19 offset:8736
	ds_load_u8 v41, v19 offset:8704
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v19 offset:8800
	ds_load_u8 v42, v19 offset:8768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	ds_load_u8 v41, v20 offset:2688
	ds_load_u8 v42, v20 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v20 offset:2944
	ds_load_u8 v43, v20 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v20 offset:2176
	ds_load_u8 v43, v20 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v20 offset:2432
	ds_load_u8 v44, v20 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[39:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v39, v19 offset:9120
	ds_load_u8 v40, v19 offset:9088
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v19 offset:9184
	ds_load_u8 v41, v19 offset:9152
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v19 offset:8992
	ds_load_u8 v41, v19 offset:8960
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v19 offset:9056
	ds_load_u8 v42, v19 offset:9024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	ds_load_u8 v41, v20 offset:3712
	ds_load_u8 v42, v20 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v20 offset:3968
	ds_load_u8 v43, v20 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v20 offset:3200
	ds_load_u8 v43, v20 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v20 offset:3456
	ds_load_u8 v44, v20 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[39:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v39, v19 offset:9376
	ds_load_u8 v40, v19 offset:9344
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v19 offset:9440
	ds_load_u8 v41, v19 offset:9408
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v19 offset:9248
	ds_load_u8 v41, v19 offset:9216
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v19 offset:9312
	ds_load_u8 v42, v19 offset:9280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	ds_load_u8 v41, v20 offset:4736
	ds_load_u8 v42, v20 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v20 offset:4992
	ds_load_u8 v43, v20 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v20 offset:4224
	ds_load_u8 v43, v20 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v20 offset:4480
	ds_load_u8 v44, v20 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[39:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v39, v19 offset:9632
	ds_load_u8 v40, v19 offset:9600
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v19 offset:9696
	ds_load_u8 v41, v19 offset:9664
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v19 offset:9504
	ds_load_u8 v41, v19 offset:9472
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v19 offset:9568
	ds_load_u8 v42, v19 offset:9536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	ds_load_u8 v41, v20 offset:5760
	ds_load_u8 v42, v20 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v20 offset:6016
	ds_load_u8 v43, v20 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v20 offset:5248
	ds_load_u8 v43, v20 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v20 offset:5504
	ds_load_u8 v44, v20 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[39:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v39, v19 offset:9888
	ds_load_u8 v40, v19 offset:9856
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v19 offset:9952
	ds_load_u8 v41, v19 offset:9920
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v19 offset:9760
	ds_load_u8 v41, v19 offset:9728
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v19 offset:9824
	ds_load_u8 v42, v19 offset:9792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	ds_load_u8 v41, v20 offset:6784
	ds_load_u8 v42, v20 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v20 offset:7040
	ds_load_u8 v43, v20 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v20 offset:6272
	ds_load_u8 v43, v20 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v20 offset:6528
	ds_load_u8 v44, v20 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[39:40], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v39, v19 offset:10144
	ds_load_u8 v40, v19 offset:10112
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v40, v39, 0xc0c0004
	ds_load_u8 v40, v19 offset:10208
	ds_load_u8 v41, v19 offset:10176
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v40, v40, 16, v39
	ds_load_u8 v39, v19 offset:10016
	ds_load_u8 v41, v19 offset:9984
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v39, v41, v39, 0xc0c0004
	ds_load_u8 v41, v19 offset:10080
	ds_load_u8 v42, v19 offset:10048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v39, v41, 16, v39
	ds_load_u8 v41, v20 offset:7808
	ds_load_u8 v42, v20 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v42, v41, 0xc0c0004
	ds_load_u8 v42, v20 offset:8064
	ds_load_u8 v43, v20 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v42, v43, v42, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v42, v42, 16, v41
	ds_load_u8 v41, v20 offset:7296
	ds_load_u8 v43, v20 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v41, v43, v41, 0xc0c0004
	ds_load_u8 v43, v20 offset:7552
	ds_load_u8 v44, v20 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v43, v44, v43, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v41, v43, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[39:40], v[9:16] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v39, v24, s[20:23], 0 offen
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v40, v22, v23
	s_clause 0x7
	buffer_load_u16 v41, v40, s[8:11], 0 offen
	buffer_load_u16 v42, v40, s[8:11], 0 offen offset:4
	buffer_load_u16 v43, v40, s[8:11], 0 offen offset:8
	buffer_load_u16 v44, v40, s[8:11], 0 offen offset:12
	buffer_load_u16 v45, v40, s[8:11], 0 offen offset:16
	buffer_load_u16 v46, v40, s[8:11], 0 offen offset:20
	buffer_load_u16 v47, v40, s[8:11], 0 offen offset:24
	buffer_load_u16 v40, v40, s[8:11], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v23, s24, v23
	v_add_nc_u32_e32 v24, 2, v24
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v41, 16, v41
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v39, 16, v39
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(6)
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v9, v9, v39 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v28, v9, v41
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v11, v11, v39 :: v_dual_lshlrev_b32 v44, 16, v44
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v12, v12, v39 :: v_dual_lshlrev_b32 v45, 16, v45
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v13, v13, v39 :: v_dual_lshlrev_b32 v46, 16, v46
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v47, 16, v47
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v15, v15, v39 :: v_dual_lshlrev_b32 v40, 16, v40
	v_mul_f32_e32 v10, v10, v39
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v43, 16, v43
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v14, v14, v39
	v_mul_f32_e32 v16, v16, v39
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v36, v12, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v38, v10, v42 :: v_dual_fmac_f32 v37, v11, v43
	v_dual_fmac_f32 v34, v14, v46 :: v_dual_fmac_f32 v35, v13, v45
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v33, v15, v47 :: v_dual_fmac_f32 v32, v16, v40
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 187 19 is_stmt 1              ; generate_amdgcn.py:187:19
	v_dual_max_f32 v1, v28, v28 :: v_dual_max_f32 v2, v38, v38
	v_max_f32_e32 v3, v37, v37
	v_dual_max_f32 v5, v35, v35 :: v_dual_max_f32 v8, v32, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v4, v36, v36
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v6, v34, v34 :: v_dual_max_f32 v7, v33, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v4, 0, v4 :: v_dual_max_f32 v5, 0, v5
	v_max_f32_e32 v12, 0, v8
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v11, v1, v1 :: v_dual_mul_f32 v10, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v8, v3, v3 :: v_dual_mul_f32 v9, v5, v5
	v_dual_mul_f32 v4, v4, v4 :: v_dual_mul_f32 v3, v7, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v6, v6, v6
	v_dual_mul_f32 v2, v12, v12 :: v_dual_mov_b32 v1, v18
.LBB0_7:                                ; %._crit_edge
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v5.h, 0
	v_mov_b16_e32 v12.l, v11.h
	v_and_b32_e32 v0, 16, v0
	v_mov_b16_e32 v5.l, v10.h
	v_mov_b16_e32 v15.l, v9.h
	v_mov_b16_e32 v12.h, v5.h
	v_mov_b16_e32 v15.h, v5.h
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_and_b32_e32 v14, 1, v5
	v_mov_b16_e32 v5.l, v4.h
	v_and_b32_e32 v12, 1, v12
	v_mov_b16_e32 v13.l, v8.h
	v_mov_b16_e32 v13.h, v5.h
	v_add3_u32 v10, v10, v14, 0x7fff
	v_dual_mov_b32 v0, 0x5410 :: v_dual_and_b32 v15, 1, v15
	v_add3_u32 v11, v11, v12, 0x7fff
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v12, 1, v13
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v9, v9, v15, 0x7fff
	v_mov_b16_e32 v9.l, v3.h
	v_mov_b16_e32 v10.l, v11.h
	v_and_b32_e32 v16, 1, v5
	v_mov_b16_e32 v5.l, v6.h
	v_add3_u32 v8, v8, v12, 0x7fff
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_mov_b32_e32 v11, 0x7632
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_and_b32_e32 v13, 1, v5
	v_mov_b16_e32 v5.l, v2.h
	v_lshl_or_b32 v0, v0, 8, v0
	v_cndmask_b32_e32 v11, 0x3276, v11, vcc_lo
	s_mov_b32 s14, 0x7ffffffe
	v_add3_u32 v6, v6, v13, 0x7fff
	v_mov_b16_e32 v6.l, v9.h
	v_mov_b16_e32 v9.h, v5.h
	v_and_b32_e32 v5, 1, v5
	v_and_b32_e32 v0, 0x540054, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_cndmask_b32 v12, v6, v10 :: v_dual_and_b32 v7, 0x78, v17
	v_add3_u32 v2, v2, v5, 0x7fff
	.loc	1 190 18 is_stmt 0              ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v5, v1, s15
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_cndmask_b32_e32 v1, v10, v6, vcc_lo
	v_add3_u32 v4, v4, v16, 0x7fff
	v_mov_b16_e32 v4.l, v8.h
	v_and_b32_e32 v9, 1, v9
	v_lshl_or_b32 v0, v0, 4, v0
	v_permlanex16_b32 v1, v1, s0, 0xfedcba98 op_sel:[1,0]
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_lshl_or_b32 v7, s2, 7, v7
	s_mov_b32 s15, 0x31027000
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_add3_u32 v3, v3, v9, 0x7fff
	v_lshl_or_b32 v9, v11, 8, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v2.l, v3.h
	v_dual_cndmask_b32 v6, v4, v2 :: v_dual_and_b32 v3, 0x760076, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e32 v4, v2, v4, vcc_lo
	v_and_b32_e32 v2, 0x5040504, v0
	v_permlanex16_b32 v6, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v3, 0x7060706, v3
	v_perm_b32 v0, v1, v12, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_perm_b32 v2, v6, v4, v2
	v_perm_b32 v1, v1, v12, v3
	v_perm_b32 v3, v6, v4, v3
	v_add_lshl_u32 v4, v7, v5, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp22:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 50
		.amdhsa_next_free_sgpr 27
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
		.amdhsa_inst_pref_size 55
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
	.size	amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_vgpr, 50
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.numbered_sgpr, 27
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 6996
; TotalNumSgprs: 29
; NumVgprs: 50
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 6
; NumSGPRsForWavesPerEU: 29
; NumVGPRsForWavesPerEU: 50
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     29
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_tn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     50
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
