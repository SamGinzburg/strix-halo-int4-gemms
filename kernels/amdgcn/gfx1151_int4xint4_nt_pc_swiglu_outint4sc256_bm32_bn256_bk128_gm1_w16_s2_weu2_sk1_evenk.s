	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_load_b64 s[24:25], s[0:1], 0x30
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s6, s2
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v88, 4, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v20, 2, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v89, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_and_b32_e32 v91, 15, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshlrev_b32_e32 v22, 4, v0
	v_and_b32_e32 v23, 56, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v2, 0x80, v20
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v92, 2, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v3, 2, v91
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v90, 0x1e0, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xor_b32_e32 v22, v22, v23
	s_load_b32 s14, s[0:1], 0x38
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v23, 8, v22
	v_add_nc_u32_e32 v53, 0, v22
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
	s_ashr_i32 s10, s4, 8
.Ltmp10:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:114:17 ]
	s_ashr_i32 s7, s7, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s4, s10
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v54, 0, v23
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
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
	s_xor_b32 s8, s2, s10
	s_mul_hi_u32 s5, s6, s5
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s5, s4
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s9
	s_add_i32 s9, s5, 1
	s_sub_i32 s11, s6, s4
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s5, s9, s5
	s_cselect_b32 s6, s11, s6
	s_add_i32 s9, s5, 1
	s_cmp_ge_u32 s6, s4
	s_cselect_b32 s4, s9, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s4, s4, s8
	s_sub_i32 s12, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s4, s7, s12
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s10, s12, s10
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s13, s4, 1
	s_load_b128 s[4:7], s[0:1], 0x0
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s11, s13
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s2, s2, s10
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cvt_f32_u32 s8, s11
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	v_readfirstlane_b32 s8, v1
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v1, 4, v89
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_mul_f32 s15, s8, 0x4f7ffffe
	s_waitcnt lgkmcnt(0)
	s_mov_b64 s[8:9], s[6:7]
	s_mov_b32 s7, 0x31027000
	s_cvt_u32_f32 s6, s15
	s_sub_i32 s15, 0, s11
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s15, s15, s6
	s_mul_hi_u32 s10, s6, s15
	s_abs_i32 s15, s2
	s_add_i32 s10, s6, s10
	s_mov_b32 s6, 0x7ffffffe
	s_mul_hi_u32 s16, s15, s10
	s_xor_b32 s10, s2, s13
	s_mul_i32 s17, s16, s11
	s_ashr_i32 s18, s10, 31
	s_sub_i32 s15, s15, s17
	s_add_i32 s17, s16, 1
	s_sub_i32 s19, s15, s11
	s_cmp_ge_u32 s15, s11
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s10, s6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s16, s17, s16
	s_cselect_b32 s15, s19, s15
	s_add_i32 s17, s16, 1
	s_cmp_ge_u32 s15, s11
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s11, s7
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_cselect_b32 s15, s17, s16
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_lshr_b32 s16, s14, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s15, s15, s18
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s17, s3, 6
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s24, s15, s18
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s15, s14, s16
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s13, s24, s13
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s22, s15, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s2, s2, s13
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mul_lo_u32 v4, s22, v88
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s2, s2, s12
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[9:10], null, s22, v20, v[1:2]
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s26, s2, 5
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s28, s24, 8
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s2, s26, s22
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[10:11], null, s22, v2, v[1:2]
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v11, v4, v3, s2
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	s_add_i32 s27, s28, s25
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_mul_i32 s20, s28, s22
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s14, 1
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	s_mul_i32 s21, s27, s22
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s2, -1, 0
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_add_i32 s20, s20, s17
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v1, s17, v11
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	s_add_i32 s21, s21, s17
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v2, s20, v9
	v_add_nc_u32_e32 v3, s20, v10
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v4, s21, v9
	v_add_nc_u32_e32 v5, s21, v10
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e64 v2, 0x80000000, v2, s2
	v_cndmask_b32_e64 v6, 0x80000000, v3, s2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_and_b32 s5, s5, 0xffff
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e64 v12, 0x80000000, v4, s2
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_and_b32 s9, s9, 0xffff
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e64 v16, 0x80000000, v5, s2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v21, v1, s[4:7], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x3
	buffer_load_b128 v[1:4], v2, s[8:11], 0 offen
	buffer_load_b128 v[5:8], v6, s[8:11], 0 offen
	buffer_load_b128 v[12:15], v12, s[8:11], 0 offen
	buffer_load_b128 v[16:19], v16, s[8:11], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v20, 56, v20
	s_mov_b32 s10, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s14, 0x81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v20, v92, v20
	v_add_nc_u32_e32 v52, 0, v20
	s_waitcnt vmcnt(4)
	ds_store_b32 v52, v21 offset:32768
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v53, v[1:2], v[5:6] offset1:16
	ds_store_2addr_stride64_b64 v54, v[3:4], v[7:8] offset1:16
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v53, v[12:13], v[16:17] offset0:32 offset1:48
	ds_store_2addr_stride64_b64 v54, v[14:15], v[18:19] offset0:32 offset1:48
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v1, 56, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v91, 6, v1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshl_or_b32 v36, v90, 5, v38
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v41, 8, v38
	v_xor_b32_e32 v42, 16, v38
	v_xor_b32_e32 v39, 24, v38
	v_xor_b32_e32 v44, 32, v38
	v_xor_b32_e32 v45, 40, v38
	v_xor_b32_e32 v46, 48, v38
	v_xor_b32_e32 v47, 56, v38
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xor_b32_e32 v37, 8, v36
	v_xor_b32_e32 v40, 16, v36
	v_xor_b32_e32 v43, 24, v36
	v_xor_b32_e32 v48, 32, v36
	v_xor_b32_e32 v49, 40, v36
	v_xor_b32_e32 v50, 48, v36
	v_xor_b32_e32 v51, 56, v36
	s_load_b256 s[12:19], s[0:1], 0x10
	s_and_not1_b32 vcc_lo, exec_lo, s10
	s_mov_b32 s0, 0
	s_cbranch_vccz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v4, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v11, v4
	v_mov_b32_e32 v5, v4
	v_mov_b32_e32 v6, v4
	v_mov_b32_e32 v7, v4
	v_mov_b32_e32 v8, v4
	v_mov_b32_e32 v9, v4
	v_mov_b32_e32 v10, v4
	v_dual_mov_b32 v2, v4 :: v_dual_mov_b32 v27, v11
	v_dual_mov_b32 v52, v4 :: v_dual_mov_b32 v35, v11
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v3, v4 :: v_dual_mov_b32 v26, v10
	v_dual_mov_b32 v1, v4 :: v_dual_mov_b32 v22, v6
	v_dual_mov_b32 v15, v4 :: v_dual_mov_b32 v34, v10
	v_dual_mov_b32 v14, v4 :: v_dual_mov_b32 v25, v9
	v_dual_mov_b32 v13, v4 :: v_dual_mov_b32 v30, v6
	v_dual_mov_b32 v12, v4 :: v_dual_mov_b32 v23, v7
	v_mov_b32_e32 v55, v4
	v_dual_mov_b32 v54, v4 :: v_dual_mov_b32 v21, v5
	v_mov_b32_e32 v53, v4
	v_mov_b32_e32 v19, v4
	v_dual_mov_b32 v18, v4 :: v_dual_mov_b32 v33, v9
	v_mov_b32_e32 v17, v4
	v_dual_mov_b32 v16, v4 :: v_dual_mov_b32 v31, v7
	v_dual_mov_b32 v24, v8 :: v_dual_mov_b32 v29, v5
	v_mov_b32_e32 v20, v4
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v28, v4
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr92
                                        ; implicit-def: $vgpr38
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr39
                                        ; implicit-def: $vgpr44
                                        ; implicit-def: $vgpr45
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr36
                                        ; implicit-def: $vgpr37
                                        ; implicit-def: $vgpr40
                                        ; implicit-def: $vgpr43
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr51
	s_load_b256 s[12:19], s[0:1], 0x10
	s_mov_b32 s0, 0
