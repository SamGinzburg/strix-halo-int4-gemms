	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b32 s13, s[0:1], 0x38
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v43, 3, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v37, 7, v0
	v_lshrrev_b32_e32 v45, 4, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_bfe_i32 v10, v0, 6, 1
	v_bfe_i32 v35, v0, 3, 1
	v_lshrrev_b32_e32 v36, 1, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v44, 1, v37
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v14, 0x88, v10
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s24, 31
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s9, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 24
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s9, s9, 27
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s9
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s12, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s12
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s8, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
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
	s_sub_i32 s14, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s15, s14, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s14, s14, s12
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s15
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s14
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s16, s4, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s14, s2
	s_abs_i32 s17, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s17
	s_sub_i32 s19, 0, s17
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1)
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s18, s4, 0x4f7ffffe
	s_clause 0x1
	s_load_b256 s[4:11], s[0:1], 0x0
	s_load_b64 s[0:1], s[0:1], 0x20
	s_cvt_u32_f32 s18, s18
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s19, s19, s18
	s_mul_hi_u32 s12, s18, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s18, s18, s12
	s_mul_hi_u32 s12, s14, s18
	s_xor_b32 s18, s2, s16
	s_mul_i32 s19, s12, s17
	s_ashr_i32 s27, s18, 31
	s_sub_i32 s14, s14, s19
	s_add_i32 s18, s12, 1
	s_sub_i32 s19, s14, s17
	s_cmp_ge_u32 s14, s17
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[20:21], s[6:7]
	s_cselect_b32 s12, s18, s12
	s_cselect_b32 s14, s19, s14
	s_add_i32 s18, s12, 1
	s_cmp_ge_u32 s14, s17
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s12, s18, s12
	s_mov_b32 s6, 0x7ffffffe
	s_xor_b32 s28, s12, s27
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s12, s13, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s14, s28, s27
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s12, s13, s12
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s16, s14, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s29, s12, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s16
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mul_lo_u32 v3, s29, v43
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s15
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s22, s6
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s24, s2, 5
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_mov_b32 s23, s7
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s2, s24, s29
	s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
	v_add3_u32 v41, v3, v44, s2
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s2, s3, 4
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s3, s14, 8
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s13, 1
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_mul_i32 s12, s25, s2
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 vcc_lo, -1, 0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v34, 15, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_and_b32 s21, s21, 0xffff
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_lt_i32 s13, 0x82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshlrev_b32_e32 v33, 4, v34
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_mad_u64_u32 v[1:2], null, s25, v45, v[33:34]
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v2, s2, v41
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add3_u32 v40, s12, s3, v1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	s_mov_b32 s12, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_cndmask_b32_e32 v2, 0x80000000, v40, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v42, v1, s[4:7], 0 offen
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[46:49], v2, s[20:23], 0 offen
	v_mov_b32_e32 v1, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v9, 1, v0
	v_dual_mov_b32 v6, v1 :: v_dual_lshlrev_b32 v39, 4, v0
	v_mov_b32_e32 v4, v1
	v_mov_b32_e32 v5, v1
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v8, v1 :: v_dual_and_b32 v13, 0x17e, v9
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v17, v1
	v_dual_mov_b32 v18, v1 :: v_dual_add_nc_u32 v39, 0, v39
	v_xor_b32_e32 v38, v14, v13
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v19, v1
	v_dual_mov_b32 v20, v1 :: v_dual_lshlrev_b32 v37, 4, v37
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v11, v1
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v13, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v15, v1
	v_mov_b32_e32 v16, v1
	v_add_nc_u32_e32 v38, 0, v38
	s_waitcnt vmcnt(1)
	ds_store_b16 v38, v42 offset:4096
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[46:49]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_4
; %bb.1:                                ; %.lr.ph
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	s_lshl_b32 s26, s25, 6
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v1, s2, 64, v41
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s13, s12
	s_mov_b32 s14, s12
	s_mov_b32 s15, s12
	s_mov_b32 s16, s12
	s_mov_b32 s17, s12
	s_mov_b32 s18, s12
	s_mov_b32 s19, s12
	.loc	1 158 30                        ; generate_amdgcn.py:158:30
	v_add_nc_u32_e32 v2, s26, v40
	.loc	1 158 22 is_stmt 0              ; generate_amdgcn.py:158:22
	s_mov_b32 s22, s6
	s_mov_b32 s23, s7
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	buffer_load_u16 v64, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[46:49], v2, s[20:23], 0 offen
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v1, 0, v34
	v_and_b32_e32 v2, 0x70, v36
	v_and_or_b32 v5, 0x88, v35, v37
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s30, s29, 63
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v40, v1, v2
.Ltmp13:
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v1, v40 offset:1280
	ds_load_u8 v2, v40 offset:1024
	ds_load_u8 v3, v40 offset:1792
	ds_load_u8 v4, v40 offset:1536
	ds_load_u8 v6, v40 offset:256
	ds_load_u8 v7, v40
	ds_load_u8 v8, v40 offset:768
	ds_load_u8 v9, v40 offset:512
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v10, 0, v5
	v_xor_b32_e32 v5, 8, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_nc_u32_e32 v41, 0x1000, v10
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v2, v4, v3, 0xc0c0004
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v4, v9, v8, 0xc0c0004
	v_mov_b32_e32 v9, s12
	v_mov_b32_e32 v13, s16
	ds_load_u8 v17, v40 offset:1920
	ds_load_u8 v18, v40 offset:1664
	ds_load_u8 v19, v40 offset:1408
	ds_load_u8 v20, v40 offset:1152
	ds_load_u8 v21, v40 offset:896
	ds_load_u8 v22, v40 offset:640
	ds_load_u8 v23, v40 offset:384
	ds_load_u8 v24, v40 offset:128
	ds_load_u8 v25, v40 offset:3328
	ds_load_u8 v26, v40 offset:3072
	ds_load_u8 v27, v40 offset:3840
	ds_load_u8 v28, v40 offset:3584
	ds_load_u8 v29, v40 offset:2304
	ds_load_u8 v30, v40 offset:2048
	ds_load_u8 v31, v40 offset:2816
	ds_load_u8 v32, v40 offset:2560
	ds_load_u8 v60, v40 offset:3968
	ds_load_u8 v65, v40 offset:3712
	ds_load_u8 v66, v40 offset:3456
	ds_load_u8 v67, v40 offset:3200
	ds_load_u8 v68, v40 offset:2944
	ds_load_u8 v69, v40 offset:2688
	ds_load_u8 v70, v40 offset:2432
	ds_load_u8 v71, v40 offset:2176
	v_mov_b32_e32 v12, s15
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[50:53], v41 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v14, s17
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v42, 0x1000, v5
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_perm_b32 v3, v7, v6, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v25, v26, v25, 0xc0c0004
	v_lshl_or_b32 v59, v2, 16, v1
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v26, v28, v27, 0xc0c0004
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[54:57], v42 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_lshl_or_b32 v58, v4, 16, v3
	v_dual_mov_b32 v10, s13 :: v_dual_mov_b32 v11, s14
	v_dual_mov_b32 v15, s18 :: v_dual_mov_b32 v16, s19
	v_lshl_or_b32 v61, v26, 16, v25
	v_perm_b32 v17, v18, v17, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v25, v67, v66, 0xc0c0004
	v_perm_b32 v19, v20, v19, 0xc0c0004
	v_perm_b32 v18, v24, v23, 0xc0c0004
	v_perm_b32 v20, v22, v21, 0xc0c0004
	v_perm_b32 v21, v30, v29, 0xc0c0004
	v_perm_b32 v22, v32, v31, 0xc0c0004
	v_lshl_or_b32 v63, v17, 16, v19
	v_perm_b32 v26, v65, v60, 0xc0c0004
	v_lshl_or_b32 v62, v20, 16, v18
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v27, v71, v70, 0xc0c0004
	v_perm_b32 v28, v69, v68, 0xc0c0004
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[58:59], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v60, v22, 16, v21
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[50:51], v[9:16] neg_lo:[1,1,0]
	v_lshl_or_b32 v51, v26, 16, v25
	v_lshl_or_b32 v50, v28, 16, v27
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[52:53], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[52:53], v[9:16] neg_lo:[1,1,0]
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s12, s30, 6
.Ltmp15:
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[60:61], v[54:55], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[50:51], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[60:61], v[56:57], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[50:51], v[56:57], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_max_u32 s12, s12, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_eq_u32 s12, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v38, v64 offset:4096
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[46:49]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_4
; %bb.2:                                ; %.peel.next
	v_add3_u32 v45, s2, v45, 0x80
	v_add_nc_u32_e32 v43, s24, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v47, s25, v45
	v_mad_u64_u32 v[45:46], null, s29, v43, s[2:3]
	s_lshl_b32 s2, s28, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add3_u32 v33, v47, s2, v33
	s_lshl_b32 s2, s27, 8
	v_add3_u32 v43, v45, v44, 0x80
	v_subrev_nc_u32_e32 v33, s2, v33
	s_add_i32 s2, s12, -2
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_u16 v64, v43, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	buffer_load_b128 v[44:47], v33, s[20:23], 0 offen
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v56, v40 offset:3328
	ds_load_u8 v57, v40 offset:3072
	ds_load_u8 v58, v40 offset:3840
	ds_load_u8 v59, v40 offset:3584
	ds_load_u8 v60, v40 offset:2304
	ds_load_u8 v61, v40 offset:2048
	ds_load_u8 v62, v40 offset:2816
	ds_load_u8 v63, v40 offset:2560
	ds_load_u8 v65, v40 offset:1280
	ds_load_u8 v66, v40 offset:1024
	ds_load_u8 v67, v40 offset:1792
	ds_load_u8 v68, v40 offset:1536
	ds_load_u8 v69, v40 offset:1920
	ds_load_u8 v70, v40 offset:1664
	ds_load_u8 v71, v40 offset:1408
	ds_load_u8 v72, v40 offset:1152
	ds_load_u8 v73, v40 offset:256
	ds_load_u8 v74, v40
	ds_load_u8 v75, v40 offset:768
	ds_load_u8 v76, v40 offset:512
	ds_load_u8 v77, v40 offset:896
	ds_load_u8 v78, v40 offset:640
	ds_load_u8 v79, v40 offset:384
	ds_load_u8 v80, v40 offset:128
	ds_load_u8 v81, v40 offset:3968
	ds_load_u8 v82, v40 offset:3712
	ds_load_u8 v83, v40 offset:3456
	ds_load_u8 v84, v40 offset:3200
	ds_load_u8 v85, v40 offset:2944
	ds_load_u8 v86, v40 offset:2688
	ds_load_u8 v87, v40 offset:2432
	ds_load_u8 v88, v40 offset:2176
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[48:51], v41 offset1:32
	ds_load_2addr_b64 v[52:55], v42 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v65, v66, v65, 0xc0c0004
	s_waitcnt lgkmcnt(22)
	v_perm_b32 v66, v68, v67, 0xc0c0004
	v_perm_b32 v62, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v67, v74, v73, 0xc0c0004
	v_perm_b32 v74, v61, v60, 0xc0c0004
	s_waitcnt lgkmcnt(14)
	v_perm_b32 v68, v76, v75, 0xc0c0004
	v_perm_b32 v60, v72, v71, 0xc0c0004
	v_perm_b32 v61, v70, v69, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v69, v78, v77, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v63, v80, v79, 0xc0c0004
	v_perm_b32 v73, v57, v56, 0xc0c0004
	v_perm_b32 v58, v59, v58, 0xc0c0004
	s_waitcnt lgkmcnt(8)
	v_perm_b32 v71, v82, v81, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v70, v84, v83, 0xc0c0004
	v_lshl_or_b32 v57, v66, 16, v65
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v75, v86, v85, 0xc0c0004
	v_lshl_or_b32 v56, v68, 16, v67
	s_waitcnt lgkmcnt(2)
	v_perm_b32 v72, v88, v87, 0xc0c0004
	v_lshl_or_b32 v61, v61, 16, v60
	v_lshl_or_b32 v60, v69, 16, v63
	v_lshl_or_b32 v59, v58, 16, v73
	v_lshl_or_b32 v58, v62, 16, v74
	v_lshl_or_b32 v63, v71, 16, v70
	v_lshl_or_b32 v62, v75, 16, v72
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[56:57], v[48:49], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[60:61], v[48:49], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[56:57], v[50:51], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[60:61], v[50:51], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_add_nc_u32_e32 v33, s26, v33
	v_add_nc_u32_e32 v43, 64, v43
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[58:59], v[52:53], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[62:63], v[52:53], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[54:55], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[62:63], v[54:55], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s2, s2, -1
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s2, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b16 v38, v64 offset:4096
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	s_waitcnt vmcnt(0)
	ds_store_b128 v39, v[44:47]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
