	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x30
	s_load_b128 s[20:23], s[0:1], 0x0
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v17, 15, v0
	v_lshrrev_b32_e32 v25, 4, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_bfe_i32 v6, v0, 7, 1
	v_and_b32_e32 v7, 0x7f, v0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_lshlrev_b32_e32 v26, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v18, 4, v17
	v_and_b32_e32 v20, 8, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v6, 0x88, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add_nc_u32_e32 v22, 0, v26
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v6, v6, v7
	s_delay_alu instid0(VALU_DEP_1)
	v_add_nc_u32_e32 v21, 0, v6
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s29, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s28, 15
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s8, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 28
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s8, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s8, s8, 4
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s4, s4, 2
	s_mov_b64 s[24:25], s[22:23]
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_mov_b32 s23, 0x31027000
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s22, 0x7ffffffe
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s27, s23
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s26, s22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_cvt_u32_f32 s6, s6
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s9, s6
	s_mul_hi_u32 s9, s6, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	s_add_i32 s6, s6, s9
	s_xor_b32 s9, s2, s4
	s_mul_hi_u32 s6, s7, s6
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s6, s5
	s_sub_i32 s7, s7, s10
	s_add_i32 s10, s6, 1
	s_sub_i32 s11, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s7, s11, s7
	s_add_i32 s10, s6, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s5, s10, s6
	s_load_b32 s10, s[0:1], 0x38
	s_xor_b32 s5, s5, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s5, s5, s9
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s6, s5, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s5, s5, s4
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s7, s8, s6
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s5
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s7, s7, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s5, s2
	s_abs_i32 s8, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s9, s8
	s_sub_i32 s11, 0, s8
	v_rcp_iflag_f32_e32 v1, s9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_cvt_u32_f32 s9, s9
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s11, s11, s9
	s_mul_hi_u32 s4, s9, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s9, s9, s4
	s_mul_hi_u32 s4, s5, s9
	s_xor_b32 s9, s2, s7
	s_mul_i32 s11, s4, s8
	s_ashr_i32 s28, s9, 31
	s_sub_i32 s5, s5, s11
	s_add_i32 s9, s4, 1
	s_sub_i32 s11, s5, s8
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s5, s11, s5
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s5, s8
	s_cselect_b32 s4, s9, s4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s5, s10, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s30, s4, s28
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s4, s10, s5
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s5, s30, s28
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s31, s4, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s4, s5, s7
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mad_u64_u32 v[1:2], null, s31, v25, v[17:18]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s4
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[2:3], null, s29, v25, v[18:19]
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s6
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s14, s3, 4
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s3, s2, 4
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s2, s29, s14
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s4, s3, s31
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s15, s5, 8
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v23, s14, s4, v1
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add3_u32 v24, s2, s15, v2
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s10, 1
	s_mov_b32 s4, 0
	s_cselect_b32 s2, -1, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s21, s21, 0xffff
	v_cndmask_b32_e64 v1, 0x80000000, v23, s2
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e64 v2, 0x80000000, v24, s2
	s_and_b32 s25, s25, 0xffff
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u8 v5, v1, s[20:23], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[1:4], v2, s[24:27], 0 offen
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s10, 0x101
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(1)
	ds_store_b8 v21, v5 offset:4096
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[1:4]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v27, 8, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr27
.LBB0_3:                                ; %Flow93
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[12:13], s[0:1], 0x20
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v2, 0
	v_lshrrev_b32_e32 v19, 1, v0
	v_dual_mov_b32 v3, 0 :: v_dual_mov_b32 v4, 0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	v_dual_mov_b32 v7, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v16, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	.loc	1 158 30 is_stmt 1              ; generate_amdgcn.py:158:30
	s_lshl_b32 s0, s29, 7
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_mov_b32 s4, 0
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s26, s22
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v1, s0, v24
	.loc	1 158 22 is_stmt 0              ; generate_amdgcn.py:158:22
	s_mov_b32 s27, s23
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	buffer_load_u8 v39, v23, s[20:23], 0 offen offset:128
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[27:30], v1, s[24:27], 0 offen
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v1, 0, v17
	v_and_b32_e32 v2, 0x70, v19
	v_and_b32_e32 v5, 0x70, v26
	v_bfe_i32 v6, v0, 3, 1
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s1, s31, 0x7f
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v23, v1, v2
.Ltmp13:
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v1, v23 offset:1280
	ds_load_u8 v2, v23 offset:1024
	ds_load_u8 v3, v23 offset:1792
	ds_load_u8 v4, v23 offset:1536
	v_and_or_b32 v5, 0x88, v6, v5
	ds_load_u8 v6, v23 offset:256
	ds_load_u8 v7, v23
	ds_load_u8 v8, v23 offset:768
	ds_load_u8 v9, v23 offset:512
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s1, s1, 7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_max_u32 s1, s1, 2
	v_xor_b32_e32 v10, 8, v5
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v24, 0, v5
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_eq_u32 s1, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v26, 0, v10
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v34, v2, 16, v1
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v2, v9, v8, 0xc0c0004
	v_dual_mov_b32 v16, s11 :: v_dual_mov_b32 v13, s8
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_b64 v[31:32], v24 offset:4096
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v12, s7
	ds_load_u8 v37, v23 offset:1920
	ds_load_u8 v38, v23 offset:1664
	ds_load_u8 v40, v23 offset:1408
	ds_load_u8 v41, v23 offset:1152
	ds_load_u8 v42, v23 offset:896
	ds_load_u8 v43, v23 offset:640
	ds_load_u8 v44, v23 offset:384
	ds_load_u8 v45, v23 offset:128
	ds_load_u8 v46, v23 offset:3328
	ds_load_u8 v47, v23 offset:3072
	ds_load_u8 v48, v23 offset:2304
	ds_load_u8 v49, v23 offset:2048
	ds_load_u8 v50, v23 offset:2816
	ds_load_u8 v51, v23 offset:2560
	ds_load_u8 v52, v23 offset:3840
	ds_load_u8 v53, v23 offset:3584
	ds_load_u8 v54, v23 offset:3968
	ds_load_u8 v55, v23 offset:3712
	ds_load_u8 v56, v23 offset:3456
	ds_load_u8 v57, v23 offset:3200
	ds_load_u8 v58, v23 offset:2944
	ds_load_u8 v59, v23 offset:2688
	ds_load_u8 v60, v23 offset:2432
	ds_load_u8 v61, v23 offset:2176
	v_perm_b32 v1, v7, v6, 0xc0c0004
	v_dual_mov_b32 v15, s10 :: v_dual_mov_b32 v14, s9
	v_dual_mov_b32 v11, s6 :: v_dual_mov_b32 v10, s5
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v33, v2, 16, v1
	v_mov_b32_e32 v9, s4
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_b64 v[35:36], v26 offset:4096
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v46, v47, v46, 0xc0c0004
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v21, v39 offset:4096
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[27:30]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[33:34], v[31:32], v[9:16] neg_lo:[1,1,0]
	v_perm_b32 v33, v41, v40, 0xc0c0004
	v_perm_b32 v34, v38, v37, 0xc0c0004
	v_perm_b32 v37, v45, v44, 0xc0c0004
	v_perm_b32 v38, v43, v42, 0xc0c0004
	v_perm_b32 v40, v53, v52, 0xc0c0004
	v_perm_b32 v41, v49, v48, 0xc0c0004
	v_perm_b32 v42, v51, v50, 0xc0c0004
	v_lshl_or_b32 v34, v34, 16, v33
	v_lshl_or_b32 v33, v38, 16, v37
	v_perm_b32 v43, v57, v56, 0xc0c0004
	v_perm_b32 v44, v55, v54, 0xc0c0004
	v_perm_b32 v45, v61, v60, 0xc0c0004
	v_perm_b32 v47, v59, v58, 0xc0c0004
	v_lshl_or_b32 v38, v40, 16, v46
	v_lshl_or_b32 v37, v42, 16, v41
	v_wmma_i32_16x16x16_iu4 v[9:16], v[33:34], v[31:32], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v32, v44, 16, v43
	v_lshl_or_b32 v31, v47, 16, v45
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[35:36], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[31:32], v[35:36], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.peel.next
	v_add3_u32 v27, s14, v25, 0x100
	v_add_nc_u32_e32 v25, s3, v25
	s_lshl_b32 s4, s30, 8
	s_add_i32 s1, s1, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v29, s29, v27
	v_mad_u64_u32 v[27:28], null, s31, v25, s[14:15]
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_add3_u32 v18, v29, s4, v18
	s_lshl_b32 s4, s28, 8
	v_add3_u32 v25, v27, v17, 0x100
	s_delay_alu instid0(VALU_DEP_2)
	v_subrev_nc_u32_e32 v18, s4, v18
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u8 v43, v25, s[20:23], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[27:30], v18, s[24:27], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v35, v23 offset:3328
	ds_load_u8 v36, v23 offset:3072
	ds_load_u8 v37, v23 offset:3840
	ds_load_u8 v38, v23 offset:3584
	ds_load_u8 v39, v23 offset:2304
	ds_load_u8 v40, v23 offset:2048
	ds_load_u8 v41, v23 offset:2816
	ds_load_u8 v42, v23 offset:2560
	ds_load_u8 v44, v23 offset:1280
	ds_load_u8 v45, v23 offset:1024
	ds_load_u8 v46, v23 offset:1792
	ds_load_u8 v47, v23 offset:1536
	ds_load_u8 v48, v23 offset:1920
	ds_load_u8 v49, v23 offset:1664
	ds_load_u8 v50, v23 offset:1408
	ds_load_u8 v51, v23 offset:1152
	ds_load_u8 v52, v23 offset:256
	ds_load_u8 v53, v23
	ds_load_u8 v54, v23 offset:768
	ds_load_u8 v55, v23 offset:512
	ds_load_u8 v56, v23 offset:896
	ds_load_u8 v57, v23 offset:640
	ds_load_u8 v58, v23 offset:384
	ds_load_u8 v59, v23 offset:128
	ds_load_u8 v60, v23 offset:3968
	ds_load_u8 v61, v23 offset:3712
	ds_load_u8 v62, v23 offset:3456
	ds_load_u8 v63, v23 offset:3200
	ds_load_u8 v64, v23 offset:2944
	ds_load_u8 v65, v23 offset:2688
	ds_load_u8 v66, v23 offset:2432
	ds_load_u8 v67, v23 offset:2176
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_b64 v[31:32], v24 offset:4096
	ds_load_b64 v[33:34], v26 offset:4096
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v44, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v45, v47, v46, 0xc0c0004
	v_perm_b32 v41, v42, v41, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v46, v53, v52, 0xc0c0004
	v_perm_b32 v53, v40, v39, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v47, v55, v54, 0xc0c0004
	v_perm_b32 v39, v51, v50, 0xc0c0004
	v_perm_b32 v40, v49, v48, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v48, v57, v56, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v42, v59, v58, 0xc0c0004
	v_perm_b32 v52, v36, v35, 0xc0c0004
	v_perm_b32 v37, v38, v37, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v50, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v49, v63, v62, 0xc0c0004
	v_lshl_or_b32 v36, v45, 16, v44
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v54, v65, v64, 0xc0c0004
	v_lshl_or_b32 v35, v47, 16, v46
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v51, v67, v66, 0xc0c0004
	v_lshl_or_b32 v40, v40, 16, v39
	v_lshl_or_b32 v39, v48, 16, v42
	v_lshl_or_b32 v38, v37, 16, v52
	v_lshl_or_b32 v37, v41, 16, v53
	v_lshl_or_b32 v42, v50, 16, v49
	v_lshl_or_b32 v41, v54, 16, v51
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[35:36], v[31:32], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[39:40], v[31:32], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v18, s0, v18
	v_add_nc_u32_e32 v25, 0x80, v25
	s_add_i32 s1, s1, -1
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[37:38], v[33:34], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[41:42], v[33:34], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s1, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b8 v21, v43 offset:4096
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v22, v[27:30]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %Flow92
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v27, v20
.LBB0_8:                                ; %._crit_edge
	v_and_b32_e32 v20, 0xf0, v0
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_and_b32_e32 v18, 7, v0
	s_delay_alu instid0(VALU_DEP_3)
	v_cmp_eq_u32_e64 s0, 0, v27
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_10
; %bb.9:
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b32_e32 v19, 0x70, v19
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v21, 0x88, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add3_u32 v19, 0, v19, v17
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshl_or_b32 v21, v18, 4, v21
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v23, v19 offset:1280
	ds_load_u8 v24, v19 offset:1024
	ds_load_u8 v25, v19 offset:1792
	ds_load_u8 v26, v19 offset:1536
	ds_load_u8 v27, v19 offset:256
	ds_load_u8 v28, v19
	ds_load_u8 v29, v19 offset:768
	ds_load_u8 v30, v19 offset:512
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v31, v21, 8, 0
	v_add_nc_u32_e32 v21, 0, v21
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v32, v19 offset:3328
	ds_load_u8 v33, v19 offset:3072
	ds_load_u8 v34, v19 offset:1920
	ds_load_u8 v35, v19 offset:1664
	ds_load_u8 v36, v19 offset:1408
	ds_load_u8 v37, v19 offset:1152
	ds_load_u8 v38, v19 offset:896
	ds_load_u8 v39, v19 offset:640
	ds_load_u8 v40, v19 offset:384
	ds_load_u8 v41, v19 offset:128
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_b64 v[21:22], v21 offset:4096
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v23, v24, v23, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v24, v26, v25, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v25, v28, v27, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v26, v30, v29, 0xc0c0004
	ds_load_u8 v27, v19 offset:2304
	ds_load_u8 v28, v19 offset:2048
	ds_load_u8 v29, v19 offset:2816
	ds_load_u8 v30, v19 offset:2560
	ds_load_u8 v42, v19 offset:3840
	ds_load_u8 v43, v19 offset:3584
	ds_load_u8 v44, v19 offset:3968
	ds_load_u8 v45, v19 offset:3712
	ds_load_u8 v46, v19 offset:3456
	ds_load_u8 v47, v19 offset:3200
	ds_load_u8 v48, v19 offset:2944
	ds_load_u8 v49, v19 offset:2688
	ds_load_u8 v50, v19 offset:2432
	ds_load_u8 v19, v19 offset:2176
	v_lshl_or_b32 v24, v24, 16, v23
	v_lshl_or_b32 v23, v26, 16, v25
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_b64 v[25:26], v31 offset:4096
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v31, v33, v32, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v32, v41, v40, 0xc0c0004
	v_perm_b32 v33, v39, v38, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[21:22], v[1:8] neg_lo:[1,1,0]
	v_perm_b32 v23, v37, v36, 0xc0c0004
	v_perm_b32 v24, v35, v34, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v34, v43, v42, 0xc0c0004
	v_perm_b32 v27, v28, v27, 0xc0c0004
	v_perm_b32 v29, v30, v29, 0xc0c0004
	v_lshl_or_b32 v24, v24, 16, v23
	v_lshl_or_b32 v23, v33, 16, v32
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v30, v47, v46, 0xc0c0004
	v_perm_b32 v32, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v19, v19, v50, 0xc0c0004
	v_perm_b32 v33, v49, v48, 0xc0c0004
	v_lshl_or_b32 v28, v34, 16, v31
	v_lshl_or_b32 v27, v29, 16, v27
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[21:22], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v22, v32, 16, v30
	v_lshl_or_b32 v21, v33, 16, v19
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[27:28], v[25:26], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[25:26], v[9:16] neg_lo:[1,1,0]
.LBB0_10:                               ; %._crit_edge._crit_edge
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v19, s3, v17
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v22, v1
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s5, s17, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	v_lshlrev_b32_e32 v19, 1, v19
	s_mov_b32 s4, s16
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	v_or_b32_e32 v17, s15, v0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v24, v3
	v_cvt_f32_i32_e32 v23, v2
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	buffer_load_u16 v19, v19, s[4:7], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s5, s19, 0xffff
	s_mov_b32 s4, s18
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v25, v4
	v_cvt_f32_i32_e32 v26, v5
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_cndmask_b32_e64 v4, 0x2040, 0, s0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v37, v16
	v_cvt_f32_i32_e32 v33, v12
	v_cvt_f32_i32_e32 v27, v6
	v_cvt_f32_i32_e32 v28, v7
	v_cvt_f32_i32_e32 v29, v8
	v_cvt_f32_i32_e32 v30, v9
	v_cvt_f32_i32_e32 v31, v10
	v_cvt_f32_i32_e32 v32, v11
	v_cvt_f32_i32_e32 v34, v13
	v_cvt_f32_i32_e32 v35, v14
	v_cvt_f32_i32_e32 v36, v15
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s0, s29, 3
	s_mul_i32 s1, s29, 5
	s_mul_i32 s2, s29, 6
	s_mul_i32 s8, s29, 10
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s13, s13, 0xffff
	s_mov_b32 s14, s6
	s_mov_b32 s15, s7
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s9, s29, 11
	s_mul_i32 s10, s29, 12
	s_mul_i32 s11, s29, 13
	s_mul_i32 s16, s29, 14
	s_mul_i32 s17, s29, 15
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v19, 16, v19
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v21, 1, v17
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v2, 1, v0
	v_lshlrev_b32_e32 v0, 5, v0
	v_lshlrev_b32_e32 v3, 1, v20
	v_lshlrev_b32_e32 v1, 2, v20
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	buffer_load_u16 v21, v21, s[4:7], 0 offen
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v2, 28, v2
	v_and_b32_e32 v0, 32, v0
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshl_or_b32 v5, v18, 2, v3
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	v_mad_u64_u32 v[16:17], null, s3, s29, v[17:18]
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_add_nc_u32_e32 v12, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or3_b32 v17, v1, v0, v2
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_xor_b32_e32 v0, v5, v4
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	s_mul_i32 s4, s29, 7
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_add_nc_u32_e32 v49, 0, v17
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshl_or_b32 v18, v18, 10, v0
	v_xad_u32 v50, 0x404, v17, 0
	v_xad_u32 v51, 0x808, v17, 0
	v_xad_u32 v52, 0xc0c, v17, 0
	v_xad_u32 v53, 0x1010, v17, 0
	v_xad_u32 v64, v18, 4, 0
	v_xad_u32 v65, v18, 8, 0
	v_xad_u32 v66, v18, 12, 0
	v_xad_u32 v67, v18, 16, 0
	v_xad_u32 v54, 0x1414, v17, 0
	v_xad_u32 v55, 0x1c1c, v17, 0
	v_xad_u32 v56, 0x2040, v17, 0
	v_xad_u32 v57, 0x2444, v17, 0
	v_xad_u32 v58, 0x2848, v17, 0
	v_xad_u32 v68, v18, 20, 0
	v_xad_u32 v69, v18, 24, 0
	v_xad_u32 v59, 0x2c4c, v17, 0
	v_xad_u32 v60, 0x3050, v17, 0
	v_xad_u32 v61, 0x3454, v17, 0
	v_xad_u32 v62, 0x3858, v17, 0
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v38, v16, s29, 2
	.loc	1 247 23 is_stmt 0              ; generate_amdgcn.py:247:23
	s_mul_i32 s5, s29, 9
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v39, v16, s0, 2
	v_add_lshl_u32 v40, v16, s1, 2
	v_add_lshl_u32 v41, v16, s2, 2
	v_add_lshl_u32 v42, v16, s4, 2
	v_add_lshl_u32 v43, v16, s5, 2
	v_add_lshl_u32 v44, v16, s8, 2
	v_add_lshl_u32 v45, v16, s9, 2
	v_add_lshl_u32 v46, v16, s10, 2
	v_add_lshl_u32 v47, v16, s11, 2
	v_add_lshl_u32 v48, v16, s16, 2
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v21
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v21, 0x1818, v17, 0
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	ds_store_b32 v49, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v2, v2, v19
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v2, v2, v24 :: v_dual_mul_f32 v3, v3, v19
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v0, v0, v19
	v_mul_f32_e32 v1, v1, v19
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v6, v6, v19
	v_mul_f32_e32 v5, v5, v19
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v3, v3, v25
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v63, 0, v18
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v7, v7, v19 :: v_dual_lshlrev_b32 v20, 2, v16
	v_mul_f32_e32 v4, v4, v19
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v0, v0, v22
	v_xad_u32 v18, v18, 28, 0
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mul_f32 v6, v6, v28 :: v_dual_mul_f32 v7, v7, v29
	v_mul_f32_e32 v4, v4, v26
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v8, v8, v19
	v_mul_f32_e32 v9, v9, v19
	v_mul_f32_e32 v11, v11, v19
	v_mul_f32_e32 v10, v10, v19
	v_mul_f32_e32 v12, v12, v19
	v_mul_f32_e32 v13, v13, v19
	v_mul_f32_e32 v15, v15, v19
	v_mul_f32_e32 v14, v14, v19
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v1, v1, v23 :: v_dual_mul_f32 v8, v8, v30
	v_mul_f32_e32 v11, v11, v33
	v_dual_mul_f32 v9, v9, v31 :: v_dual_mul_f32 v12, v12, v34
	v_dual_mul_f32 v5, v5, v27 :: v_dual_mul_f32 v10, v10, v32
	v_mul_f32_e32 v15, v15, v37
	v_dual_mul_f32 v13, v13, v35 :: v_dual_mul_f32 v14, v14, v36
	ds_store_2addr_stride64_b32 v63, v0, v8 offset1:2
	ds_store_2addr_stride64_b32 v64, v1, v9 offset1:2
	ds_store_2addr_stride64_b32 v65, v2, v10 offset1:2
	ds_store_2addr_stride64_b32 v66, v3, v11 offset1:2
	ds_store_2addr_stride64_b32 v67, v4, v12 offset1:2
	ds_store_2addr_stride64_b32 v68, v5, v13 offset1:2
	ds_store_2addr_stride64_b32 v69, v6, v14 offset1:2
	ds_store_2addr_stride64_b32 v18, v7, v15 offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v0, v49
	ds_load_b32 v1, v50
	ds_load_b32 v2, v51
	ds_load_b32 v3, v52
	ds_load_b32 v4, v53
	ds_load_b32 v5, v54
	ds_load_b32 v6, v21
	ds_load_b32 v7, v55
	ds_load_b32 v8, v56
	ds_load_b32 v9, v57
	ds_load_b32 v10, v58
	v_xad_u32 v11, 0x3c5c, v17, 0
	ds_load_b32 v12, v59
	ds_load_b32 v13, v60
	ds_load_b32 v14, v61
	ds_load_b32 v15, v62
	ds_load_b32 v11, v11
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_lshl_add_u32 v17, s29, 3, v20
	v_lshl_add_u32 v18, s29, 4, v20
	v_lshl_add_u32 v19, s29, 5, v20
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v20, s[12:15], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v1, v38, s[12:15], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v2, v17, s[12:15], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v3, v39, s[12:15], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v4, v18, s[12:15], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v5, v40, s[12:15], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v6, v41, s[12:15], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v7, v42, s[12:15], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v8, v19, s[12:15], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v9, v43, s[12:15], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v10, v44, s[12:15], 0 offen
	v_add_lshl_u32 v0, v16, s17, 2
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v45, s[12:15], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v13, v46, s[12:15], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v14, v47, s[12:15], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v15, v48, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	buffer_atomic_add_f32 v11, v0, s[12:15], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
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
		.amdhsa_next_free_vgpr 241
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
		.amdhsa_inst_pref_size 34
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.num_vgpr, 70
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.numbered_sgpr, 32
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 4276
; TotalNumSgprs: 34
; NumVgprs: 70
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 34
; NumVGPRsForWavesPerEU: 241
; Occupancy: 5
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
	.byte	115                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x4d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	17                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x59:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
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
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm16_bn256_bk32_gm4_w8_s2_weu2_sk8_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     70
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
