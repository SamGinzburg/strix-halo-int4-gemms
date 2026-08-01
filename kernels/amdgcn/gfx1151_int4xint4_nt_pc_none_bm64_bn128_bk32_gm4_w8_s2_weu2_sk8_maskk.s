	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[12:13], s[0:1], 0x30
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v36, 2, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v38, 2, v0
	v_and_b32_e32 v37, 1, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v53, 1, v0
	v_bfe_i32 v6, v0, 4, 1
	v_and_b32_e32 v41, 0x60, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v33, 12, v38
	v_lshlrev_b32_e32 v34, 3, v37
	s_load_b32 s19, s[0:1], 0x38
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v6, 0x88, v6
	v_lshlrev_b32_e32 v44, 3, v41
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s13, 0x7f
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s12, 63
.Ltmp3:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s5, s4, 31
.Ltmp4:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s10, s7, 31
.Ltmp5:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_lshr_b32 s5, s5, 25
.Ltmp6:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_lshr_b32 s10, s10, 26
.Ltmp7:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_add_i32 s4, s4, s5
.Ltmp8:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s7, s7, s10
.Ltmp9:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:115:17 ]
	s_ashr_i32 s4, s4, 7
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 6
.Ltmp11:
	.loc	1 116 24 is_stmt 1              ; generate_amdgcn.py:116:24
	s_lshl_b32 s8, s4, 2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s8
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s9, 0, s4
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s9, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s9, s5, s9
	s_add_i32 s5, s5, s9
	s_xor_b32 s9, s2, s8
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s9, s9, 31
	s_mul_i32 s10, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s10
	s_add_i32 s10, s5, 1
	s_sub_i32 s11, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s10, s5
	s_cselect_b32 s6, s11, s6
	s_add_i32 s10, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s10, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s9
	s_sub_i32 s9, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 118 19                        ; generate_amdgcn.py:118:19
	s_lshl_b32 s10, s9, 2
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s9, s9, s8
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s10
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s9
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s11, s4, 4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s16, s2
	s_abs_i32 s12, s11
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s4, s12
	s_sub_i32 s15, 0, s12
	v_rcp_iflag_f32_e32 v1, s4
	s_load_b128 s[4:7], s[0:1], 0x0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	v_readfirstlane_b32 s14, v1
	s_mul_f32 s14, s14, 0x4f7ffffe
	s_cvt_u32_f32 s14, s14
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s15, s15, s14
	s_mul_hi_u32 s8, s14, s15
	s_delay_alu instid0(SALU_CYCLE_1)
	s_add_i32 s14, s14, s8
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[8:9], s[6:7]
	s_mul_hi_u32 s6, s16, s14
	s_xor_b32 s7, s2, s11
	s_mul_i32 s14, s6, s12
	s_ashr_i32 s15, s7, 31
	s_sub_i32 s14, s16, s14
	s_add_i32 s16, s6, 1
	s_sub_i32 s17, s14, s12
	s_cmp_ge_u32 s14, s12
	s_mov_b32 s7, 0x31027000
	s_cselect_b32 s16, s16, s6
	s_cselect_b32 s6, s17, s14
	s_add_i32 s14, s16, 1
	s_cmp_ge_u32 s6, s12
	s_mov_b32 s6, 0x7ffffffe
	s_cselect_b32 s12, s14, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s14, s19, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s18, s12, s15
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s16, s3, 4
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s3, s19, s14
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s12, s18, s15
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s17, s3, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s11, s12, s11
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mul_lo_u32 v5, s17, v36
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s11
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s3, s12, 7
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s10
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v3, s16, v33
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s12, s2, 6
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[1:2], null, s17, v53, v[34:35]
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s10, s12, s17
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v4, s16, v34
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v48, v5, v33, s10
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lt_i32 s19, 2
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s17, v3
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s14, -1, 0
	s_cmp_gt_i32 s19, 1
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e64 s2, s17, v4
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_mul_i32 s10, s3, s17
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v2, s16, v48
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s11, -1, 0
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add3_u32 v49, s16, s10, v1
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s11, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v2, vcc_lo
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s11, s2
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s10, s6
	v_cndmask_b32_e32 v2, 0x80000000, v49, vcc_lo
	s_mov_b32 s11, s7
	s_and_b32 s9, s9, 0xffff
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v3, v1, s[4:7], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	buffer_load_b64 v[1:2], v2, s[8:11], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_bfe_i32 v4, v0, 5, 1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshlrev_b32_e32 v5, 3, v0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v7, 0x37c, v38
	s_mov_b32 s2, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s19, 0x101
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v4, 0x88, v4
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v5, 0x778, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v4, v4, v7
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xor_b32_e32 v5, v6, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v45, 0, v4
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v46, 0, v5
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(1)
	ds_store_b32 v45, v3 offset:2048
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v46, v[1:2]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshlrev_b32_e32 v35, 3, v41
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	s_mov_b32 s2, -1
                                        ; implicit-def: $vgpr35