.LBB0_4:                                ; %._crit_edge
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	v_and_b32_e32 v33, 0xf0, v0
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_6
; %bb.5:
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_and_b32_e32 v36, 0x70, v36
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_or_b32 v35, 0x88, v35, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 158 22                        ; generate_amdgcn.py:158:22
	v_add3_u32 v39, 0, v36, v34
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v36, v35, 8, 0
	v_add_nc_u32_e32 v35, 0, v35
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v40, v39 offset:1280
	ds_load_u8 v41, v39 offset:1024
	ds_load_u8 v42, v39 offset:1792
	ds_load_u8 v43, v39 offset:1536
	ds_load_u8 v44, v39 offset:256
	ds_load_u8 v45, v39
	ds_load_u8 v46, v39 offset:768
	ds_load_u8 v47, v39 offset:512
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v48, 0x1000, v36
	v_add_nc_u32_e32 v35, 0x1000, v35
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	ds_load_u8 v49, v39 offset:3328
	ds_load_u8 v50, v39 offset:3072
	ds_load_u8 v51, v39 offset:1920
	ds_load_u8 v52, v39 offset:1664
	ds_load_u8 v53, v39 offset:1408
	ds_load_u8 v54, v39 offset:1152
	ds_load_u8 v55, v39 offset:896
	ds_load_u8 v56, v39 offset:640
	ds_load_u8 v57, v39 offset:384
	ds_load_u8 v58, v39 offset:128
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[35:38], v35 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(17)
	v_perm_b32 v40, v41, v40, 0xc0c0004
	s_waitcnt lgkmcnt(15)
	v_perm_b32 v41, v43, v42, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v42, v45, v44, 0xc0c0004
	s_waitcnt lgkmcnt(11)
	v_perm_b32 v43, v47, v46, 0xc0c0004
	ds_load_u8 v45, v39 offset:2304
	ds_load_u8 v46, v39 offset:2048
	ds_load_u8 v47, v39 offset:2816
	ds_load_u8 v59, v39 offset:2560
	ds_load_u8 v60, v39 offset:3840
	ds_load_u8 v61, v39 offset:3584
	ds_load_u8 v62, v39 offset:3968
	ds_load_u8 v63, v39 offset:3712
	ds_load_u8 v64, v39 offset:3456
	ds_load_u8 v65, v39 offset:3200
	ds_load_u8 v66, v39 offset:2944
	ds_load_u8 v67, v39 offset:2688
	ds_load_u8 v68, v39 offset:2432
	ds_load_u8 v69, v39 offset:2176
	v_lshl_or_b32 v44, v41, 16, v40
	v_lshl_or_b32 v43, v43, 16, v42
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_b64 v[39:42], v48 offset1:32
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(24)
	v_perm_b32 v48, v50, v49, 0xc0c0004
	s_waitcnt lgkmcnt(20)
	v_perm_b32 v49, v54, v53, 0xc0c0004
	v_perm_b32 v50, v52, v51, 0xc0c0004
	s_waitcnt lgkmcnt(16)
	v_perm_b32 v51, v58, v57, 0xc0c0004
	v_perm_b32 v52, v56, v55, 0xc0c0004
	s_waitcnt lgkmcnt(13)
	v_perm_b32 v54, v46, v45, 0xc0c0004
	s_waitcnt lgkmcnt(9)
	v_perm_b32 v53, v61, v60, 0xc0c0004
	v_perm_b32 v47, v59, v47, 0xc0c0004
	v_lshl_or_b32 v46, v50, 16, v49
	v_lshl_or_b32 v45, v52, 16, v51
	s_waitcnt lgkmcnt(5)
	v_perm_b32 v49, v65, v64, 0xc0c0004
	v_perm_b32 v50, v63, v62, 0xc0c0004
	s_waitcnt lgkmcnt(3)
	v_perm_b32 v52, v67, v66, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[1:8], v[43:44], v[35:36], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_perm_b32 v51, v69, v68, 0xc0c0004
	v_lshl_or_b32 v48, v53, 16, v48
	v_lshl_or_b32 v47, v47, 16, v54
	v_wmma_i32_16x16x16_iu4 v[17:24], v[45:46], v[35:36], v[17:24] neg_lo:[1,1,0]
	v_lshl_or_b32 v36, v50, 16, v49
	v_lshl_or_b32 v35, v52, 16, v51
	v_wmma_i32_16x16x16_iu4 v[25:32], v[43:44], v[37:38], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[45:46], v[37:38], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[47:48], v[39:40], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[35:36], v[39:40], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[47:48], v[41:42], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[35:36], v[41:42], v[9:16] neg_lo:[1,1,0]