.LBB0_4:                                ; %.lr.ph
	v_mov_b32_e32 v12, 0
	v_lshlrev_b32_e32 v92, 2, v0
.Ltmp12:
	.loc	2 43 13 is_stmt 1               ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s22, s22, 63
	s_mov_b32 s10, s6
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s1, s22, 6
	v_mov_b32_e32 v13, v12
	v_dual_mov_b32 v14, v12 :: v_dual_and_b32 v1, 56, v92
	v_sub_nc_u32_e64 v55, s1, 2 clamp
	s_mov_b32 s11, s7
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v38, v91, 6, v1
	v_lshl_or_b32 v36, v90, 5, v38
	v_xor_b32_e32 v41, 8, v38
	v_xor_b32_e32 v42, 16, v38
	v_xor_b32_e32 v39, 24, v38
	v_xor_b32_e32 v44, 32, v38
	v_xor_b32_e32 v45, 40, v38
	v_xor_b32_e32 v46, 48, v38
	v_xor_b32_e32 v47, 56, v38
	v_xor_b32_e32 v37, 8, v36
	v_xor_b32_e32 v40, 16, v36
	v_xor_b32_e32 v43, 24, v36
	v_xor_b32_e32 v48, 32, v36
	v_xor_b32_e32 v49, 40, v36
	v_xor_b32_e32 v50, 48, v36
	v_xor_b32_e32 v51, 56, v36
	v_add_nc_u32_e32 v57, 0, v41
	v_dual_mov_b32 v15, v12 :: v_dual_add_nc_u32 v56, 0, v38
	v_dual_mov_b32 v17, v12 :: v_dual_add_nc_u32 v58, 0, v42
	v_dual_mov_b32 v16, v12 :: v_dual_add_nc_u32 v59, 0, v39
	v_dual_mov_b32 v19, v12 :: v_dual_add_nc_u32 v60, 0, v44
	v_dual_mov_b32 v18, v12 :: v_dual_add_nc_u32 v61, 0, v45
	v_dual_mov_b32 v21, v12 :: v_dual_add_nc_u32 v62, 0, v46
	v_dual_mov_b32 v20, v12 :: v_dual_add_nc_u32 v63, 0, v47
	v_dual_mov_b32 v23, v12 :: v_dual_add_nc_u32 v64, 0, v36
	v_dual_mov_b32 v22, v12 :: v_dual_add_nc_u32 v65, 0, v37
	v_dual_mov_b32 v25, v12 :: v_dual_add_nc_u32 v66, 0, v40
	v_dual_mov_b32 v24, v12 :: v_dual_add_nc_u32 v67, 0, v43
	v_dual_mov_b32 v27, v12 :: v_dual_add_nc_u32 v68, 0, v48
	v_dual_mov_b32 v26, v12 :: v_dual_add_nc_u32 v69, 0, v49
	v_dual_mov_b32 v1, v12 :: v_dual_add_nc_u32 v70, 0, v50
	v_dual_mov_b32 v2, v12 :: v_dual_add_nc_u32 v71, 0, v51
	v_mov_b32_e32 v3, v12
	v_mov_b32_e32 v4, v12
	v_mov_b32_e32 v5, v12
	v_mov_b32_e32 v6, v12
	v_mov_b32_e32 v7, v12
	v_mov_b32_e32 v8, v12
	v_mov_b32_e32 v28, v12
	v_mov_b32_e32 v29, v12
	v_mov_b32_e32 v30, v12
	v_mov_b32_e32 v31, v12
	v_mov_b32_e32 v32, v12
	v_mov_b32_e32 v33, v12
	v_mov_b32_e32 v34, v12
	v_mov_b32_e32 v35, v12
.Ltmp13:
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_add_i32 s1, s0, 1
	v_cmp_ne_u32_e32 vcc_lo, s0, v55
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s22, s1, s3
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_lshl_b32 s23, s1, 6
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_lshl_add_u32 v72, s22, 6, v11
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_add_i32 s22, s20, s23
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	s_add_i32 s23, s21, s23
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v73, s22, v9
	v_add_nc_u32_e32 v76, s22, v10
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v80, s23, v9
	v_add_nc_u32_e32 v84, s23, v10
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v101, v72, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x3
	buffer_load_b128 v[72:75], v73, s[8:11], 0 offen
	buffer_load_b128 v[76:79], v76, s[8:11], 0 offen
	buffer_load_b128 v[80:83], v80, s[8:11], 0 offen
	buffer_load_b128 v[84:87], v84, s[8:11], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v56 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v64 offset1:32
	s_mov_b32 s0, s1
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[97:98], v[95:96], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[99:100], v[93:94], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[99:100], v[95:96], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v57 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v65 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[97:98], v[95:96], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[99:100], v[93:94], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[99:100], v[95:96], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v58 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v66 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[97:98], v[95:96], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[99:100], v[93:94], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[99:100], v[95:96], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v59 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v67 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[97:98], v[95:96], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[99:100], v[93:94], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[99:100], v[95:96], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v60 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v68 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[97:98], v[95:96], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[99:100], v[93:94], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[99:100], v[95:96], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v61 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v69 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[97:98], v[95:96], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[99:100], v[93:94], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[99:100], v[95:96], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v62 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v70 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[97:98], v[95:96], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[99:100], v[93:94], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[99:100], v[95:96], v[20:27] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v63 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v71 offset1:32
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(4)
	ds_store_b32 v52, v101 offset:32768
	.loc	1 156 22 is_stmt 1              ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v53, v[72:73], v[76:77] offset1:16
	ds_store_2addr_stride64_b64 v54, v[74:75], v[78:79] offset1:16
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v53, v[80:81], v[84:85] offset0:32 offset1:48
	ds_store_2addr_stride64_b64 v54, v[82:83], v[86:87] offset0:32 offset1:48
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[1:8], v[97:98], v[93:94], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[28:35], v[97:98], v[95:96], v[28:35] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[12:19], v[99:100], v[93:94], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[99:100], v[95:96], v[20:27] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_vccnz .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v55, v8 :: v_dual_mov_b32 v54, v7
	v_dual_mov_b32 v53, v6 :: v_dual_mov_b32 v52, v5
