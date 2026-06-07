	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 79 0                          ; generate_amdgcn.py:79:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[14:15], s[0:1], 0x30
	s_load_b32 s18, s[0:1], 0x38
.Ltmp0:
	.loc	1 89 16 prologue_end            ; generate_amdgcn.py:89:16
	s_abs_i32 s7, s2
	.loc	1 98 32                         ; generate_amdgcn.py:98:32
	v_and_b32_e32 v6, 15, v0
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
	s_sub_i32 s2, s2, s5
	.loc	1 91 20                         ; generate_amdgcn.py:91:20
	s_min_i32 s7, s7, 4
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_abs_i32 s5, s2
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
	v_or_b32_e32 v2, v7, v6
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 93 13                         ; generate_amdgcn.py:93:13
	s_mul_i32 s10, s10, s9
	s_mul_hi_u32 s4, s9, s10
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s10, s4, s8
	s_ashr_i32 s16, s9, 31
	s_sub_i32 s5, s5, s10
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s10, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s17, s4, s16
	s_sub_i32 s14, s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 92 28                         ; generate_amdgcn.py:92:28
	s_mul_i32 s4, s14, s7
	s_sub_i32 s2, s2, s4
	s_mov_b32 s4, 0
	.loc	1 92 13 is_stmt 0               ; generate_amdgcn.py:92:13
	s_add_i32 s2, s2, s6
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 98 14 is_stmt 1               ; generate_amdgcn.py:98:14
	s_lshl_b32 s20, s2, 5
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:140:22 ]
	s_add_i32 s2, s18, 0xff
	v_or_b32_e32 v19, s20, v2
.Ltmp13:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmpk_gt_i32 s2, 0xff
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_or_b32_e32 v2, s20, v2
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 18 is_stmt 0                ; generate_amdgcn.py:0:18
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr2
.LBB0_3:                                ; %Flow
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 144 24 is_stmt 1              ; generate_amdgcn.py:144:24
	v_lshrrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v2, 2, v6
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v4, 0xe0, v0
	.loc	1 155 39                        ; generate_amdgcn.py:155:39
	s_lshl_b32 s3, s3, 6
	.loc	1 95 22                         ; generate_amdgcn.py:95:22
	s_lshr_b32 s21, s18, 1
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_or_b32_e32 v17, s3, v3
	v_or_b32_e32 v18, s3, v2
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v10, 1, v4
	v_lshlrev_b32_e32 v8, 4, v0
	s_load_b256 s[4:11], s[0:1], 0x0
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_sub_nc_u32_e32 v22, s21, v3
	v_add_nc_u32_e32 v23, 64, v18
	v_add3_u32 v20, 0, v6, v10
	v_add_nc_u32_e32 v10, 64, v17
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v11, 0x70, v8
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s30, s3, 64
	v_cmp_gt_i32_e64 s1, 0x80, v23
	v_and_b32_e32 v23, 2, v3
	v_mul_lo_u32 v3, s15, v10
	s_lshl_b32 s3, s17, 7
	v_dual_mov_b32 v26, 0 :: v_dual_lshlrev_b32 v5, 2, v0
	v_lshrrev_b32_e32 v12, 2, v4
	v_lshl_or_b32 v4, s17, 8, v4
	v_dual_mov_b32 v42, 0 :: v_dual_add_nc_u32 v1, s20, v1
	v_add3_u32 v3, v3, s3, v11
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s0, s2, 31
.Ltmp15:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_lshl_b32 s22, s16, 8
.Ltmp16:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_lshr_b32 s0, s0, 24
	v_cmp_gt_i32_e32 vcc_lo, 0x80, v18
	s_add_i32 s2, s2, s0
	v_cmp_gt_i32_e64 s0, 0x80, v17
.Ltmp17:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_subrev_nc_u32_e32 v24, s22, v4
	v_mul_lo_u32 v4, s15, v17
	v_mad_u64_u32 v[17:18], null, s21, v1, v[2:3]
	v_mov_b32_e32 v1, 0
	v_and_b32_e32 v9, 0x438, v5
	v_sub_nc_u32_e32 v21, s21, v2