.LBB0_6:                                ; %._crit_edge._crit_edge
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_or_b32_e32 v34, s24, v34
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v35, 1, v34
	.loc	1 127 14 is_stmt 1              ; generate_amdgcn.py:127:14
	v_or_b32_e32 v34, s3, v0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v47, v19
	v_cvt_f32_i32_e32 v39, v2
	v_cvt_f32_i32_e32 v40, v3
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v36, 32, v35
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v41, v4
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_bfe_i32 v4, v0, 0, 1
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v46, v17
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v35, v35, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v61, v16
	v_cvt_f32_i32_e32 v38, v1
	v_cvt_f32_i32_e32 v43, v6
	v_cvt_f32_i32_e32 v42, v5
	v_cvt_f32_i32_e32 v44, v7
	v_cvt_f32_i32_e32 v45, v8
	v_cvt_f32_i32_e32 v57, v12
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v12, v33, 1, 0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v54, v9
	v_cvt_f32_i32_e32 v55, v10
	v_cvt_f32_i32_e32 v56, v11
	v_cvt_f32_i32_e32 v58, v13
	v_cvt_f32_i32_e32 v59, v14
	v_cvt_f32_i32_e32 v60, v15
	v_cvt_f32_i32_e32 v48, v21
	v_cvt_f32_i32_e32 v53, v31
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v50, v25
	v_cvt_f32_i32_e32 v20, v20
	v_cvt_f32_i32_e32 v49, v23
	v_cvt_f32_i32_e32 v26, v26
	v_cvt_f32_i32_e32 v22, v22
	v_cvt_f32_i32_e32 v51, v27
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v28, v28
	v_cvt_f32_i32_e32 v52, v29
	v_cvt_f32_i32_e32 v30, v30
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s8, s25, 5
	s_mul_i32 s9, s25, 6
	s_mul_i32 s10, s25, 7
	s_mul_i32 s11, s25, 9
	s_mul_i32 s12, s25, 10
	s_mul_i32 s13, s25, 11
	s_mul_i32 s14, s25, 12
	s_mul_i32 s15, s25, 13
	s_mul_i32 s16, s25, 14
	s_mul_i32 s17, s25, 15
	s_mul_i32 s18, s25, 17
	s_mul_i32 s19, s25, 18
	s_mul_i32 s20, s25, 19
	s_mul_i32 s21, s25, 20
	s_mul_i32 s22, s25, 21
	s_mul_i32 s23, s25, 22
	s_mul_i32 s26, s25, 23
	s_mul_i32 s27, s25, 24
	s_mul_i32 s28, s25, 25
	s_mul_i32 s29, s25, 26
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	s_and_b32 s1, s1, 0xffff
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_mul_i32 s30, s25, 27
	s_mul_i32 s31, s25, 28
	s_mul_i32 s33, s25, 29
	s_mul_i32 s34, s25, 30
	.loc	1 169 14 is_stmt 1              ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v19, 16, v35
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v37, 1, v34
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_and_b32_e32 v2, 14, v0
	v_and_b32_e32 v3, 1, v0
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v0, 2, v0
	v_and_b32_e32 v4, 0x840, v4
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	buffer_load_u16 v37, v37, s[4:7], 0 offen
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mad_u64_u32 v[16:17], null, s24, s25, v[34:35]
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_and_b32_e32 v0, 0x3f8, v0
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v1, 2, v33
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v5, 3, v33
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xor_b32_e32 v0, v4, v0
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	s_mul_i32 s5, s25, 3
	.loc	1 247 9 is_stmt 0               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v34, v16, s25, 2
	v_add_lshl_u32 v62, v16, s5, 2
	v_add_lshl_u32 v63, v16, s8, 2
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_lshl_or_b32 v17, v2, 11, v0
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v64, v16, s9, 2
	v_add_lshl_u32 v65, v16, s10, 2
	v_add_lshl_u32 v66, v16, s11, 2
	v_add_lshl_u32 v67, v16, s12, 2
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v102, 0, v17
	v_xad_u32 v103, v17, 8, 0
	v_xad_u32 v104, v17, 16, 0
	v_xad_u32 v105, v17, 24, 0
	v_xad_u32 v106, v17, 32, 0
	v_xad_u32 v107, v17, 40, 0
	v_xad_u32 v108, v17, 48, 0
	v_xad_u32 v35, v17, 56, 0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v17, 16, v36
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshlrev_b32_e32 v6, 5, v3
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v7, 2, v2
	v_lshlrev_b32_e32 v3, 6, v3
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v68, v16, s13, 2
	v_add_lshl_u32 v69, v16, s14, 2
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_add3_u32 v1, 0, v1, v6
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v70, v16, s15, 2
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_or3_b32 v8, v5, v3, v7
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v71, v16, s16, 2
	v_add_lshl_u32 v72, v16, s17, 2
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_lshl_add_u32 v1, v2, 1, v1
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v73, v16, s18, 2
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v88, 0x840, v8, 0
	v_xad_u32 v89, 0x1008, v8, 0
	v_xad_u32 v90, 0x1848, v8, 0
	v_xad_u32 v91, 0x2010, v8, 0
	v_xad_u32 v92, 0x2850, v8, 0
	v_xad_u32 v93, 0x3018, v8, 0
	v_xad_u32 v94, 0x3858, v8, 0
	v_xad_u32 v95, 0x4020, v8, 0
	v_xad_u32 v96, 0x4860, v8, 0
	v_xad_u32 v97, 0x5868, v8, 0
	v_xad_u32 v98, 0x6030, v8, 0
	v_xad_u32 v99, 0x6870, v8, 0
	v_xad_u32 v100, 0x7038, v8, 0
	v_xad_u32 v101, 0x7878, v8, 0
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v74, v16, s19, 2
	v_add_lshl_u32 v75, v16, s20, 2
	v_add_lshl_u32 v76, v16, s21, 2
	v_add_lshl_u32 v77, v16, s22, 2
	v_add_lshl_u32 v78, v16, s23, 2
	v_add_lshl_u32 v79, v16, s26, 2
	v_add_lshl_u32 v80, v16, s27, 2
	v_add_lshl_u32 v81, v16, s28, 2
	v_add_lshl_u32 v82, v16, s29, 2
	v_add_lshl_u32 v83, v16, s30, 2
	v_add_lshl_u32 v84, v16, s31, 2
	.loc	1 247 23 is_stmt 0              ; generate_amdgcn.py:247:23
	s_mul_i32 s4, s25, 31
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v85, v16, s33, 2
	v_add_lshl_u32 v86, v16, s34, 2
	.loc	1 170 14 is_stmt 1              ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v37
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v37, 0x5028, v8, 0
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	ds_store_b32 v1, v0
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[0:3], v12
	ds_load_b128 v[4:7], v12 offset:16
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v87, 0, v8
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	ds_load_b128 v[8:11], v12 offset:512
	ds_load_b128 v[12:15], v12 offset:528
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v118, v0, v17
	v_mul_f32_e32 v126, v8, v17
	v_mul_f32_e32 v21, v0, v19
	v_mul_f32_e32 v31, v5, v19
	v_mul_f32_e32 v110, v8, v19
	v_mul_f32_e32 v23, v1, v19
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v25, v2, v19 :: v_dual_mul_f32 v0, v21, v38
	v_dual_mul_f32 v109, v7, v19 :: v_dual_mul_f32 v128, v10, v17
	v_dual_mul_f32 v111, v9, v19 :: v_dual_mul_f32 v130, v12, v17
	v_dual_mul_f32 v113, v11, v19 :: v_dual_mul_f32 v132, v14, v17
	v_mul_f32_e32 v119, v1, v17
	v_mul_f32_e32 v127, v9, v17
	v_mul_f32_e32 v27, v3, v19
	v_mul_f32_e32 v112, v10, v19
	v_dual_mul_f32 v115, v13, v19 :: v_dual_mul_f32 v120, v2, v17
	v_mul_f32_e32 v29, v4, v19
	v_mul_f32_e32 v117, v15, v19
	v_mul_f32_e32 v121, v3, v17
	v_mul_f32_e32 v129, v11, v17
	v_dual_mul_f32 v122, v4, v17 :: v_dual_lshlrev_b32 v33, 2, v16
	v_mul_f32_e32 v36, v6, v19
	v_mul_f32_e32 v114, v12, v19
	v_dual_mul_f32 v116, v14, v19 :: v_dual_mul_f32 v123, v5, v17
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v2, v23, v39
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v124, v6, v17
	v_dual_mul_f32 v125, v7, v17 :: v_dual_mul_f32 v12, v36, v44
	v_mul_f32_e32 v133, v15, v17
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v10, v31, v43 :: v_dual_mul_f32 v131, v13, v17
	v_dual_mul_f32 v14, v109, v45 :: v_dual_mul_f32 v17, v110, v46
	v_mul_f32_e32 v19, v111, v18
	v_mul_f32_e32 v1, v118, v50
	v_dual_mul_f32 v18, v126, v54 :: v_dual_mul_f32 v23, v113, v20
	v_mul_f32_e32 v3, v119, v26
	v_mul_f32_e32 v20, v127, v55
	v_mul_f32_e32 v4, v25, v40
	v_dual_mul_f32 v6, v27, v41 :: v_dual_mul_f32 v21, v112, v47
	v_mul_f32_e32 v26, v130, v58
	v_mul_f32_e32 v27, v115, v22
	v_mul_f32_e32 v5, v120, v51
	v_mul_f32_e32 v22, v128, v56
	v_mul_f32_e32 v8, v29, v42
	v_mul_f32_e32 v31, v117, v24
	v_mul_f32_e32 v7, v121, v28
	v_dual_mul_f32 v24, v129, v57 :: v_dual_mul_f32 v25, v114, v48
	v_mul_f32_e32 v29, v116, v49
	v_mul_f32_e32 v9, v122, v52
	v_mul_f32_e32 v11, v123, v30
	v_mul_f32_e32 v13, v124, v53
	v_dual_mul_f32 v15, v125, v32 :: v_dual_mul_f32 v28, v131, v59
	v_mul_f32_e32 v30, v132, v60
	v_mul_f32_e32 v32, v133, v61
	ds_store_2addr_stride64_b64 v102, v[0:1], v[17:18] offset1:2
	ds_store_2addr_stride64_b64 v103, v[2:3], v[19:20] offset1:2
	ds_store_2addr_stride64_b64 v104, v[4:5], v[21:22] offset1:2
	ds_store_2addr_stride64_b64 v105, v[6:7], v[23:24] offset1:2
	ds_store_2addr_stride64_b64 v106, v[8:9], v[25:26] offset1:2
	ds_store_2addr_stride64_b64 v107, v[10:11], v[27:28] offset1:2
	ds_store_2addr_stride64_b64 v108, v[12:13], v[29:30] offset1:2
	ds_store_2addr_stride64_b64 v35, v[14:15], v[31:32] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[0:1], v87
	ds_load_b64 v[2:3], v88
	ds_load_b64 v[4:5], v89
	ds_load_b64 v[6:7], v90
	ds_load_b64 v[8:9], v91
	ds_load_b64 v[10:11], v92
	ds_load_b64 v[12:13], v93
	ds_load_b64 v[14:15], v94
	ds_load_b64 v[17:18], v95
	ds_load_b64 v[19:20], v96
	ds_load_b64 v[21:22], v37
	ds_load_b64 v[23:24], v97
	ds_load_b64 v[25:26], v98
	ds_load_b64 v[27:28], v99
	ds_load_b64 v[29:30], v100
	ds_load_b64 v[31:32], v101
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_lshl_add_u32 v35, s25, 3, v33
	v_lshl_add_u32 v36, s25, 4, v33
	v_lshl_add_u32 v37, s25, 5, v33
	v_lshl_add_u32 v38, s25, 6, v33
	s_waitcnt lgkmcnt(15)
	buffer_atomic_add_f32 v0, v33, s[0:3], 0 offen
	s_waitcnt lgkmcnt(14)
	buffer_atomic_add_f32 v2, v34, s[0:3], 0 offen
	s_waitcnt lgkmcnt(13)
	buffer_atomic_add_f32 v4, v35, s[0:3], 0 offen
	s_waitcnt lgkmcnt(12)
	buffer_atomic_add_f32 v6, v62, s[0:3], 0 offen
	s_waitcnt lgkmcnt(11)
	buffer_atomic_add_f32 v8, v36, s[0:3], 0 offen
	s_waitcnt lgkmcnt(10)
	buffer_atomic_add_f32 v10, v63, s[0:3], 0 offen
	s_waitcnt lgkmcnt(9)
	buffer_atomic_add_f32 v12, v64, s[0:3], 0 offen
	s_waitcnt lgkmcnt(8)
	buffer_atomic_add_f32 v14, v65, s[0:3], 0 offen
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v17, v37, s[0:3], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v19, v66, s[0:3], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v21, v67, s[0:3], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v23, v68, s[0:3], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v25, v69, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v27, v70, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v29, v71, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0xb
	buffer_atomic_add_f32 v31, v72, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v38, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v73, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v74, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v75, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v76, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v77, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v78, s[0:3], 0 offen
	buffer_atomic_add_f32 v15, v79, s[0:3], 0 offen
	buffer_atomic_add_f32 v18, v80, s[0:3], 0 offen
	buffer_atomic_add_f32 v20, v81, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v82, s[0:3], 0 offen
	v_add_lshl_u32 v0, v16, s4, 2
	s_clause 0x4
	buffer_atomic_add_f32 v24, v83, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v84, s[0:3], 0 offen
	buffer_atomic_add_f32 v28, v85, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v86, s[0:3], 0 offen
	buffer_atomic_add_f32 v32, v0, s[0:3], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
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
		.amdhsa_inst_pref_size 40
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
	.size	amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_vgpr, 134
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.numbered_sgpr, 35
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 5012
; TotalNumSgprs: 37
; NumVgprs: 134
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 37
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nn_pc_none_bm32_bn256_bk32_gm4_w8_s2_weu2_sk4_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     134
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