.LBB0_7:                                ; %Flow214
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v5, 0, v38
	v_add_nc_u32_e32 v6, 0, v41
	v_and_b32_e32 v9, 0x1f0, v0
	v_add_nc_u32_e32 v7, 0, v42
	v_add_nc_u32_e32 v95, 0, v43
	v_add_nc_u32_e32 v96, 0, v40
	v_mov_b32_e32 v40, v52
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v41, v53 :: v_dual_mov_b32 v42, v54
	ds_load_2addr_stride64_b64 v[84:87], v5 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[68:71], v6 offset0:64 offset1:66
	v_add_nc_u32_e32 v5, 0, v39
	v_dual_mov_b32 v43, v55 :: v_dual_add_nc_u32 v6, 0, v44
	v_add_nc_u32_e32 v8, 0, v46
	v_add_nc_u32_e32 v97, 0, v37
	v_add_nc_u32_e32 v98, 0, v36
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	ds_load_2addr_stride64_b64 v[64:67], v7 offset0:64 offset1:66
	v_dual_mov_b32 v36, v1 :: v_dual_add_nc_u32 v7, 0, v45
	ds_load_2addr_stride64_b64 v[76:79], v5 offset0:64 offset1:66
	v_add_nc_u32_e32 v5, 0, v47
	v_dual_mov_b32 v37, v2 :: v_dual_add_nc_u32 v10, 0, v51
	v_add_nc_u32_e32 v11, 0, v50
	v_add_nc_u32_e32 v93, 0, v49
	v_add_nc_u32_e32 v94, 0, v48
	v_dual_mov_b32 v51, v35 :: v_dual_mov_b32 v50, v34
	ds_load_2addr_stride64_b64 v[80:83], v6 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[72:75], v7 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[56:59], v8 offset0:64 offset1:66
	v_mov_b32_e32 v48, v32
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[60:63], v5 offset0:64 offset1:66
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	v_cndmask_b32_e64 v6, 0, 1, s2
	v_mov_b32_e32 v49, v33
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	v_mov_b32_e32 v45, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v6
	v_mov_b32_e32 v44, v28
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[99:100], v98
	ds_load_b64 v[101:102], v97
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v7, v54 :: v_dual_mov_b32 v8, v55
	v_dual_mov_b32 v5, v52 :: v_dual_mov_b32 v6, v53
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[103:104], v96
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v43, v8 :: v_dual_mov_b32 v42, v7
	v_dual_mov_b32 v41, v6 :: v_dual_mov_b32 v40, v5
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[5:6], v95
	ds_load_b64 v[7:8], v94
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[99:100], v[84:85], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[99:100], v[86:87], v[28:35] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[99:100], v93
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[101:102], v[68:69], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[101:102], v[70:71], v[44:51] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[101:102], v11
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[103:104], v[64:65], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[103:104], v[66:67], v[44:51] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[103:104], v10
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[5:6], v[76:77], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[5:6], v[78:79], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[7:8], v[80:81], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[7:8], v[82:83], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[99:100], v[72:73], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[99:100], v[74:75], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[101:102], v[56:57], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[101:102], v[58:59], v[44:51] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[36:43], v[103:104], v[60:61], v[36:43] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[44:51], v[103:104], v[62:63], v[44:51] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_load_b64 v[1:2], v98 offset:16384
	ds_load_b64 v[3:4], v97 offset:16384
	ds_load_b64 v[5:6], v96 offset:16384
	ds_load_b64 v[7:8], v95 offset:16384
	ds_load_b64 v[28:29], v94 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[1:2], v[84:85], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[1:2], v[86:87], v[20:27] neg_lo:[1,1,0]
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_load_b64 v[1:2], v93 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[3:4], v[68:69], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[3:4], v[70:71], v[20:27] neg_lo:[1,1,0]
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_load_b64 v[3:4], v11 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[64:65], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[66:67], v[20:27] neg_lo:[1,1,0]
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_load_b64 v[5:6], v10 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[7:8], v[76:77], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[7:8], v[78:79], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[28:29], v[80:81], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[28:29], v[82:83], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[1:2], v[72:73], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[1:2], v[74:75], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[3:4], v[56:57], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[3:4], v[58:59], v[20:27] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[12:19], v[5:6], v[60:61], v[12:19] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[20:27], v[5:6], v[62:63], v[20:27] neg_lo:[1,1,0]
	s_branch .LBB0_12
.LBB0_11:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v40, v52 :: v_dual_mov_b32 v41, v53
	v_dual_mov_b32 v39, v4 :: v_dual_mov_b32 v38, v3
	v_dual_mov_b32 v51, v35 :: v_dual_mov_b32 v50, v34
	v_dual_mov_b32 v42, v54 :: v_dual_mov_b32 v43, v55
	v_dual_mov_b32 v37, v2 :: v_dual_mov_b32 v36, v1
	v_dual_mov_b32 v49, v33 :: v_dual_mov_b32 v48, v32
	v_dual_mov_b32 v47, v31 :: v_dual_mov_b32 v46, v30
	v_dual_mov_b32 v45, v29 :: v_dual_mov_b32 v44, v28