.LBB0_3:                                ; %Flow56
	v_bfe_i32 v2, v0, 3, 1
	v_and_b32_e32 v39, 0x80, v0
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v40, 4, v0
	v_dual_mov_b32 v5, 0 :: v_dual_mov_b32 v6, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v42, 0x88, v2
	v_dual_mov_b32 v2, 0 :: v_dual_lshlrev_b32 v43, 1, v39
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v8, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_mov_b32_e32 v16, 0
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_8
; %bb.4:                                ; %.lr.ph
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v47, s17, v33
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s2, s16, 0x80
	s_mov_b32 s20, 0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s10, s6
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s21, s20
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v47
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s22, s20
	s_mov_b32 s23, s20
	s_mov_b32 s24, s20
	s_mov_b32 s25, s20
	s_mov_b32 s26, s20
	s_mov_b32 s27, s20
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v1, s2, v48
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v48, s17, v34
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v9, s20 :: v_dual_add_nc_u32 v2, 0x80, v49
	v_mov_b32_e32 v10, s21
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v48
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s11, s7
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v12, s23
	v_dual_mov_b32 v14, s25 :: v_dual_mov_b32 v15, s26
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v35, v1, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshlrev_b32_e32 v1, 4, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	buffer_load_b64 v[70:71], v2, s[8:11], 0 offen
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s2, s17, 0x7f
.Ltmp13:
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v11, s22 :: v_dual_mov_b32 v16, s27
	v_and_b32_e32 v1, 0x70, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s2, s2, 7
.Ltmp15:
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v13, s24
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_max_u32 s2, s2, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_or3_b32 v2, v42, v43, v1
	v_or3_b32 v1, v1, v44, v42
	s_cmp_eq_u32 s2, 2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v49, 0, v2
	v_xor_b32_e32 v2, 8, v2
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v50, 0, v1
	v_xor_b32_e32 v1, 8, v1
	ds_load_2addr_stride64_b64 v[54:57], v49 offset0:4 offset1:5
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[58:61], v50 offset1:2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v51, 0, v2
	v_add_nc_u32_e32 v52, 0, v1
	ds_load_2addr_stride64_b64 v[62:65], v51 offset0:4 offset1:5
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[66:69], v52 offset1:2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v45, v35 offset:2048
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v46, v[70:71]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[58:59], v[54:55], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[60:61], v[54:55], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[58:59], v[56:57], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[60:61], v[56:57], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[66:67], v[62:63], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[68:69], v[62:63], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[66:67], v[64:65], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[68:69], v[64:65], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.peel.next
	v_lshl_or_b32 v35, s18, 7, v53
	s_lshl_b32 s15, s15, 7
	v_add_nc_u32_e32 v36, s12, v36
	s_addk_i32 s16, 0x100
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_subrev_nc_u32_e32 v35, s15, v35
	s_add_i32 s15, s2, -2
	v_mad_u64_u32 v[34:35], null, s17, v35, v[34:35]
	s_delay_alu instid0(VALU_DEP_1)
	v_mad_u64_u32 v[35:36], null, s17, v36, v[33:34]
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v33, s16, v35
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e64 s2, s16, v47
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v36, s16, v34
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s16, v48
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s15, s15, -1
	s_addk_i32 s16, 0x80
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v33, 0x80000000, v33, s2
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_lg_u32 s15, 0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v33, v33, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	buffer_load_b64 v[69:70], v36, s[8:11], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[53:56], v49 offset0:4 offset1:5
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[57:60], v50 offset1:2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[61:64], v51 offset0:4 offset1:5
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[65:68], v52 offset1:2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(1)
	ds_store_b32 v45, v33 offset:2048
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(0)
	ds_store_b64 v46, v[69:70]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[57:58], v[53:54], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[59:60], v[53:54], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[57:58], v[55:56], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[59:60], v[55:56], v[9:16] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[65:66], v[61:62], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[67:68], v[61:62], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[65:66], v[63:64], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[67:68], v[63:64], v[9:16] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %Flow54
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_mov_b32_e32 v35, v44
.LBB0_8:                                ; %._crit_edge
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[0:1], s[0:1], 0x20
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_and_not1_b32 vcc_lo, exec_lo, s14
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_cbranch_vccnz .LBB0_11
; %bb.9:                                ; %._crit_edge._crit_edge
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v34, 4, v0
	v_and_b32_e32 v33, 16, v0
	s_cbranch_execz .LBB0_12