.Ltmp18:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:140:22 ]
	s_ashr_i32 s28, s2, 8
	v_xor_b32_e32 v5, v5, v12
	v_mov_b32_e32 v2, v1
	v_lshl_or_b32 v9, v6, 6, v9
.Ltmp19:
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add3_u32 v6, s20, v7, v6
	v_add3_u32 v4, v4, s3, v11
	s_lshl_b32 s16, s16, 7
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v28, 0, v5
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v6, s28, v6
	v_xor_b32_e32 v12, 8, v9
	v_xor_b32_e32 v13, 16, v9
	v_xor_b32_e32 v14, 24, v9
	v_xor_b32_e32 v15, 32, v9
	v_xor_b32_e32 v16, 40, v9
	v_xor_b32_e32 v36, 48, v9
	v_xor_b32_e32 v37, 56, v9
	v_dual_mov_b32 v44, 0 :: v_dual_lshlrev_b32 v25, 1, v6
	v_subrev_nc_u32_e32 v18, s16, v3
	v_subrev_nc_u32_e32 v27, s16, v4
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v30, 0, v9
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v31, 0, v12
	v_dual_mov_b32 v39, 0 :: v_dual_add_nc_u32 v32, 0, v13
	v_add_nc_u32_e32 v33, 0, v14
	v_add_nc_u32_e32 v34, 0, v15
	v_add_nc_u32_e32 v35, 0, v16
	v_add_nc_u32_e32 v36, 0, v36
	v_add_nc_u32_e32 v37, 0, v37
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v29, 0, v8
	v_mov_b32_e32 v6, v1
	v_mov_b32_e32 v7, v1
	v_cmp_gt_i32_e64 s2, 0x80, v10
	v_mov_b32_e32 v8, v1
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_lshl_b32 s29, s15, 1
	s_lshl_b32 s31, s15, 7
	s_mov_b32 s16, s4
	s_mov_b32 s17, s5
	s_mov_b32 s20, s6
	s_mov_b32 s21, s7
	s_mov_b32 s22, s18
	s_mov_b32 s23, s19
	s_mov_b32 s24, s8
	s_mov_b32 s25, s9
	s_mov_b32 s26, s18
	s_mov_b32 s27, s19
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s18
	s_mov_b32 s11, s19
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_add_nc_u32_e32 v13, s30, v17
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	s_sub_i32 s4, s30, 64
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_add_i32 s28, s28, -1
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s4, v21
	v_cmp_lt_i32_e64 s4, s4, v22
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_subrev_nc_u32_e32 v9, 64, v13
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, vcc_lo
	s_and_b32 s4, s4, s0
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v9, s3
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s3, s30, v21
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v14, v9, s[16:19], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v27, s4
	.loc	1 156 27                        ; generate_amdgcn.py:156:27
	v_cmp_lt_i32_e64 s4, s30, v22
	.loc	1 156 26 is_stmt 0              ; generate_amdgcn.py:156:26
	s_and_b32 s3, s3, s1
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_addk_i32 s30, 0x80
	v_add_nc_u32_e32 v27, s31, v27
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[9:12], v9, s[20:23], 0 offen
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v28, v14 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v29, v[9:12]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	v_cndmask_b32_e64 v9, 0x80000000, v13, s3
	.loc	1 156 26                        ; generate_amdgcn.py:156:26
	s_and_b32 s4, s4, s2
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	s_cmp_lg_u32 s28, 0
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	buffer_load_b32 v67, v9, s[16:19], 0 offen
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	v_cndmask_b32_e64 v9, 0x80000000, v18, s4
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[49:50], v30 offset:8192
	ds_load_b64 v[51:52], v31 offset:8192
	ds_load_b64 v[53:54], v32 offset:8192
	ds_load_b64 v[55:56], v33 offset:8192
	ds_load_b64 v[57:58], v34 offset:8192
	ds_load_b64 v[59:60], v35 offset:8192
	ds_load_b64 v[61:62], v36 offset:8192
	ds_load_b64 v[63:64], v37 offset:8192
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v18, s31, v18
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	buffer_load_b128 v[45:48], v9, s[20:23], 0 offen
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v9, v20 offset:640
	ds_load_u8 v10, v20 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v20 offset:896
	ds_load_u8 v11, v20 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v66, v10, 16, v9
	ds_load_u8 v9, v20 offset:128
	ds_load_u8 v10, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v9, v10, v9, 0xc0c0004
	ds_load_u8 v10, v20 offset:384
	ds_load_u8 v11, v20 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v10, v11, v10, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v65, v10, 16, v9
	v_wmma_i32_16x16x16_iu4 v[9:16], v[65:66], v[49:50], v[1:8] neg_lo:[1,1,0]
	ds_load_u8 v49, v20 offset:1664
	ds_load_u8 v50, v20 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v20 offset:1920
	ds_load_u8 v65, v20 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v65, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v20 offset:1152
	ds_load_u8 v65, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v65, v49, 0xc0c0004
	ds_load_u8 v65, v20 offset:1408
	ds_load_u8 v66, v20 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v65, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[51:52], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v20 offset:2688
	ds_load_u8 v50, v20 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v20 offset:2944
	ds_load_u8 v51, v20 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v20 offset:2176
	ds_load_u8 v51, v20 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v20 offset:2432
	ds_load_u8 v52, v20 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[53:54], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v20 offset:3712
	ds_load_u8 v50, v20 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v20 offset:3968
	ds_load_u8 v51, v20 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v20 offset:3200
	ds_load_u8 v51, v20 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v20 offset:3456
	ds_load_u8 v52, v20 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[55:56], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v20 offset:4736
	ds_load_u8 v50, v20 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v20 offset:4992
	ds_load_u8 v51, v20 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v20 offset:4224
	ds_load_u8 v51, v20 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v20 offset:4480
	ds_load_u8 v52, v20 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[57:58], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v20 offset:5760
	ds_load_u8 v50, v20 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v20 offset:6016
	ds_load_u8 v51, v20 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v20 offset:5248
	ds_load_u8 v51, v20 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v20 offset:5504
	ds_load_u8 v52, v20 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[59:60], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v20 offset:6784
	ds_load_u8 v50, v20 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v20 offset:7040
	ds_load_u8 v51, v20 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v20 offset:6272
	ds_load_u8 v51, v20 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v20 offset:6528
	ds_load_u8 v52, v20 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[61:62], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v49, v20 offset:7808
	ds_load_u8 v50, v20 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v50, v49, 0xc0c0004
	ds_load_u8 v50, v20 offset:8064
	ds_load_u8 v51, v20 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v50, v51, v50, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v50, v50, 16, v49
	ds_load_u8 v49, v20 offset:7296
	ds_load_u8 v51, v20 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v49, v51, v49, 0xc0c0004
	ds_load_u8 v51, v20 offset:7552
	ds_load_u8 v52, v20 offset:7424
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v28, v67 offset:8192
	.loc	1 166 26                        ; generate_amdgcn.py:166:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v29, v[45:48]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	v_perm_b32 v51, v52, v51, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v49, v51, 16, v49
	v_wmma_i32_16x16x16_iu4 v[9:16], v[49:50], v[63:64], v[9:16] neg_lo:[1,1,0]
	.loc	1 162 26                        ; generate_amdgcn.py:162:26
	ds_load_b64 v[45:46], v30 offset:8192
	ds_load_b64 v[47:48], v31 offset:8192
	ds_load_b64 v[49:50], v32 offset:8192
	ds_load_b64 v[51:52], v33 offset:8192
	ds_load_b64 v[53:54], v34 offset:8192
	ds_load_b64 v[55:56], v35 offset:8192
	ds_load_b64 v[57:58], v36 offset:8192
	ds_load_b64 v[59:60], v37 offset:8192
	.loc	1 167 27                        ; generate_amdgcn.py:167:27
	ds_load_u8 v61, v20 offset:640
	ds_load_u8 v62, v20 offset:512
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	ds_load_u8 v62, v20 offset:896
	ds_load_u8 v63, v20 offset:768
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v62, v62, 16, v61
	ds_load_u8 v61, v20 offset:128
	ds_load_u8 v63, v20
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v63, v61, 0xc0c0004
	ds_load_u8 v63, v20 offset:384
	ds_load_u8 v64, v20 offset:256
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v63, v64, v63, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v61, v63, 16, v61
	v_wmma_i32_16x16x16_iu4 v[9:16], v[61:62], v[45:46], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v20 offset:1664
	ds_load_u8 v46, v20 offset:1536
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:1920
	ds_load_u8 v61, v20 offset:1792
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v61, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:1152
	ds_load_u8 v61, v20 offset:1024
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v61, v45, 0xc0c0004
	ds_load_u8 v61, v20 offset:1408
	ds_load_u8 v62, v20 offset:1280
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v61, v62, v61, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v61, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[47:48], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v20 offset:2688
	ds_load_u8 v46, v20 offset:2560
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:2944
	ds_load_u8 v47, v20 offset:2816
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:2176
	ds_load_u8 v47, v20 offset:2048
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v20 offset:2432
	ds_load_u8 v48, v20 offset:2304
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v47, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[49:50], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v20 offset:3712
	ds_load_u8 v46, v20 offset:3584
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:3968
	ds_load_u8 v47, v20 offset:3840
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:3200
	ds_load_u8 v47, v20 offset:3072
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v20 offset:3456
	ds_load_u8 v48, v20 offset:3328
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v47, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[51:52], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v20 offset:4736
	ds_load_u8 v46, v20 offset:4608
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:4992
	ds_load_u8 v47, v20 offset:4864
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:4224
	ds_load_u8 v47, v20 offset:4096
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v20 offset:4480
	ds_load_u8 v48, v20 offset:4352
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v47, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[53:54], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v20 offset:5760
	ds_load_u8 v46, v20 offset:5632
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:6016
	ds_load_u8 v47, v20 offset:5888
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:5248
	ds_load_u8 v47, v20 offset:5120
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v20 offset:5504
	ds_load_u8 v48, v20 offset:5376
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v47, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[55:56], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v20 offset:6784
	ds_load_u8 v46, v20 offset:6656
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:7040
	ds_load_u8 v47, v20 offset:6912
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:6272
	ds_load_u8 v47, v20 offset:6144
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v20 offset:6528
	ds_load_u8 v48, v20 offset:6400
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v47, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[57:58], v[9:16] neg_lo:[1,1,0]
	ds_load_u8 v45, v20 offset:7808
	ds_load_u8 v46, v20 offset:7680
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v46, v45, 0xc0c0004
	ds_load_u8 v46, v20 offset:8064
	ds_load_u8 v47, v20 offset:7936
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v46, v46, 16, v45
	ds_load_u8 v45, v20 offset:7296
	ds_load_u8 v47, v20 offset:7168
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v45, v47, v45, 0xc0c0004
	ds_load_u8 v47, v20 offset:7552
	ds_load_u8 v48, v20 offset:7424
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v47, v48, v47, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v45, v47, 16, v45
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[59:60], v[9:16] neg_lo:[1,1,0]
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	buffer_load_u16 v45, v25, s[24:27], 0 offen
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v25, 2, v25
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v9, v9
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	v_add_nc_u32_e32 v46, v23, v24
	s_clause 0x7
	buffer_load_u16 v47, v46, s[8:11], 0 offen
	buffer_load_u16 v48, v46, s[8:11], 0 offen offset:4
	buffer_load_u16 v49, v46, s[8:11], 0 offen offset:8
	buffer_load_u16 v50, v46, s[8:11], 0 offen offset:12
	buffer_load_u16 v51, v46, s[8:11], 0 offen offset:16
	buffer_load_u16 v52, v46, s[8:11], 0 offen offset:20
	buffer_load_u16 v53, v46, s[8:11], 0 offen offset:24
	buffer_load_u16 v46, v46, s[8:11], 0 offen offset:28
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v11, v11
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v13, v13
	v_cvt_f32_i32_e32 v14, v14
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v16, v16
	.loc	1 147 9                         ; generate_amdgcn.py:147:9
	v_add_nc_u32_e32 v24, s29, v24
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v48, 16, v48
	.loc	1 178 18                        ; generate_amdgcn.py:178:18
	v_lshlrev_b32_e32 v45, 16, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_dual_mul_f32 v10, v10, v45 :: v_dual_lshlrev_b32 v47, 16, v47
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v44, v10, v48
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v13, v13, v45 :: v_dual_lshlrev_b32 v50, 16, v50
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v12, v12, v45 :: v_dual_lshlrev_b32 v51, 16, v51
	.loc	1 179 18 is_stmt 1              ; generate_amdgcn.py:179:18
	v_lshlrev_b32_e32 v49, 16, v49
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v15, v15, v45 :: v_dual_lshlrev_b32 v52, 16, v52
	v_mul_f32_e32 v9, v9, v45
	v_mul_f32_e32 v11, v11, v45
	v_dual_mul_f32 v14, v14, v45 :: v_dual_fmac_f32 v41, v13, v51
	.loc	1 179 18                        ; generate_amdgcn.py:179:18
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v53, 16, v53
	.loc	1 180 20                        ; generate_amdgcn.py:180:20
	v_mul_f32_e32 v16, v16, v45
	.loc	1 180 13 is_stmt 0              ; generate_amdgcn.py:180:13
	v_fmac_f32_e32 v42, v12, v50
	s_waitcnt vmcnt(0)
	v_dual_fmac_f32 v43, v11, v49 :: v_dual_lshlrev_b32 v46, 16, v46
	v_fmac_f32_e32 v26, v9, v47
	v_dual_fmac_f32 v40, v14, v52 :: v_dual_fmac_f32 v39, v15, v53
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v38, v16, v46
	.loc	1 147 9 is_stmt 1               ; generate_amdgcn.py:147:9
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 187 19 is_stmt 1              ; generate_amdgcn.py:187:19
	v_dual_max_f32 v1, v26, v26 :: v_dual_max_f32 v2, v44, v44
	v_max_f32_e32 v3, v43, v43
	v_dual_max_f32 v5, v41, v41 :: v_dual_max_f32 v8, v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, 0, v1 :: v_dual_max_f32 v4, v42, v42
	v_dual_max_f32 v2, 0, v2 :: v_dual_max_f32 v3, 0, v3
	v_dual_max_f32 v6, v40, v40 :: v_dual_max_f32 v7, v39, v39
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, 0, v4
	v_dual_max_f32 v10, 0, v5 :: v_dual_max_f32 v13, 0, v8
	v_dual_max_f32 v6, 0, v6 :: v_dual_max_f32 v7, 0, v7
	.loc	1 188 19                        ; generate_amdgcn.py:188:19
	v_dual_mul_f32 v12, v1, v1 :: v_dual_mul_f32 v11, v2, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v9, v3, v3 :: v_dual_mul_f32 v10, v10, v10
	v_dual_mul_f32 v5, v4, v4 :: v_dual_mul_f32 v8, v6, v6
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v4, v7, v7 :: v_dual_mul_f32 v3, v13, v13
	v_mov_b32_e32 v2, v19