.LBB0_12:                               ; %._crit_edge11
	.loc	1 169 22 is_stmt 1              ; generate_amdgcn.py:169:22
	v_or_b32_e32 v2, s26, v91
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v2, 1, v2
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v1, 1, v90
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v21, v21
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v20, v20
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v10, 32, v2
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_or_b32 v1, v88, 1, v1
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v26, v26
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v28, v2, s[20:23], 0 offen
	buffer_load_u16 v10, v10, s[20:23], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s21, s15, 0xffff
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v5, 10, v1
	v_or_b32_e32 v6, 8, v1
	v_or_b32_e32 v7, 6, v1
	v_or_b32_e32 v8, 2, v1
	v_or_b32_e32 v11, 4, v1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v2, s28, v1
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v3, 14, v1
	v_or_b32_e32 v4, 12, v1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v29, s28, v8
	v_or_b32_e32 v30, s28, v11
	v_or_b32_e32 v31, s28, v7
	v_or_b32_e32 v32, s28, v6
	v_or_b32_e32 v33, s28, v5
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v1, s27, v1, 1
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_mov_b32 s20, s14
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v7, s27, v7, 1
	v_add_lshl_u32 v6, s27, v6, 1
	v_add_lshl_u32 v5, s27, v5, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v34, s28, v4
	v_or_b32_e32 v35, s28, v3
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v4, s27, v4, 1
	v_add_lshl_u32 v3, s27, v3, 1
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v24, v24
	v_cvt_f32_i32_e32 v23, v23
	v_cvt_f32_i32_e32 v22, v22
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v47, v47
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v46, v46
	v_cvt_f32_i32_e32 v45, v45
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v17, v17
	v_cvt_f32_i32_e32 v27, v27
	v_cvt_f32_i32_e32 v25, v25
	v_cvt_f32_i32_e32 v18, v18
	v_cvt_f32_i32_e32 v19, v19
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v39, v39
	v_cvt_f32_i32_e32 v38, v38
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v10, 16, v10
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v2, 1, v2
	buffer_load_u16 v52, v2, s[20:23], 0 offen
	v_lshlrev_b32_e32 v2, 1, v29
	v_lshlrev_b32_e32 v29, 1, v30
	v_lshlrev_b32_e32 v30, 1, v31
	v_lshlrev_b32_e32 v31, 1, v32
	v_lshlrev_b32_e32 v32, 1, v33
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	buffer_load_u16 v33, v1, s[20:23], 0 offen
	v_add_lshl_u32 v1, s27, v8, 1
	v_add_lshl_u32 v8, s27, v11, 1
	s_clause 0x6
	buffer_load_u16 v11, v1, s[20:23], 0 offen
	buffer_load_u16 v8, v8, s[20:23], 0 offen
	buffer_load_u16 v7, v7, s[20:23], 0 offen
	buffer_load_u16 v6, v6, s[20:23], 0 offen
	buffer_load_u16 v53, v5, s[20:23], 0 offen
	buffer_load_u16 v54, v4, s[20:23], 0 offen
	buffer_load_u16 v55, v3, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v4, v40
	v_cvt_f32_i32_e32 v40, v51
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v51, v16
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v7, 16, v7
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mul_f32 v58, v10, v7 :: v_dual_lshlrev_b32 v5, 16, v28
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v8, 16, v8
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v6, 16, v6
	v_lshlrev_b32_e32 v11, 16, v11
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v7, v5, v7
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v1, 1, v34
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v59, v10, v8
	v_dual_mul_f32 v57, v10, v6 :: v_dual_mul_f32 v8, v5, v8
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v28, 16, v52
	v_lshlrev_b32_e32 v3, 1, v35
	s_clause 0x6
	buffer_load_u16 v34, v2, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v32, v32, s[20:23], 0 offen
	buffer_load_u16 v35, v1, s[20:23], 0 offen
	buffer_load_u16 v56, v3, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v3, v41
	v_cvt_f32_i32_e32 v41, v50
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v50, v13
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v60, v10, v11 :: v_dual_lshlrev_b32 v13, 16, v33
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v2, v42
	v_cvt_f32_i32_e32 v42, v49
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v49, v14
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v1, v43
	v_cvt_f32_i32_e32 v43, v48
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v48, v15
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	s_waitcnt vmcnt(9)
	v_lshlrev_b32_e32 v33, 16, v53
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_dual_mul_f32 v11, v5, v11 :: v_dual_mul_f32 v22, v59, v22
	.loc	1 175 13 is_stmt 0              ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v23, v58, v23 :: v_dual_mul_f32 v24, v57, v24
.Ltmp14:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp15:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s17, 0xffff
	s_mov_b32 s20, s16