; %bb.10:
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_2)
	v_mov_b32_e32 v40, v34
	s_branch .LBB0_13
.LBB0_11:
                                        ; implicit-def: $vgpr34
	v_and_b32_e32 v33, 16, v0
.LBB0_12:
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_and_b32_e32 v34, 0x70, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_or3_b32 v36, v35, v34, v42
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_or3_b32 v34, v42, v43, v34
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v42, 0, v36
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v46, 0, v34
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xad_u32 v36, v36, 8, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xad_u32 v34, v34, 8, 0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[42:45], v42 offset1:2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[46:49], v46 offset0:4 offset1:5
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_2addr_stride64_b64 v[50:53], v36 offset1:2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[54:57], v34 offset0:4 offset1:5
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[42:43], v[46:47], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[44:45], v[46:47], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[42:43], v[48:49], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[44:45], v[48:49], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[50:51], v[54:55], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[52:53], v[54:55], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[50:51], v[56:57], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[52:53], v[56:57], v[9:16] neg_lo:[1,1,0]
.LBB0_13:
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v34, 3, v39
	v_and_b32_e32 v36, 15, v0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_and_b32 s5, s9, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_mov_b32 s4, s8
	.loc	1 169 22 is_stmt 0              ; generate_amdgcn.py:169:22
	v_or3_b32 v34, v34, v36, s12
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_cmp_eq_u32_e32 vcc_lo, 0, v37
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v58, v4
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v56, 0x7f, v0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v67, v9
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v34, 1, v34
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_cndmask_b32_e64 v4, 0x840, 0, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v39
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v68, v10
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_and_b32_e32 v0, 14, v0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v36, 64, v34
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_lshlrev_b32_e32 v9, 6, v37
	v_cndmask_b32_e64 v10, 0x840, 0, vcc_lo
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v34, v34, s[4:7], 0 offen
	buffer_load_u16 v36, v36, s[4:7], 0 offen
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v33, 4, v33
	v_lshrrev_b32_e32 v41, 1, v41
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v60, v8
	v_cvt_f32_i32_e32 v69, v11
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_and_b32_e32 v8, 0x700, v40
	v_lshlrev_b32_e32 v11, 11, v0
	v_lshlrev_b32_e32 v0, 2, v0
	v_xor_b32_e32 v9, v10, v9
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or3_b32 v33, v33, v41, s3
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	s_and_b32 s5, s11, 0xffff
	s_mov_b32 s4, s10
	.loc	1 168 15 is_stmt 1              ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v59, v6
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_or3_b32 v0, v8, v0, v9
	v_and_or_b32 v6, 0x78, v38, v35
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v57, 7, v39
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v66, v30
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v77, 0, v0
	v_xad_u32 v78, 0x1008, v0, 0
	v_xad_u32 v79, 0x2010, v0, 0
	v_xad_u32 v80, 0x3018, v0, 0
	v_xad_u32 v81, 0x4020, v0, 0
	v_xad_u32 v82, 0x5028, v0, 0
	v_xad_u32 v83, 0x6030, v0, 0
	v_xad_u32 v84, 0x7038, v0, 0
	v_xor_b32_e32 v4, v6, v4
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	v_mul_lo_u32 v6, s13, v57
	s_mul_i32 s2, s12, s13
	s_lshl_b32 s8, s13, 2
	s_mul_i32 s9, s13, 6
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_or3_b32 v4, v4, v11, v39
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_lshl_b32 s10, s13, 3
	s_mul_i32 s11, s13, 10
	s_mul_i32 s12, s13, 12
	s_mul_i32 s14, s13, 14
	s_lshl_b32 s15, s13, 4
	s_mul_i32 s16, s13, 18
	s_mul_i32 s17, s13, 20
	s_mul_i32 s18, s13, 22
	s_mul_i32 s19, s13, 24
	s_mul_i32 s20, s13, 26
	s_mul_i32 s21, s13, 28
	s_mul_i32 s22, s13, 30
	s_lshl_b32 s23, s13, 5
	s_mul_i32 s24, s13, 34
	s_mul_i32 s25, s13, 36
	s_mul_i32 s26, s13, 38
	s_mul_i32 s27, s13, 40
	s_mul_i32 s28, s13, 42
	s_mul_i32 s29, s13, 44
	s_mul_i32 s30, s13, 46
	s_mul_i32 s31, s13, 48
	s_mul_i32 s33, s13, 50
	s_mul_i32 s34, s13, 52
	s_mul_i32 s35, s13, 54
	s_mul_i32 s36, s13, 56
	s_mul_i32 s37, s13, 58
	s_mul_i32 s38, s13, 60
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v62, v22
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v64, v26
	v_cvt_f32_i32_e32 v65, v28
	v_cvt_f32_i32_e32 v71, v13
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v38, v4, 8, 0
	v_xad_u32 v39, v4, 16, 0
	v_xad_u32 v40, v4, 24, 0
	v_xad_u32 v57, v4, 40, 0
	v_xad_u32 v75, v4, 48, 0
	v_xad_u32 v76, v4, 56, 0
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v61, v20
	v_cvt_f32_i32_e32 v63, v24
	v_cvt_f32_i32_e32 v73, v15
	v_cvt_f32_i32_e32 v70, v12
	v_cvt_f32_i32_e32 v74, v16
	v_cvt_f32_i32_e32 v1, v1
	v_cvt_f32_i32_e32 v5, v5
	v_cvt_f32_i32_e32 v29, v29
	v_cvt_f32_i32_e32 v72, v14
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v2, v2
	v_cvt_f32_i32_e32 v3, v3
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v31, v31
	v_cvt_f32_i32_e32 v32, v32
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	s_and_b32 s1, s1, 0xffff
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v0, 16, v34
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_lshlrev_b32_e32 v33, 1, v33
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 170 14 is_stmt 0              ; generate_amdgcn.py:170:14
	v_or_b32_e32 v41, 4, v33
	v_or_b32_e32 v42, 8, v33
	v_or_b32_e32 v43, 12, v33
	v_or_b32_e32 v44, 16, v33
	v_or_b32_e32 v45, 20, v33
	v_or_b32_e32 v46, 24, v33
	v_or_b32_e32 v47, 28, v33
	s_clause 0x7
	buffer_load_u16 v48, v33, s[4:7], 0 offen
	buffer_load_u16 v41, v41, s[4:7], 0 offen
	buffer_load_u16 v42, v42, s[4:7], 0 offen
	buffer_load_u16 v43, v43, s[4:7], 0 offen
	buffer_load_u16 v44, v44, s[4:7], 0 offen
	buffer_load_u16 v45, v45, s[4:7], 0 offen
	buffer_load_u16 v46, v46, s[4:7], 0 offen
	buffer_load_u16 v47, v47, s[4:7], 0 offen
	s_waitcnt vmcnt(6)
	v_lshlrev_b32_e32 v8, 16, v41
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v34, v0, v8
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_or_b32_e32 v49, 0x80, v33
	v_or_b32_e32 v50, 0x84, v33
	v_or_b32_e32 v51, 0x88, v33
	v_or_b32_e32 v52, 0x8c, v33
	v_or_b32_e32 v53, 0x90, v33
	v_or_b32_e32 v54, 0x94, v33
	v_or_b32_e32 v55, 0x98, v33
	v_or_b32_e32 v33, 0x9c, v33
	s_clause 0x7
	buffer_load_u16 v49, v49, s[4:7], 0 offen
	buffer_load_u16 v50, v50, s[4:7], 0 offen
	buffer_load_u16 v51, v51, s[4:7], 0 offen
	buffer_load_u16 v52, v52, s[4:7], 0 offen
	buffer_load_u16 v53, v53, s[4:7], 0 offen
	buffer_load_u16 v54, v54, s[4:7], 0 offen
	buffer_load_u16 v55, v55, s[4:7], 0 offen
	buffer_load_u16 v33, v33, s[4:7], 0 offen
	.loc	1 247 23                        ; generate_amdgcn.py:247:23
	s_lshl_b32 s5, s13, 1
	s_mul_i32 s4, s13, 62
	s_add_i32 s13, s2, s3
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	s_mov_b32 s2, s6
	s_mov_b32 s3, s7
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v22, 16, v52
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v28, 16, v55
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v30, 16, v33
	v_lshlrev_b32_e32 v10, 16, v43
	v_lshlrev_b32_e32 v13, 16, v46
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_add_nc_u32_e32 v37, 0, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 171 16 is_stmt 0              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v41, v0, v10
	.loc	1 247 23 is_stmt 1              ; generate_amdgcn.py:247:23
	v_add3_u32 v35, s13, v56, v6
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_xad_u32 v56, v4, 32, 0
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_lshlrev_b32_e32 v4, 16, v36
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v24, 16, v53
	.loc	1 247 9                         ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v86, v35, s5, 2
	v_add_lshl_u32 v87, v35, s8, 2
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v55, v4, v8
	v_mul_f32_e32 v53, v0, v30
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v15, 16, v49
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v49, v0, v22 :: v_dual_lshlrev_b32 v20, 16, v51
	v_dual_mul_f32 v111, v4, v24 :: v_dual_lshlrev_b32 v26, 16, v54
	v_mul_f32_e32 v113, v4, v28
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v6, 16, v48
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v104, v4, v10
	v_dual_mul_f32 v107, v4, v15 :: v_dual_lshlrev_b32 v12, 16, v45
	v_mul_f32_e32 v51, v0, v26
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v54, v4, v6 :: v_dual_lshlrev_b32 v11, 16, v44
	v_mul_f32_e32 v109, v4, v20
	v_dual_mul_f32 v52, v0, v28 :: v_dual_lshlrev_b32 v9, 16, v42
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v16, 16, v50
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v105, v4, v12 :: v_dual_lshlrev_b32 v14, 16, v47
	v_mul_f32_e32 v33, v0, v6
	v_mul_f32_e32 v42, v0, v11
	v_mul_f32_e32 v50, v0, v24
	v_mul_f32_e32 v36, v0, v9
	v_mul_f32_e32 v9, v4, v9
	v_mul_f32_e32 v11, v4, v11
	v_mul_f32_e32 v46, v0, v15
	v_dual_mul_f32 v48, v0, v20 :: v_dual_lshlrev_b32 v85, 2, v35
	v_mul_f32_e32 v44, v0, v13
	v_mul_f32_e32 v13, v4, v13
	v_mul_f32_e32 v47, v0, v16
	v_mul_f32_e32 v108, v4, v16
	v_mul_f32_e32 v43, v0, v12
	v_mul_f32_e32 v45, v0, v14
	v_mul_f32_e32 v106, v4, v14
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v8, v42, v5 :: v_dual_mul_f32 v5, v9, v27
	v_mul_f32_e32 v9, v11, v29
	v_mul_f32_e32 v11, v105, v66
	v_mul_f32_e32 v0, v33, v1
	v_dual_mul_f32 v1, v54, v25 :: v_dual_mul_f32 v110, v4, v22
	v_dual_mul_f32 v13, v13, v31 :: v_dual_mul_f32 v112, v4, v26
	v_dual_mul_f32 v15, v106, v32 :: v_dual_mul_f32 v114, v4, v30
	v_dual_mul_f32 v16, v46, v17 :: v_dual_mul_f32 v17, v107, v67
	v_mul_f32_e32 v2, v34, v2
	v_mul_f32_e32 v4, v36, v3
	v_mul_f32_e32 v18, v47, v18
	v_dual_mul_f32 v20, v48, v19 :: v_dual_mul_f32 v3, v55, v64
	v_dual_mul_f32 v19, v108, v68 :: v_dual_mul_f32 v24, v50, v21
	v_mul_f32_e32 v21, v109, v69
	v_dual_mul_f32 v6, v41, v58 :: v_dual_mul_f32 v25, v111, v71
	v_mul_f32_e32 v10, v43, v59
	v_dual_mul_f32 v12, v44, v7 :: v_dual_mul_f32 v29, v113, v73
	v_mul_f32_e32 v22, v49, v61
	v_mul_f32_e32 v28, v52, v23
	v_mul_f32_e32 v7, v104, v65
	v_dual_mul_f32 v23, v110, v70 :: v_dual_mul_f32 v14, v45, v60
	v_mul_f32_e32 v31, v114, v74
	v_mul_f32_e32 v26, v51, v62
	v_dual_mul_f32 v30, v53, v63 :: v_dual_mul_f32 v27, v112, v72
	ds_store_2addr_stride64_b64 v37, v[0:1], v[16:17] offset1:2
	ds_store_2addr_stride64_b64 v38, v[2:3], v[18:19] offset1:2
	ds_store_2addr_stride64_b64 v39, v[4:5], v[20:21] offset1:2
	ds_store_2addr_stride64_b64 v40, v[6:7], v[22:23] offset1:2
	ds_store_2addr_stride64_b64 v56, v[8:9], v[24:25] offset1:2
	ds_store_2addr_stride64_b64 v57, v[10:11], v[26:27] offset1:2
	ds_store_2addr_stride64_b64 v75, v[12:13], v[28:29] offset1:2
	ds_store_2addr_stride64_b64 v76, v[14:15], v[30:31] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_b64 v[0:3], v77 offset1:16
	ds_load_2addr_b64 v[4:7], v78 offset1:16
	ds_load_2addr_b64 v[8:11], v79 offset1:16
	ds_load_2addr_b64 v[12:15], v80 offset1:16
	ds_load_2addr_b64 v[16:19], v81 offset1:16
	ds_load_2addr_b64 v[20:23], v82 offset1:16
	ds_load_2addr_b64 v[24:27], v83 offset1:16
	ds_load_2addr_b64 v[28:31], v84 offset1:16
	.loc	1 247 9 is_stmt 1               ; generate_amdgcn.py:247:9
	v_add_lshl_u32 v88, v35, s9, 2
	v_add_lshl_u32 v89, v35, s10, 2
	v_add_lshl_u32 v90, v35, s11, 2
	v_add_lshl_u32 v91, v35, s12, 2
	v_add_lshl_u32 v92, v35, s14, 2
	v_add_lshl_u32 v93, v35, s15, 2
	v_add_lshl_u32 v94, v35, s16, 2
	v_add_lshl_u32 v95, v35, s17, 2
	v_add_lshl_u32 v96, v35, s18, 2
	v_add_lshl_u32 v97, v35, s19, 2
	v_add_lshl_u32 v98, v35, s20, 2
	v_add_lshl_u32 v99, v35, s21, 2
	v_add_lshl_u32 v100, v35, s22, 2
	v_add_lshl_u32 v101, v35, s23, 2
	v_add_lshl_u32 v102, v35, s24, 2
	v_add_lshl_u32 v103, v35, s25, 2
	v_add_lshl_u32 v32, v35, s26, 2
	v_add_lshl_u32 v33, v35, s27, 2
	v_add_lshl_u32 v34, v35, s28, 2
	v_add_lshl_u32 v36, v35, s29, 2
	v_add_lshl_u32 v37, v35, s30, 2
	v_add_lshl_u32 v38, v35, s31, 2
	v_add_lshl_u32 v39, v35, s33, 2
	v_add_lshl_u32 v40, v35, s34, 2
	s_waitcnt lgkmcnt(7)
	buffer_atomic_add_f32 v0, v85, s[0:3], 0 offen
	s_waitcnt lgkmcnt(6)
	buffer_atomic_add_f32 v4, v86, s[0:3], 0 offen
	s_waitcnt lgkmcnt(5)
	buffer_atomic_add_f32 v8, v87, s[0:3], 0 offen
	s_waitcnt lgkmcnt(4)
	buffer_atomic_add_f32 v12, v88, s[0:3], 0 offen
	s_waitcnt lgkmcnt(3)
	buffer_atomic_add_f32 v16, v89, s[0:3], 0 offen
	s_waitcnt lgkmcnt(2)
	buffer_atomic_add_f32 v20, v90, s[0:3], 0 offen
	s_waitcnt lgkmcnt(1)
	buffer_atomic_add_f32 v24, v91, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_clause 0x13
	buffer_atomic_add_f32 v28, v92, s[0:3], 0 offen
	buffer_atomic_add_f32 v2, v93, s[0:3], 0 offen
	buffer_atomic_add_f32 v6, v94, s[0:3], 0 offen
	buffer_atomic_add_f32 v10, v95, s[0:3], 0 offen
	buffer_atomic_add_f32 v14, v96, s[0:3], 0 offen
	buffer_atomic_add_f32 v18, v97, s[0:3], 0 offen
	buffer_atomic_add_f32 v22, v98, s[0:3], 0 offen
	buffer_atomic_add_f32 v26, v99, s[0:3], 0 offen
	buffer_atomic_add_f32 v30, v100, s[0:3], 0 offen
	buffer_atomic_add_f32 v1, v101, s[0:3], 0 offen
	buffer_atomic_add_f32 v5, v102, s[0:3], 0 offen
	buffer_atomic_add_f32 v9, v103, s[0:3], 0 offen
	buffer_atomic_add_f32 v13, v32, s[0:3], 0 offen
	buffer_atomic_add_f32 v17, v33, s[0:3], 0 offen
	buffer_atomic_add_f32 v21, v34, s[0:3], 0 offen
	buffer_atomic_add_f32 v25, v36, s[0:3], 0 offen
	buffer_atomic_add_f32 v29, v37, s[0:3], 0 offen
	buffer_atomic_add_f32 v3, v38, s[0:3], 0 offen
	buffer_atomic_add_f32 v7, v39, s[0:3], 0 offen
	buffer_atomic_add_f32 v11, v40, s[0:3], 0 offen
	v_add_lshl_u32 v41, v35, s35, 2
	v_add_lshl_u32 v42, v35, s36, 2
	v_add_lshl_u32 v43, v35, s37, 2
	v_add_lshl_u32 v44, v35, s38, 2
	v_add_lshl_u32 v0, v35, s4, 2
	s_clause 0x4
	buffer_atomic_add_f32 v15, v41, s[0:3], 0 offen
	buffer_atomic_add_f32 v19, v42, s[0:3], 0 offen
	buffer_atomic_add_f32 v23, v43, s[0:3], 0 offen
	buffer_atomic_add_f32 v27, v44, s[0:3], 0 offen
	buffer_atomic_add_f32 v31, v0, s[0:3], 0 offen
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp16:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
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
		.amdhsa_next_free_sgpr 39
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
		.amdhsa_inst_pref_size 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_vgpr, 115
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 3712
; TotalNumSgprs: 41
; NumVgprs: 115
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 30
; NumSGPRsForWavesPerEU: 41
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_none_bm64_bn128_bk32_gm4_w8_s2_weu2_sk8_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     115
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