.LBB0_7:                                ; %._crit_edge
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v1.h, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b16_e32 v1.l, v11.h
	v_mov_b16_e32 v7.l, v12.h
	v_mov_b16_e32 v13.l, v10.h
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_lshrrev_b32_e32 v6, 1, v0
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_mov_b16_e32 v7.h, v1.h
	v_and_b32_e32 v14, 1, v1
	v_mov_b16_e32 v1.l, v5.h
	v_mov_b16_e32 v13.h, v1.h
	v_mov_b16_e32 v15.l, v9.h
	v_and_b32_e32 v7, 1, v7
	v_mov_b16_e32 v15.h, v1.h
	v_and_b32_e32 v16, 1, v1
	v_mov_b16_e32 v1.l, v8.h
	v_and_b32_e32 v13, 1, v13
	v_and_b32_e32 v0, 16, v0
	v_add3_u32 v11, v11, v14, 0x7fff
	v_add3_u32 v5, v5, v16, 0x7fff
	v_and_b32_e32 v14, 1, v1
	v_add3_u32 v10, v10, v13, 0x7fff
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_mov_b32_e32 v0, 0x5410
	v_add3_u32 v7, v12, v7, 0x7fff
	v_and_b32_e32 v12, 1, v15
	v_add3_u32 v8, v8, v14, 0x7fff
	v_mov_b16_e32 v8.l, v10.h
	v_mov_b32_e32 v10, 0x7632
	v_mov_b16_e32 v11.l, v7.h
	v_add3_u32 v7, v9, v12, 0x7fff
	v_mov_b16_e32 v9.l, v4.h
	v_mov_b16_e32 v9.h, v1.h
	v_mov_b16_e32 v1.l, v3.h
	v_cndmask_b32_e32 v0, 0x1054, v0, vcc_lo
	v_cndmask_b32_e32 v10, 0x3276, v10, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v12, v8, v11 :: v_dual_and_b32 v9, 1, v9
	v_and_b32_e32 v1, 1, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v0, v0, 8, v0
	v_mov_b16_e32 v5.l, v7.h
	s_mov_b32 s0, 0x76543210
	v_add3_u32 v4, v4, v9, 0x7fff
	v_lshl_or_b32 v9, v10, 8, v10
	v_add3_u32 v1, v3, v1, 0x7fff
	v_and_b32_e32 v0, 0x540054, v0
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s13, 0xffff
	v_mov_b16_e32 v1.l, v4.h
	v_and_b32_e32 v3, 0x760076, v9
	.loc	1 99 32                         ; generate_amdgcn.py:99:32
	v_and_b32_e32 v6, 0x78, v6
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_mul_lo_u32 v4, v2, s15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 190 9 is_stmt 0               ; generate_amdgcn.py:190:9
	v_dual_cndmask_b32 v2, v11, v8 :: v_dual_cndmask_b32 v7, v5, v1
	v_lshl_or_b32 v0, v0, 4, v0
	v_lshl_or_b32 v3, v3, 4, v3
	v_cndmask_b32_e32 v5, v1, v5, vcc_lo
	v_permlanex16_b32 v1, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v7, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v2, 0x5040504, v0
	v_and_b32_e32 v3, 0x7060706, v3
	.loc	1 190 18                        ; generate_amdgcn.py:190:18
	v_lshl_or_b32 v6, s14, 7, v6
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 190 9                         ; generate_amdgcn.py:190:9
	v_perm_b32 v0, v1, v12, v2
	v_perm_b32 v1, v1, v12, v3
	v_perm_b32 v2, v7, v5, v2
	v_perm_b32 v3, v7, v5, v3
	v_add_lshl_u32 v4, v6, v4, 1
	buffer_store_b128 v[0:3], v4, s[12:15], 0 offen
	.loc	1 79 1 is_stmt 1                ; generate_amdgcn.py:79:1
	s_endpgm
.Ltmp20:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 68
		.amdhsa_next_free_sgpr 32
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
		.amdhsa_inst_pref_size 38
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_vgpr, 68
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4784
; TotalNumSgprs: 34
; NumVgprs: 68
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 8
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 68
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_sc256_relu2_bm32_bn128_bk128_gm4_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     68
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