.Ltmp16:
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	s_waitcnt vmcnt(4)
	v_dual_mul_f32 v21, v60, v21 :: v_dual_lshlrev_b32 v30, 16, v30
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v14, 16, v32
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v15, 16, v35
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v52, 16, v54
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_dual_mul_f32 v54, v10, v13 :: v_dual_lshlrev_b32 v53, 16, v55
	v_mul_f32_e32 v55, v5, v13
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v63, v10, v30 :: v_dual_lshlrev_b32 v16, 16, v56
	v_mul_f32_e32 v61, v10, v14
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v13, 16, v31
	v_lshlrev_b32_e32 v29, 16, v29
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v31, v10, v28 :: v_dual_lshlrev_b32 v34, 16, v34
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v20, v54, v20
	v_mul_f32_e32 v54, v55, v12
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v12, v10, v16
	v_mul_f32_e32 v62, v10, v13
	v_mul_f32_e32 v55, v10, v15
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v35, v10, v52
	v_mul_f32_e32 v32, v10, v53
	v_mul_f32_e32 v56, v10, v33
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v28, v5, v28
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v33, v5, v33
	v_mul_f32_e32 v6, v5, v6
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v64, v10, v29 :: v_dual_mul_f32 v27, v32, v27
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v31, v31, v44 :: v_dual_mul_f32 v10, v10, v34
	.loc	1 175 13 is_stmt 1              ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v25, v56, v25 :: v_dual_mul_f32 v26, v35, v26
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v29, v5, v29
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v35, v8, v49 :: v_dual_mul_f32 v8, v7, v48
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v7, 0xbfb8aa3b, v54 :: v_dual_mul_f32 v44, v63, v47
	v_dual_mul_f32 v49, 0xbfb8aa3b, v21 :: v_dual_mul_f32 v52, v5, v52
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v30, v5, v30
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v28, v28, v36 :: v_dual_mul_f32 v17, v33, v17
	.loc	1 175 13 is_stmt 1              ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v36, v6, v51 :: v_dual_mul_f32 v41, v55, v41
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v6, 0xbfb8aa3b, v20 :: v_dual_mul_f32 v33, v10, v45
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v10, v64, v46 :: v_dual_mul_f32 v47, 0xbfb8aa3b, v23
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v7
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v53, v5, v53
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v49
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v32, v5, v34 :: v_dual_mul_f32 v43, v62, v43
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v34, v11, v50 :: v_dual_mul_f32 v19, v53, v19
	v_dual_mul_f32 v18, v52, v18 :: v_dual_mul_f32 v11, 0xbfb8aa3b, v27
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v40, v12, v40 :: v_dual_mul_f32 v29, v29, v38
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v12, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v53, 0xbfb8aa3b, v36
	v_mul_f32_e32 v45, 0xbfb8aa3b, v25
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v7, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v47
	v_mul_f32_e32 v46, 0xbfb8aa3b, v24
	v_cndmask_b32_e64 v49, 0, 0x42800000, s1
	v_mul_f32_e32 v48, 0xbfb8aa3b, v22
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v42, v61, v42
	v_dual_mul_f32 v32, v32, v37 :: v_dual_mul_f32 v51, 0xbfb8aa3b, v18
	v_dual_mul_f32 v30, v30, v39 :: v_dual_fmac_f32 v7, 0xbfb8aa3b, v54
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_mul_f32_e32 v37, 0xbfb8aa3b, v8
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v47, 0, 0x42800000, s3
	v_mul_f32_e32 v52, 0xbfb8aa3b, v17
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v12
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v11
	v_mul_f32_e32 v39, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v46
	v_fmac_f32_e32 v49, 0xbfb8aa3b, v21
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v48
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v45
	v_cndmask_b32_e64 v12, 0, 0x42800000, s6
	v_cndmask_b32_e64 v11, 0, 0x42800000, s7
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v37
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v53
	v_dual_fmac_f32 v6, 0xbfb8aa3b, v20 :: v_dual_fmac_f32 v47, 0xbfb8aa3b, v23
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v52
	v_exp_f32_e32 v7, v7
	v_cndmask_b32_e64 v48, 0, 0x42800000, s2
	v_cndmask_b32_e64 v46, 0, 0x42800000, s4
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v39
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v51
	v_cndmask_b32_e64 v45, 0, 0x42800000, s5
	v_cndmask_b32_e64 v37, 0, 0x42800000, s10
	v_cndmask_b32_e64 v53, 0, 0x42800000, s11
	v_cndmask_b32_e64 v52, 0, 0x42800000, s12
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v12, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v11, 0xbfb8aa3b, v27
	v_exp_f32_e32 v6, v6
	v_cndmask_b32_e64 v39, 0, 0x42800000, s8
	v_cndmask_b32_e64 v51, 0, 0x42800000, s13
	v_dual_fmac_f32 v48, 0xbfb8aa3b, v22 :: v_dual_fmac_f32 v37, 0xbfb8aa3b, v8
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v24
	v_dual_mul_f32 v38, 0xbfb8aa3b, v35 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v25
	v_dual_mul_f32 v50, 0xbfb8aa3b, v19 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v34
	v_cndmask_b32_e64 v55, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v53, 0xbfb8aa3b, v36
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v47, v47
	v_exp_f32_e32 v12, v12
	v_exp_f32_e32 v11, v11
	v_ldexp_f32 v7, v7, v56
	v_dual_fmac_f32 v52, 0xbfb8aa3b, v17 :: v_dual_fmac_f32 v51, 0xbfb8aa3b, v18
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v46, v46
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v38
	v_exp_f32_e32 v45, v45
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v50
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s1
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s6
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s7
	v_exp_f32_e32 v37, v37
	v_ldexp_f32 v6, v6, v55
	.loc	1 176 38 is_stmt 0              ; generate_amdgcn.py:176:38
	v_add_f32_e32 v55, 1.0, v7
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v52, v52
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s4
	v_exp_f32_e32 v39, v39
	v_cndmask_b32_e64 v38, 0, 0x42800000, s9
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v50, 0, 0x42800000, s14
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s12
	v_ldexp_f32 v49, v49, v57
	v_ldexp_f32 v47, v47, v59
	v_ldexp_f32 v12, v12, v62
	v_ldexp_f32 v11, v11, v63
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s8
	v_ldexp_f32 v48, v48, v58
	v_ldexp_f32 v46, v46, v60
	v_ldexp_f32 v45, v45, v61
	v_fmac_f32_e32 v38, 0xbfb8aa3b, v35
	v_fmac_f32_e32 v50, 0xbfb8aa3b, v19
	v_ldexp_f32 v37, v37, v66
	v_ldexp_f32 v52, v52, v68
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v6, 1.0, v6 :: v_dual_add_f32 v7, 1.0, v11
	v_dual_add_f32 v56, 1.0, v12 :: v_dual_add_f32 v11, 1.0, v47
	v_add_f32_e32 v47, 1.0, v49
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v39, v39, v64
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v12, 1.0, v46 :: v_dual_add_f32 v37, 1.0, v37
	v_dual_add_f32 v46, 1.0, v48 :: v_dual_add_f32 v45, 1.0, v45
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v38, v38
	v_exp_f32_e32 v53, v53
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v48, 1.0, v52
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v52, null, v6, v6, v20
	v_div_scale_f32 v57, null, v55, v55, v54
	v_div_scale_f32 v59, null, v47, v47, v21
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v51, v51
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v61, null, v46, v46, v22
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s11
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v78, null, v37, v37, v8
	v_rcp_f32_e32 v81, v52
	v_rcp_f32_e32 v82, v57
	v_rcp_f32_e32 v83, v59
	v_div_scale_f32 v63, null, v11, v11, v23
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s13
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v84, v61
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v38, v38, v65
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v65, null, v12, v12, v24
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v53, v53, v67
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v67, null, v45, v45, v25
	v_rcp_f32_e32 v97, v78
	v_rcp_f32_e32 v85, v63
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v51, v51, v69
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v69, null, v56, v56, v26
	v_rcp_f32_e32 v86, v65
	v_rcp_f32_e32 v87, v67
	v_fma_f32 v98, -v52, v81, 1.0
	v_fma_f32 v99, -v57, v82, 1.0
	v_fma_f32 v100, -v59, v83, 1.0
	v_div_scale_f32 v72, null, v7, v7, v27
	v_rcp_f32_e32 v93, v69
	v_fma_f32 v101, -v61, v84, 1.0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v38, 1.0, v38 :: v_dual_add_f32 v49, 1.0, v53
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v53, s0, v20, v6, v20
	v_div_scale_f32 v58, s1, v54, v55, v54
	v_div_scale_f32 v60, vcc_lo, v21, v47, v21
	v_fma_f32 v109, -v78, v97, 1.0
	v_dual_fmac_f32 v81, v98, v81 :: v_dual_fmac_f32 v82, v99, v82
	v_fmac_f32_e32 v83, v100, v83
	v_fma_f32 v102, -v63, v85, 1.0
	v_div_scale_f32 v62, s2, v22, v46, v22
	v_rcp_f32_e32 v94, v72
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v84, v101, v84 :: v_dual_fmac_f32 v85, v102, v85
	v_fma_f32 v103, -v65, v86, 1.0
	v_fma_f32 v104, -v67, v87, 1.0
	v_dual_fmac_f32 v97, v109, v97 :: v_dual_mul_f32 v100, v60, v83
	v_dual_mul_f32 v98, v53, v81 :: v_dual_mul_f32 v99, v58, v82
	v_div_scale_f32 v64, s3, v23, v11, v23
	v_div_scale_f32 v74, null, v39, v39, v34
	v_fma_f32 v105, -v69, v93, 1.0
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v101, v62, v84 :: v_dual_mul_f32 v102, v64, v85
	v_div_scale_f32 v66, s4, v24, v12, v24
	v_div_scale_f32 v76, null, v38, v38, v35
	v_dual_fmac_f32 v86, v103, v86 :: v_dual_fmac_f32 v87, v104, v87
	v_div_scale_f32 v68, s5, v25, v45, v25
	v_div_scale_f32 v79, s10, v8, v37, v8
	v_fma_f32 v110, -v52, v98, v53
	v_fma_f32 v111, -v57, v99, v58
	v_fma_f32 v112, -v59, v100, v60
	v_rcp_f32_e32 v95, v74
	v_div_scale_f32 v71, s6, v26, v56, v26
	v_fma_f32 v106, -v72, v94, 1.0
	v_fmac_f32_e32 v93, v105, v93
	v_fma_f32 v113, -v61, v101, v62
	v_rcp_f32_e32 v96, v76
	v_dual_mul_f32 v103, v66, v86 :: v_dual_mul_f32 v104, v68, v87
	v_dual_mul_f32 v109, v79, v97 :: v_dual_fmac_f32 v100, v112, v83
	v_dual_fmac_f32 v98, v110, v81 :: v_dual_fmac_f32 v99, v111, v82
	v_fma_f32 v114, -v63, v102, v64
	v_div_scale_f32 v73, s7, v27, v7, v27
	v_dual_fmac_f32 v94, v106, v94 :: v_dual_mul_f32 v105, v71, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v101, v113, v84 :: v_dual_fmac_f32 v102, v114, v85
	v_fma_f32 v115, -v65, v103, v66
	v_fma_f32 v110, -v67, v104, v68
	v_fma_f32 v52, -v52, v98, v53
	v_fma_f32 v53, -v57, v99, v58
	v_fma_f32 v57, -v59, v100, v60
	v_fma_f32 v107, -v74, v95, 1.0
	v_mul_f32_e32 v106, v73, v94
	v_fma_f32 v111, -v69, v105, v71
	v_fma_f32 v58, -v61, v101, v62
	v_fma_f32 v108, -v76, v96, 1.0
	v_dual_fmac_f32 v103, v115, v86 :: v_dual_fmac_f32 v104, v110, v87
	v_div_fmas_f32 v57, v57, v83, v100
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v75, s8, v34, v39, v34
	v_dual_fmac_f32 v95, v107, v95 :: v_dual_fmac_f32 v96, v108, v96
	v_fma_f32 v59, -v63, v102, v64
	v_fma_f32 v112, -v72, v106, v73
	v_fmac_f32_e32 v105, v111, v93
	v_div_fmas_f32 v58, v58, v84, v101
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v77, s9, v35, v38, v35
	v_fma_f32 v60, -v65, v103, v66
	v_div_fmas_f32 v52, v52, v81, v98
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v61, -v67, v104, v68
	v_dual_mul_f32 v107, v75, v95 :: v_dual_mul_f32 v108, v77, v96
	v_div_fixup_f32 v21, v57, v47, v21
	v_div_fmas_f32 v47, v59, v85, v102
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v106, v112, v94
	v_fma_f32 v62, -v69, v105, v71
	v_div_fixup_f32 v22, v58, v46, v22
	v_div_fmas_f32 v46, v60, v86, v103
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v6, v52, v6, v20
	v_div_fmas_f32 v20, v61, v87, v104
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v113, -v74, v107, v75
	v_fma_f32 v63, -v72, v106, v73
	v_div_fixup_f32 v23, v47, v11, v23
	v_div_fmas_f32 v47, v62, v93, v105
	v_fma_f32 v114, -v76, v108, v77
	s_mov_b32 vcc_lo, s7
	v_fmac_f32_e32 v107, v113, v95
	v_fma_f32 v115, -v78, v109, v79
	v_div_fixup_f32 v20, v20, v45, v25
	v_div_fixup_f32 v25, v47, v56, v26
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v11, v10, v22
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v10, v46, v12, v24
	v_div_fmas_f32 v22, v63, v94, v106
	v_fmac_f32_e32 v108, v114, v96
	v_fma_f32 v64, -v74, v107, v75
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v12, v31, v6
	v_mul_f32_e32 v6, v43, v10
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v10, v22, v7, v27
	v_fmac_f32_e32 v109, v115, v97
	v_fma_f32 v65, -v76, v108, v77
	s_mov_b32 vcc_lo, s8
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v50, v50
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v24, v64, v95, v107
	s_mov_b32 vcc_lo, s9
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v10, v40, v10
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v66, -v78, v109, v79
	v_div_fmas_f32 v26, v65, v96, v108
	s_mov_b32 vcc_lo, s1
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v70, 0, 0xffffffc0, s14
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v31, v53, v82, v99
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v80, null, v49, v49, v36
	v_div_fmas_f32 v45, v66, v97, v109
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v27, 1.0, v51
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v7, v42, v20
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v20, v24, v39, v34
	v_div_fixup_f32 v24, v26, v38, v35
	v_div_fixup_f32 v22, v45, v37, v8
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v8, v41, v25
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v25, v31, v55, v54
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v31, v50, v70
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v26, v80
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v22, v30, v22
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v30, null, v48, v48, v17
	v_div_scale_f32 v34, null, v27, v27, v18
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v31, 1.0, v31 :: v_dual_mul_f32 v24, v29, v24
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v25, v28, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v28, v30
	v_rcp_f32_e32 v37, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_div_scale_f32 v29, null, v31, v31, v19
	v_fma_f32 v35, -v80, v26, 1.0
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v15, v5, v15
	v_mul_f32_e32 v14, v5, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v39, v29
	s_mov_b32 s8, 0x76543210
	v_fma_f32 v38, -v30, v28, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v34, v37, 1.0
	v_fmac_f32_e32 v26, v35, v26
	v_div_scale_f32 v35, vcc_lo, v36, v49, v36
	v_fmac_f32_e32 v28, v38, v28
	v_div_scale_f32 v38, s0, v17, v48, v17
	v_dual_fmac_f32 v37, v40, v37 :: v_dual_mul_f32 v16, v5, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v41, v35, v26
	v_fma_f32 v42, -v29, v39, 1.0
	v_div_scale_f32 v40, s1, v18, v27, v18
	v_mul_f32_e32 v45, v38, v28
	v_fma_f32 v43, -v80, v41, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v39, v42, v39
	v_div_scale_f32 v42, s2, v19, v31, v19
	v_dual_mul_f32 v46, v40, v37 :: v_dual_fmac_f32 v41, v43, v26
	v_fma_f32 v43, -v30, v45, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v50, v42, v39 :: v_dual_mul_f32 v5, v5, v13
	v_fma_f32 v47, -v34, v46, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v13, -v80, v41, v35
	v_fmac_f32_e32 v45, v43, v28
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v35, -v29, v50, v42
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v3, v14, v3 :: v_dual_fmac_f32 v46, v47, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v13, v13, v26, v41
	v_fma_f32 v26, -v30, v45, v38
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v50, v35, v39
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v30, -v34, v46, v40
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v4, v5, v4 :: v_dual_mul_f32 v1, v16, v1
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v26, v26, v28, v45
	v_fma_f32 v28, -v29, v50, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v13, v13, v49, v36
	v_div_fmas_f32 v29, v30, v37, v46
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v14, v26, v48, v17
	v_div_fmas_f32 v28, v28, v39, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 176 19 is_stmt 0              ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v13, v4, v13 :: v_dual_mul_f32 v14, v3, v14
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v5, v28, v31, v19
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v2, v15, v2
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v15, v29, v27, v18
	.loc	1 176 19 is_stmt 0              ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v18, v33, v21 :: v_dual_lshlrev_b32 v21, 7, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v17, v1, v5 :: v_dual_mul_f32 v16, v32, v20
	v_mul_f32_e32 v15, v2, v15
.Ltmp17:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v2, |v22|, |v13|, |v14|
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	v_max3_f32 v5, |v12|, |v18|, |v11|
	v_max_f32_e64 v20, |v8|, |v10|
	v_max3_f32 v1, |v25|, |v16|, |v24|
	v_max_f32_e64 v4, |v15|, |v17|
	v_max3_f32 v2, v1, v2, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_permlanex16_b32 v4, v2, s8, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_lshlrev_b32 v1, 3, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp20:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v3, v44, v23 :: v_dual_max_f32 v4, v2, v4
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v19, |v3|, |v6|, |v7|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v2, v90, 2, v1
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v5, v5, v19, v20
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v20, 2, v90
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v19, v5, s8, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v23, v1, v20
	v_xad_u32 v2, v2, v20, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v5, v5, v19
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v19, 0, v21, v23
	ds_store_b64 v19, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v4
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_mov_b32 v19, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v5, v5, v5 :: v_dual_max_f32 v2, v4, v2
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	v_dual_max_f32 v4, v5, v19 :: v_dual_mov_b32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v5, v5 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v5
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v5, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v5, v5, v5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_dual_mov_b32 v19, v4 :: v_dual_max_f32 v2, v2, v5
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	v_max_f32_e32 v4, v4, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v4
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v19, v19, v19
	v_dual_max_f32 v5, v4, v19 :: v_dual_mov_b32 v4, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v19, v5
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v19, v19, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v4, v2, v4
	v_dual_max_f32 v5, v5, v19 :: v_dual_add_nc_u32 v2, 0, v20
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v19, 0, v1
	ds_store_b64 v2, v[4:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[4:5], v19
.Ltmp43:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v2, v4, v4
	v_max_f32_e32 v4, v5, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v5, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v19, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v27, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v20, v5
	v_rcp_f32_e32 v21, v19
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v23, -v5, v20, 1.0
	v_fma_f32 v26, -v19, v21, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v20, v23, v20
	v_div_scale_f32 v23, s0, v4, 0x40e00000, v4
	v_dual_fmac_f32 v21, v26, v21 :: v_dual_mul_f32 v26, v27, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v28, v23, v21
	v_fma_f32 v29, -v5, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v30, -v19, v28, v23
	v_fmac_f32_e32 v26, v29, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v28, v30, v21
	v_fma_f32 v5, -v5, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v19, -v19, v28, v23
	v_div_fmas_f32 v5, v5, v20, v26
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v19, v19, v21, v28
	v_div_fixup_f32 v2, v5, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v4, v19, 0x40e00000, v4
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v5, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v19, v4, 16, 1
	v_add3_u32 v23, v2, v5, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v26, v4, v19, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v4, 0xffff0000, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v5, 0xffff0000, v26
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v21, null, v4, v4, v16
	v_div_scale_f32 v19, null, v4, v4, v25
	v_div_scale_f32 v28, null, v4, v4, v24
	v_div_scale_f32 v32, null, v4, v4, v13
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v45, v21
	v_div_scale_f32 v34, null, v4, v4, v14
	v_div_scale_f32 v38, null, v4, v4, v17
	v_rcp_f32_e32 v44, v19
	v_div_scale_f32 v30, null, v4, v4, v22
	v_rcp_f32_e32 v46, v28
	v_rcp_f32_e32 v48, v32
	v_div_scale_f32 v40, null, v5, v5, v12
	v_rcp_f32_e32 v49, v34
	v_rcp_f32_e32 v51, v38
	v_div_scale_f32 v36, null, v4, v4, v15
	v_rcp_f32_e32 v47, v30
	v_fma_f32 v55, -v21, v45, 1.0
	v_rcp_f32_e32 v52, v40
	v_fma_f32 v54, -v19, v44, 1.0
	v_rcp_f32_e32 v50, v36
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_fmac_f32 v45, v55, v45 :: v_dual_and_b32 v2, 16, v0
	v_div_scale_f32 v27, s0, v16, v4, v16
	v_fma_f32 v56, -v28, v46, 1.0
	v_fma_f32 v58, -v32, v48, 1.0
	v_div_scale_f32 v20, vcc_lo, v25, v4, v25
	v_div_scale_f32 v42, null, v5, v5, v18
	v_fma_f32 v59, -v34, v49, 1.0
	v_fma_f32 v61, -v38, v51, 1.0
	v_fmac_f32_e32 v44, v54, v44
	v_fma_f32 v57, -v30, v47, 1.0
	v_div_scale_f32 v29, s1, v24, v4, v24
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v46, v56, v46 :: v_dual_fmac_f32 v51, v61, v51
	v_dual_fmac_f32 v48, v58, v48 :: v_dual_mul_f32 v55, v27, v45
	v_div_scale_f32 v39, s6, v17, v4, v17
	v_rcp_f32_e32 v53, v42
	v_fma_f32 v62, -v40, v52, 1.0
	v_dual_fmac_f32 v49, v59, v49 :: v_dual_mul_f32 v54, v20, v44
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v61, v39, v51
	v_div_scale_f32 v31, s2, v22, v4, v22
	v_fma_f32 v60, -v36, v50, 1.0
	v_fmac_f32_e32 v47, v57, v47
	v_fma_f32 v64, -v21, v55, v27
	v_mul_f32_e32 v56, v29, v46
	v_div_scale_f32 v35, s4, v14, v4, v14
	v_fmac_f32_e32 v52, v62, v52
	v_fma_f32 v62, -v19, v54, v20
	v_dual_fmac_f32 v50, v60, v50 :: v_dual_mul_f32 v57, v31, v47
	v_fmac_f32_e32 v55, v64, v45
	v_fma_f32 v65, -v28, v56, v29
	v_fma_f32 v63, -v42, v53, 1.0
	v_fmac_f32_e32 v54, v62, v44
	v_div_scale_f32 v33, s3, v13, v4, v13
	v_fma_f32 v66, -v30, v57, v31
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v56, v65, v46 :: v_dual_fmac_f32 v53, v63, v53
	v_fma_f32 v19, -v19, v54, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v58, v33, v48 :: v_dual_fmac_f32 v57, v66, v47
	v_fma_f32 v20, -v21, v55, v27
	v_fma_f32 v21, -v28, v56, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v19, v19, v44, v54
	s_mov_b32 vcc_lo, s0
	v_fma_f32 v27, -v30, v57, v31
	v_div_fmas_f32 v20, v20, v45, v55
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v43, null, v5, v5, v11
	v_div_fmas_f32 v21, v21, v46, v56
	s_mov_b32 vcc_lo, s2
	v_fma_f32 v67, -v32, v58, v33
	v_div_fixup_f32 v19, v19, v4, v25
	v_div_fmas_f32 v25, v27, v47, v57
	v_mul_f32_e32 v59, v35, v49
	v_div_scale_f32 v37, s5, v15, v4, v15
	v_fmac_f32_e32 v58, v67, v48
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fixup_f32 v22, v25, v4, v22
	v_rcp_f32_e32 v25, v43
	v_fma_f32 v68, -v34, v59, v35
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v28, -v32, v58, v33
	v_div_scale_f32 v41, s7, v12, v5, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v60, v37, v50 :: v_dual_fmac_f32 v59, v68, v49
	v_div_fixup_f32 v16, v20, v4, v16
	v_div_fmas_f32 v20, v28, v48, v58
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v30, -v43, v25, 1.0
	v_div_scale_f32 v33, null, v5, v5, v3
	v_fma_f32 v29, -v34, v59, v35
	v_div_fixup_f32 v13, v20, v4, v13
	v_fma_f32 v20, -v38, v61, v39
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v34, v33
	v_fmac_f32_e32 v25, v30, v25
	v_div_scale_f32 v30, s1, v11, v5, v11
	v_mul_f32_e32 v27, v41, v52
	v_fma_f32 v69, -v36, v60, v37
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v61, v20, v51
	v_div_fixup_f32 v21, v21, v4, v24
	v_fma_f32 v20, -v40, v27, v41
	v_div_fmas_f32 v24, v29, v49, v59
	v_fmac_f32_e32 v60, v69, v50
	v_fma_f32 v31, -v38, v61, v39
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v27, v20, v52
	v_div_fixup_f32 v14, v24, v4, v14
	v_fma_f32 v24, -v36, v60, v37
	v_div_scale_f32 v28, s0, v18, v5, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v40, v27, v41
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v24, v24, v50, v60
	s_mov_b32 vcc_lo, s6
	v_mul_f32_e32 v29, v28, v53
	v_div_fmas_f32 v31, v31, v51, v61
	s_mov_b32 vcc_lo, s7
	v_div_fixup_f32 v15, v24, v4, v15
	v_div_fmas_f32 v27, v32, v52, v27
	v_fma_f32 v20, -v42, v29, v28
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v4, v31, v4, v17
	v_div_scale_f32 v24, null, v5, v5, v6
	v_div_fixup_f32 v12, v27, v5, v12
	v_fma_f32 v27, -v33, v34, 1.0
	v_fmac_f32_e32 v29, v20, v53
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v12, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v34, v27, v34
	v_mul_f32_e32 v20, v30, v25
	v_fma_f32 v28, -v42, v29, v28
	v_div_scale_f32 v27, null, v5, v5, v8
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v4, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v32, -v43, v20, v30
	v_div_fmas_f32 v28, v28, v53, v29
	s_mov_b32 vcc_lo, s1
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v20, v32, v25
	v_div_fixup_f32 v17, v28, v5, v18
	v_div_scale_f32 v32, null, v5, v5, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v18, -v43, v20, v30
	v_rcp_f32_e32 v30, v27
	v_rcp_f32_e32 v36, v32
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v18, v18, v25, v20
	v_div_scale_f32 v25, null, v5, v5, v7
	v_div_scale_f32 v28, vcc_lo, v3, v5, v3
	v_rcp_f32_e32 v20, v24
	v_rcp_f32_e32 v29, v25
	v_div_fixup_f32 v11, v18, v5, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v31, v28, v34
	v_fma_f32 v38, -v27, v30, 1.0
	v_fma_f32 v40, -v32, v36, 1.0
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v37, -v33, v31, v28
	v_fmac_f32_e32 v30, v38, v30
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v18, -v24, v20, 1.0
	v_fma_f32 v35, -v25, v29, 1.0
	v_div_scale_f32 v38, s2, v8, v5, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v31, v37, v34 :: v_dual_fmac_f32 v20, v18, v20
	v_div_scale_f32 v18, s0, v6, v5, v6
	v_fmac_f32_e32 v29, v35, v29
	v_div_scale_f32 v35, s1, v7, v5, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v28, -v33, v31, v28
	v_mul_f32_e32 v42, v38, v30
	v_mul_f32_e32 v39, v18, v20
	v_mul_f32_e32 v41, v35, v29
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v28, v28, v34, v31
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_fma_f32 v37, -v24, v39, v18
	v_fma_f32 v33, -v25, v41, v35
	v_fmac_f32_e32 v36, v40, v36
	v_div_scale_f32 v40, s3, v10, v5, v10
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v39, v37, v20
	v_fmac_f32_e32 v41, v33, v29
	v_fma_f32 v37, -v27, v42, v38
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v43, v40, v36
	v_fma_f32 v18, -v24, v39, v18
	v_fmac_f32_e32 v42, v37, v30
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v12, v12, s0, 0x40e00000
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v24, -v32, v43, v40
	v_div_fmas_f32 v18, v18, v20, v39
	v_fma_f32 v20, -v25, v41, v35
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v3, v28, v5, v3
	v_fmac_f32_e32 v43, v24, v36
	v_fma_f32 v24, -v27, v42, v38
	v_div_fixup_f32 v6, v18, v5, v6
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v21
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v12
	v_and_b32_e32 v12, 15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v25, -v32, v43, v40
	v_div_fmas_f32 v20, v20, v29, v41
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v24, v24, v30, v42
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v7, v20, v5, v7
	v_div_fmas_f32 v25, v25, v36, v43
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v8, v24, v5, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v25, v5, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v19
	v_rndne_f32_e32 v19, v22
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v4, v4, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v19, v19, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v5, v5, s0, 0x40e00000
	v_cvt_i32_f32_e32 v16, v16
	v_cvt_i32_f32_e32 v18, v18
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v19, v19
	v_cvt_i32_f32_e32 v20, v4
	v_cvt_i32_f32_e32 v17, v17
	v_cvt_i32_f32_e32 v24, v3
	v_cvt_i32_f32_e32 v27, v5
	v_and_b32_e32 v4, 15, v16
	v_and_b32_e32 v5, 15, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v18, 11, v0
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v16, 0x600, v92
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	v_cvt_i32_f32_e32 v22, v11
	v_cvt_i32_f32_e32 v25, v6
	v_cvt_i32_f32_e32 v7, v7
	v_and_b32_e32 v3, 15, v10
	v_and_b32_e32 v6, 15, v19
	v_and_b32_e32 v10, 15, v13
	v_and_b32_e32 v13, 15, v20
	v_and_b32_e32 v15, 15, v17
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 0x60, v0
	v_lshl_or_b32 v20, v91, 4, v16
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v24
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 0x3000, v18
	v_lshlrev_b32_e32 v24, 7, v0
	v_lshlrev_b32_e32 v28, 5, v89
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v8, v8
	v_and_b32_e32 v11, 15, v14
	v_and_b32_e32 v14, 15, v21
	v_and_b32_e32 v16, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v21, 7, v2
	v_xor_b32_e32 v22, v20, v19
	v_add_nc_u32_e32 v29, 0, v18
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v19, 15, v7
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v7, 0x3600, v24, v28
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 15, v8
	v_and_b32_e32 v18, 15, v25
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v8, v29, v21, v22
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_xad_u32 v22, v7, v9, 0
	ds_store_b128 v8, v[3:6]
	ds_store_b128 v8, v[14:17] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[3:6], v22
	ds_load_b128 v[14:17], v22 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v8, v[10:13]
	ds_store_b128 v8, v[18:21] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v22
	ds_load_b128 v[18:21], v22 offset:2048
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v11.h, 0
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v11.l, v23.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v12.l, v26.h
	v_mov_b16_e32 v12.h, v11.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v11, v12, vcc_lo
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v13, v14, 4, v3
	v_lshl_or_b32 v14, v15, 4, v4
	v_lshl_or_b32 v4, v16, 4, v5
	v_lshl_or_b32 v5, v17, 4, v6
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, s24, 7, v1
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v6, v18, 4, v7
	v_lshl_or_b32 v7, v19, 4, v8
	v_lshl_or_b32 v8, v20, 4, v9
	v_lshl_or_b32 v9, v21, 4, v10
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v10, s26, v88
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v4.l
	v_lshlrev_b16 v1.l, 8, v5.l
	.loc	1 87 14 is_stmt 1               ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v5, v0, 31, s26
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v9.l
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v10, s0, v[3:4]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s25, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v14.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v13.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v8.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v9, v5, s0
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v2, 0, 16
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v6.l
	v_lshlrev_b16 v2.l, 8, v7.l
	v_or_b16 v4.l, v0.l, v1.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v6, v5, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v9, s24, 1
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v1, v6, v11, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v90
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[20:23], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	buffer_store_b16 v1, v0, s[20:23], 0 offen
.Ltmp44:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp45:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
		.amdhsa_next_free_vgpr 116
		.amdhsa_next_free_sgpr 29
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_vgpr, 116
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9076
; TotalNumSgprs: 31
; NumVgprs: 116
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 14
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 116
; Occupancy: 12
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
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	1                               ; Abbrev [1] 0xb:0x8a DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x64 DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x59:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp12                         ; DW_AT_low_pc
	.long	.Ltmp13-.Ltmp12                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x6d:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x79:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x85:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
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
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_evenk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     116
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
