	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk               ; -- Begin function amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.p2align	8
	.type	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk,@function
amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk:                      ; @amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
.Lfunc_begin0:
	.file	1 "<repo>/scripts" "generate_amdgcn.py"
	.loc	1 106 0                         ; generate_amdgcn.py:106:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x30
	s_load_b128 s[12:15], s[0:1], 0x0
.Ltmp0:
	.loc	1 117 16 prologue_end           ; generate_amdgcn.py:117:16
	s_abs_i32 s7, s2
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v26, 3, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v35, 3, v0
	.loc	1 126 32                        ; generate_amdgcn.py:126:32
	v_lshrrev_b32_e32 v81, 4, v0
	v_and_b32_e32 v82, 15, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshrrev_b32_e32 v28, 1, v0
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_and_b32_e32 v34, 56, v26
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v36, 64, v35
	v_or_b32_e32 v40, 0xc0, v35
	.loc	1 128 14                        ; generate_amdgcn.py:128:14
	v_lshlrev_b32_e32 v33, 2, v82
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshrrev_b32_e32 v29, 2, v0
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_and_b32_e32 v28, 56, v28
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_lshlrev_b32_e32 v84, 2, v0
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_b32_e32 v83, 0x1e0, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v29, 56, v29
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xor_b32_e32 v26, v26, v28
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:115:17 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s25, 0xff
.Ltmp2:
	.loc	2 43 13 is_stmt 0               ; standard.py:43:13 @[ generate_amdgcn.py:114:17 ]
	s_add_i32 s8, s24, 31
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
	s_lshr_b32 s10, s10, 27
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
	s_ashr_i32 s8, s8, 5
.Ltmp11:
	.loc	1 117 16 is_stmt 1              ; generate_amdgcn.py:117:16
	s_abs_i32 s5, s4
	s_mov_b64 s[16:17], s[14:15]
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s9, 0, s5
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	v_rcp_iflag_f32_e32 v1, s6
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v28, v84, v29
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v44, 0, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v45, 0, v28
	.loc	1 117 16                        ; generate_amdgcn.py:117:16
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
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 119 31                        ; generate_amdgcn.py:119:31
	s_sub_i32 s6, s8, s5
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_mul_i32 s4, s5, s4
	.loc	1 119 20                        ; generate_amdgcn.py:119:20
	s_min_i32 s6, s6, 1
	.loc	1 120 29                        ; generate_amdgcn.py:120:29
	s_sub_i32 s4, s2, s4
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_abs_i32 s7, s6
	s_cvt_f32_u32 s8, s7
	s_sub_i32 s10, 0, s7
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s8
	s_load_b32 s8, s[0:1], 0x38
	v_readfirstlane_b32 s9, v1
	s_mul_f32 s9, s9, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s9, s9
	s_mul_i32 s10, s10, s9
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s2, s9, s10
	s_abs_i32 s10, s4
	s_add_i32 s9, s9, s2
	s_mul_hi_u32 s2, s10, s9
	s_xor_b32 s9, s4, s6
	s_mul_i32 s11, s2, s7
	s_ashr_i32 s23, s9, 31
	s_sub_i32 s9, s10, s11
	s_add_i32 s10, s2, 1
	s_sub_i32 s11, s9, s7
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s2, s10, s2
	s_cselect_b32 s9, s11, s9
	s_add_i32 s10, s2, 1
	s_cmp_ge_u32 s9, s7
	s_cselect_b32 s2, s10, s2
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_waitcnt lgkmcnt(0)
	s_lshr_b32 s7, s8, 31
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_xor_b32 s28, s2, s23
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_add_i32 s2, s8, s7
	.loc	1 121 13                        ; generate_amdgcn.py:121:13
	s_sub_i32 s24, s28, s23
	.loc	1 135 23                        ; generate_amdgcn.py:135:23
	s_lshl_b32 s21, s3, 6
	.loc	1 123 22                        ; generate_amdgcn.py:123:22
	s_ashr_i32 s22, s2, 1
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_mul_i32 s3, s24, s6
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_mul_lo_u32 v7, s22, v81
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[1:2], null, s22, v35, v[34:35]
	.loc	1 120 28                        ; generate_amdgcn.py:120:28
	s_sub_i32 s4, s4, s3
	.loc	1 127 14                        ; generate_amdgcn.py:127:14
	s_lshl_b32 s27, s24, 8
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v6, s21, v34
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[2:3], null, s22, v36, v[34:35]
	.loc	1 120 13                        ; generate_amdgcn.py:120:13
	s_add_i32 s4, s4, s5
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	s_add_i32 s3, s27, s25
	.loc	1 126 14                        ; generate_amdgcn.py:126:14
	s_lshl_b32 s26, s4, 5
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_mad_u64_u32 v[3:4], null, s22, v40, v[34:35]
	s_mul_i32 s6, s27, s22
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	s_mul_i32 s5, s3, s22
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_gt_i32 s8, 1
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	v_or_b32_e32 v5, s21, v33
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	s_mul_i32 s4, s26, s22
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_gt_i32_e64 s2, s22, v6
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cselect_b32 s20, -1, 0
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	s_add_i32 s6, s6, s21
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	s_add_i32 s5, s5, s21
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_lshl_add_u32 v4, s22, 7, v1
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add3_u32 v9, v7, v33, s4
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v7, s6, v1
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v1, s5, v1
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v6, s6, v2
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v2, s5, v2
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_gt_i32_e32 vcc_lo, s22, v5
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 s2, s20, s2
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v5, s6, v3
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v3, s5, v3
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v8, s6, v4
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v4, s5, v4
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v10, s21, v9
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e64 v11, 0x80000000, v1, s2
	v_cndmask_b32_e64 v12, 0x80000000, v2, s2
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e64 v14, 0x80000000, v7, s2
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_and_b32 vcc_lo, s20, vcc_lo
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e64 v16, 0x80000000, v6, s2
	v_cndmask_b32_e64 v20, 0x80000000, v5, s2
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e64 v24, 0x80000000, v3, s2
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e64 v18, 0x80000000, v8, s2
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e64 v22, 0x80000000, v4, s2
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e32 v23, 0x80000000, v10, vcc_lo
	s_and_b32 s13, s13, 0xffff
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	s_clause 0x5
	buffer_load_b64 v[10:11], v11, s[16:19], 0 offen
	buffer_load_b64 v[12:13], v12, s[16:19], 0 offen
	buffer_load_b64 v[14:15], v14, s[16:19], 0 offen
	buffer_load_b64 v[16:17], v16, s[16:19], 0 offen
	buffer_load_b64 v[18:19], v18, s[16:19], 0 offen
	buffer_load_b64 v[20:21], v20, s[16:19], 0 offen
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v27, v23, s[12:15], 0 offen
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	s_clause 0x1
	buffer_load_b64 v[22:23], v22, s[16:19], 0 offen
	buffer_load_b64 v[24:25], v24, s[16:19], 0 offen
	s_mov_b32 s2, 0
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmpk_gt_i32 s8, 0x81
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(5)
	ds_store_2addr_stride64_b64 v44, v[14:15], v[16:17] offset1:8
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_store_2addr_stride64_b64 v44, v[10:11], v[12:13] offset0:32 offset1:40
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(3)
	ds_store_2addr_stride64_b64 v44, v[18:19], v[20:21] offset0:16 offset1:24
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt vmcnt(2)
	ds_store_b32 v45, v27 offset:32768
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v44, v[22:23], v[24:25] offset0:48 offset1:56
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_3
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_and_b32_e32 v10, 56, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v48, v82, 6, v10
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_lshl_or_b32 v46, v83, 5, v48
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_xor_b32_e32 v51, 8, v48
	v_xor_b32_e32 v50, 16, v48
	v_xor_b32_e32 v49, 24, v48
	v_xor_b32_e32 v52, 32, v48
	v_xor_b32_e32 v53, 40, v48
	v_xor_b32_e32 v54, 48, v48
	v_xor_b32_e32 v55, 56, v48
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_xor_b32_e32 v47, 8, v46
	v_xor_b32_e32 v85, 16, v46
	v_xor_b32_e32 v86, 24, v46
	v_xor_b32_e32 v87, 32, v46
	v_xor_b32_e32 v88, 40, v46
	v_xor_b32_e32 v89, 48, v46
	v_xor_b32_e32 v90, 56, v46
	s_and_not1_b32 vcc_lo, exec_lo, s2
	s_mov_b32 s4, 0
	s_cbranch_vccz .LBB0_4
; %bb.2:
	.loc	1 0 22 is_stmt 0                ; generate_amdgcn.py:0:22
	v_mov_b32_e32 v17, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v18, v17
	v_mov_b32_e32 v19, v17
	v_mov_b32_e32 v20, v17
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v22, v17
	v_mov_b32_e32 v23, v17
	v_mov_b32_e32 v24, v17
	v_dual_mov_b32 v1, v17 :: v_dual_mov_b32 v4, v20
	v_dual_mov_b32 v13, v17 :: v_dual_mov_b32 v2, v18
	v_dual_mov_b32 v14, v17 :: v_dual_mov_b32 v3, v19
	v_dual_mov_b32 v5, v21 :: v_dual_mov_b32 v6, v22
	v_dual_mov_b32 v7, v23 :: v_dual_mov_b32 v8, v24
	v_mov_b32_e32 v15, v17
	v_mov_b32_e32 v16, v17
	v_mov_b32_e32 v29, v17
	v_mov_b32_e32 v30, v17
	v_mov_b32_e32 v31, v17
	v_mov_b32_e32 v32, v17
	v_mov_b32_e32 v9, v17
	v_mov_b32_e32 v10, v17
	v_mov_b32_e32 v11, v17
	v_mov_b32_e32 v12, v17
	v_mov_b32_e32 v25, v17
	v_mov_b32_e32 v26, v17
	v_mov_b32_e32 v27, v17
	v_mov_b32_e32 v28, v17
	s_branch .LBB0_7
.LBB0_3:
                                        ; implicit-def: $vgpr84
                                        ; implicit-def: $vgpr48
                                        ; implicit-def: $vgpr51
                                        ; implicit-def: $vgpr50
                                        ; implicit-def: $vgpr49
                                        ; implicit-def: $vgpr52
                                        ; implicit-def: $vgpr53
                                        ; implicit-def: $vgpr54
                                        ; implicit-def: $vgpr55
                                        ; implicit-def: $vgpr46
                                        ; implicit-def: $vgpr47
                                        ; implicit-def: $vgpr85
                                        ; implicit-def: $vgpr86
                                        ; implicit-def: $vgpr87
                                        ; implicit-def: $vgpr88
                                        ; implicit-def: $vgpr89
                                        ; implicit-def: $vgpr90
	s_mov_b32 s4, 0
.LBB0_4:                                ; %.lr.ph
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v56, s22, v33
	.loc	1 135 18                        ; generate_amdgcn.py:135:18
	s_add_i32 s2, s21, 64
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	v_sub_nc_u32_e32 v57, s22, v34
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s5, s4
	s_mov_b32 s6, s4
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v56
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_mov_b32 s7, s4
	s_mov_b32 s8, s4
	s_mov_b32 s9, s4
	s_mov_b32 s10, s4
	s_mov_b32 s11, s4
	.loc	1 154 30                        ; generate_amdgcn.py:154:30
	v_add_nc_u32_e32 v9, s2, v9
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v6, 64, v6
	.loc	1 156 22 is_stmt 0              ; generate_amdgcn.py:156:22
	s_mov_b32 s18, s14
	s_mov_b32 s19, s15
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_dual_cndmask_b32 v9, 0x80000000, v9 :: v_dual_lshlrev_b32 v84, 2, v0
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s2, v57
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v7, 64, v7
.Ltmp12:
	.loc	2 43 13                         ; standard.py:43:13 @[ generate_amdgcn.py:133:32 ]
	s_add_i32 s2, s22, 63
.Ltmp13:
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v39, v9, s[12:15], 0 offen
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v6, 0x80000000, v6, vcc_lo
	v_dual_cndmask_b32 v7, 0x80000000, v7 :: v_dual_add_nc_u32 v8, 64, v8
	.loc	1 156 30 is_stmt 0              ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v5, 64, v5
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v8, 0x80000000, v8, vcc_lo
	v_dual_cndmask_b32 v5, 0x80000000, v5 :: v_dual_add_nc_u32 v2, 64, v2
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v1, 64, v1
.Ltmp14:
	.loc	2 43 12                         ; standard.py:43:12 @[ generate_amdgcn.py:133:32 ]
	s_lshr_b32 s2, s2, 6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp15:
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	v_dual_cndmask_b32 v1, 0x80000000, v1 :: v_dual_add_nc_u32 v4, 64, v4
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v3, 64, v3
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_max_u32 s2, s2, 2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cmp_eq_u32 s2, 2
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x7
	buffer_load_b64 v[37:38], v7, s[16:19], 0 offen
	buffer_load_b64 v[41:42], v6, s[16:19], 0 offen
	buffer_load_b64 v[113:114], v8, s[16:19], 0 offen
	buffer_load_b64 v[115:116], v5, s[16:19], 0 offen
	buffer_load_b64 v[117:118], v1, s[16:19], 0 offen
	buffer_load_b64 v[119:120], v2, s[16:19], 0 offen
	buffer_load_b64 v[121:122], v4, s[16:19], 0 offen
	buffer_load_b64 v[123:124], v3, s[16:19], 0 offen
	v_and_b32_e32 v1, 56, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v48, v82, 6, v1
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v1, s4 :: v_dual_mov_b32 v6, s9
	v_dual_mov_b32 v5, s8 :: v_dual_mov_b32 v2, s5
	v_lshl_or_b32 v46, v83, 5, v48
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v58, 0, v48
	v_xor_b32_e32 v51, 8, v48
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_mov_b32_e32 v7, s10
	v_xor_b32_e32 v50, 16, v48
	v_add_nc_u32_e32 v59, 0, v46
	v_xor_b32_e32 v47, 8, v46
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[69:72], v58 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[73:76], v59 offset1:32
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v60, 0, v51
	v_xor_b32_e32 v85, 16, v46
	v_add_nc_u32_e32 v62, 0, v47
	v_add_nc_u32_e32 v61, 0, v50
	ds_load_2addr_stride64_b64 v[77:80], v60 offset0:64 offset1:66
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[89:92], v62 offset1:32
	v_add_nc_u32_e32 v64, 0, v85
	v_xor_b32_e32 v49, 24, v48
	v_xor_b32_e32 v52, 32, v48
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[93:96], v61 offset0:64 offset1:66
	.loc	1 0 0                           ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[97:100], v64 offset1:32
	v_xor_b32_e32 v86, 24, v46
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v3, s6 :: v_dual_mov_b32 v8, s11
	v_dual_mov_b32 v4, s7 :: v_dual_add_nc_u32 v63, 0, v49
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v65, 0, v52
	v_xor_b32_e32 v87, 32, v46
	v_add_nc_u32_e32 v67, 0, v86
	v_xor_b32_e32 v53, 40, v48
	v_xor_b32_e32 v88, 40, v46
	ds_load_2addr_stride64_b64 v[101:104], v63 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[71:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[71:72], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[105:108], v65 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[73:76], v67 offset1:32
	v_add_nc_u32_e32 v68, 0, v87
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v66, 0, v53
	v_add_nc_u32_e32 v69, 0, v88
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[89:90], v[77:78], v[25:32] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[91:92], v[77:78], v[9:16] neg_lo:[1,1,0]
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[17:24], v[89:90], v[79:80], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[91:92], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[77:80], v68 offset1:32
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[109:112], v66 offset0:64 offset1:66
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[97:98], v[93:94], v[25:32] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[99:100], v[93:94], v[9:16] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v69 offset1:32
	v_xor_b32_e32 v54, 48, v48
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[17:24], v[97:98], v[95:96], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[99:100], v[95:96], v[1:8] neg_lo:[1,1,0]
	v_xor_b32_e32 v55, 56, v48
	v_xor_b32_e32 v89, 48, v46
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v70, 0, v54
	v_xor_b32_e32 v90, 56, v46
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v71, 0, v55
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[73:74], v[101:102], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[73:74], v[103:104], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[75:76], v[101:102], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[75:76], v[103:104], v[1:8] neg_lo:[1,1,0]
	v_add_nc_u32_e32 v72, 0, v89
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[95:98], v70 offset0:64 offset1:66
	v_add_nc_u32_e32 v73, 0, v90
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[77:78], v[105:106], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[77:78], v[107:108], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[79:80], v[105:106], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[79:80], v[107:108], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[74:77], v71 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[99:102], v72 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[109:110], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[111:112], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[109:110], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[111:112], v[1:8] neg_lo:[1,1,0]
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v73 offset1:32
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b32 v45, v39 offset:32768
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(6)
	ds_store_2addr_stride64_b64 v44, v[37:38], v[41:42] offset1:8
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b64 v44, v[113:114], v[115:116] offset0:16 offset1:24
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v44, v[117:118], v[119:120] offset0:32 offset1:40
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v44, v[121:122], v[123:124] offset0:48 offset1:56
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[25:32], v[99:100], v[95:96], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[99:100], v[97:98], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[101:102], v[95:96], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[101:102], v[97:98], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_7
; %bb.5:                                ; %.peel.next
	s_lshl_b32 s4, s28, 8
	s_lshl_b32 s6, s23, 8
	s_add_i32 s5, s25, s4
	v_or_b32_e32 v41, s4, v36
	v_add_nc_u32_e32 v37, s5, v35
	v_or_b32_e32 v35, s4, v35
	v_add_nc_u32_e32 v38, s5, v36
	v_add_nc_u32_e32 v39, s5, v40
	v_subrev_nc_u32_e32 v41, s6, v41
	v_subrev_nc_u32_e32 v37, s6, v37
	v_subrev_nc_u32_e32 v42, s6, v35
	v_subrev_nc_u32_e32 v38, s6, v38
	v_subrev_nc_u32_e32 v39, s6, v39
	v_add_nc_u32_e32 v74, s26, v81
	v_mad_u64_u32 v[35:36], null, s22, v37, v[34:35]
	v_add_nc_u32_e32 v43, 0x80, v37
	s_add_i32 s5, s2, -2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mad_u64_u32 v[36:37], null, s22, v38, v[34:35]
	v_mad_u64_u32 v[37:38], null, s22, v43, v[34:35]
	v_or_b32_e32 v43, s4, v40
	v_mad_u64_u32 v[38:39], null, s22, v39, v[34:35]
	v_mad_u64_u32 v[39:40], null, s22, v42, v[34:35]
	v_or_b32_e32 v42, 0x80, v42
	s_delay_alu instid0(VALU_DEP_4)
	v_subrev_nc_u32_e32 v43, s6, v43
	v_mad_u64_u32 v[40:41], null, s22, v41, v[34:35]
	s_add_i32 s4, s21, 0x80
	v_mad_u64_u32 v[41:42], null, s22, v42, v[34:35]
	v_mad_u64_u32 v[42:43], null, s22, v43, v[34:35]
	v_mad_u64_u32 v[33:34], null, s22, v74, v[33:34]
.LBB0_6:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	v_add_nc_u32_e32 v43, s4, v33
	.loc	1 136 23                        ; generate_amdgcn.py:136:23
	v_cmp_lt_i32_e64 s2, s4, v56
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v34, s4, v39
	.loc	1 137 23                        ; generate_amdgcn.py:137:23
	v_cmp_lt_i32_e32 vcc_lo, s4, v57
	.loc	1 156 30                        ; generate_amdgcn.py:156:30
	v_add_nc_u32_e32 v78, s4, v40
	v_add_nc_u32_e32 v79, s4, v41
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	v_cndmask_b32_e64 v43, 0x80000000, v43, s2
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_add_nc_u32_e32 v80, s4, v42
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v95, s4, v35
	v_add_nc_u32_e32 v96, s4, v36
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v34, 0x80000000, v34, vcc_lo
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	buffer_load_b32 v43, v43, s[12:15], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[74:77], v58 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v59 offset1:32
	.loc	1 133 9 is_stmt 1               ; generate_amdgcn.py:133:9
	s_add_i32 s5, s5, -1
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[74:77], v60 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v62 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[74:77], v61 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v64 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[74:77], v63 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v67 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[74:77], v65 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v68 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[74:77], v66 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v69 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[74:77], v70 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v72 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	ds_load_2addr_stride64_b64 v[74:77], v71 offset0:64 offset1:66
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[91:94], v73 offset1:32
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[91:92], v[74:75], v[25:32] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[93:94], v[74:75], v[9:16] neg_lo:[1,1,0]
	.loc	1 163 25                        ; generate_amdgcn.py:163:25
	v_add_nc_u32_e32 v74, s4, v37
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_add_nc_u32_e32 v75, s4, v38
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[17:24], v[91:92], v[76:77], v[17:24] neg_lo:[1,1,0]
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[1:8], v[93:94], v[76:77], v[1:8] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	v_cndmask_b32_e32 v76, 0x80000000, v78, vcc_lo
	v_dual_cndmask_b32 v78, 0x80000000, v79 :: v_dual_cndmask_b32 v97, 0x80000000, v74
	v_dual_cndmask_b32 v80, 0x80000000, v80 :: v_dual_cndmask_b32 v99, 0x80000000, v75
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	v_cndmask_b32_e32 v93, 0x80000000, v95, vcc_lo
	v_cndmask_b32_e32 v95, 0x80000000, v96, vcc_lo
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_clause 0x7
	buffer_load_b64 v[74:75], v34, s[16:19], 0 offen
	buffer_load_b64 v[76:77], v76, s[16:19], 0 offen
	buffer_load_b64 v[78:79], v78, s[16:19], 0 offen
	buffer_load_b64 v[91:92], v80, s[16:19], 0 offen
	buffer_load_b64 v[93:94], v93, s[16:19], 0 offen
	buffer_load_b64 v[95:96], v95, s[16:19], 0 offen
	buffer_load_b64 v[97:98], v97, s[16:19], 0 offen
	buffer_load_b64 v[99:100], v99, s[16:19], 0 offen
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_add_i32 s4, s4, 64
	s_cmp_lg_u32 s5, 0
	.loc	1 154 22                        ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(8)
	ds_store_b32 v45, v43 offset:32768
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	s_waitcnt vmcnt(4)
	ds_store_2addr_stride64_b64 v44, v[78:79], v[91:92] offset0:16 offset1:24
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	s_waitcnt vmcnt(2)
	ds_store_2addr_stride64_b64 v44, v[93:94], v[95:96] offset0:32 offset1:40
	s_waitcnt vmcnt(0)
	ds_store_2addr_stride64_b64 v44, v[97:98], v[99:100] offset0:48 offset1:56
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_store_2addr_stride64_b64 v44, v[74:75], v[76:77] offset1:8
	.loc	1 133 9                         ; generate_amdgcn.py:133:9
	s_cbranch_scc1 .LBB0_6
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 9 is_stmt 0                 ; generate_amdgcn.py:0:9
	v_dual_mov_b32 v40, v32 :: v_dual_add_nc_u32 v33, 0, v48
	v_dual_mov_b32 v39, v31 :: v_dual_add_nc_u32 v34, 0, v51
	.loc	1 154 22 is_stmt 1              ; generate_amdgcn.py:154:22
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v38, v30 :: v_dual_add_nc_u32 v35, 0, v50
	s_barrier
	ds_load_2addr_stride64_b64 v[77:80], v33 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[61:64], v34 offset0:64 offset1:66
	v_add_nc_u32_e32 v33, 0, v49
	v_dual_mov_b32 v37, v29 :: v_dual_add_nc_u32 v34, 0, v52
	ds_load_2addr_stride64_b64 v[57:60], v35 offset0:64 offset1:66
	v_add_nc_u32_e32 v35, 0, v53
	ds_load_2addr_stride64_b64 v[69:72], v33 offset0:64 offset1:66
	v_add_nc_u32_e32 v33, 0, v55
	v_add_nc_u32_e32 v36, 0, v54
	v_add_nc_u32_e32 v92, 0, v47
	v_add_nc_u32_e32 v93, 0, v46
	v_mov_b32_e32 v48, v24
	ds_load_2addr_stride64_b64 v[73:76], v34 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[65:68], v35 offset0:64 offset1:66
	ds_load_2addr_stride64_b64 v[49:52], v36 offset0:64 offset1:66
	s_load_b256 s[12:19], s[0:1], 0x10
	v_mov_b32_e32 v46, v22
	.loc	1 0 0 is_stmt 0                 ; generate_amdgcn.py:0
	ds_load_2addr_stride64_b64 v[53:56], v33 offset0:64 offset1:66
	.loc	1 159 23 is_stmt 1              ; generate_amdgcn.py:159:23
	v_cndmask_b32_e64 v34, 0, 1, s20
	v_add_nc_u32_e32 v89, 0, v89
	v_add_nc_u32_e32 v90, 0, v90
	v_dual_mov_b32 v47, v23 :: v_dual_add_nc_u32 v88, 0, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u32_e64 s0, 1, v34
	v_dual_mov_b32 v36, v28 :: v_dual_add_nc_u32 v87, 0, v87
	v_mov_b32_e32 v44, v20
	v_dual_mov_b32 v45, v21 :: v_dual_add_nc_u32 v86, 0, v86
	v_dual_mov_b32 v42, v18 :: v_dual_add_nc_u32 v91, 0, v85
	v_dual_mov_b32 v35, v27 :: v_dual_mov_b32 v34, v26
	v_mov_b32_e32 v33, v25
	v_mov_b32_e32 v43, v19
	v_mov_b32_e32 v41, v17
	s_and_not1_b32 vcc_lo, exec_lo, s20
	s_cbranch_vccnz .LBB0_9
; %bb.8:
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[94:95], v93
	ds_load_b64 v[96:97], v92
	ds_load_b64 v[98:99], v91
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_dual_mov_b32 v40, v32 :: v_dual_mov_b32 v39, v31
	v_dual_mov_b32 v38, v30 :: v_dual_mov_b32 v37, v29
	v_dual_mov_b32 v36, v28 :: v_dual_mov_b32 v35, v27
	v_dual_mov_b32 v34, v26 :: v_dual_mov_b32 v33, v25
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[100:101], v86
	ds_load_b64 v[102:103], v87
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[94:95], v[77:78], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[94:95], v[79:80], v[17:24] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[94:95], v88
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[61:62], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[96:97], v[63:64], v[41:48] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[96:97], v89
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[57:58], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[59:60], v[41:48] neg_lo:[1,1,0]
	.loc	1 156 22                        ; generate_amdgcn.py:156:22
	ds_load_b64 v[98:99], v90
	.loc	1 159 23                        ; generate_amdgcn.py:159:23
	v_wmma_i32_16x16x16_iu4 v[33:40], v[100:101], v[69:70], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[100:101], v[71:72], v[41:48] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[102:103], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[102:103], v[75:76], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[94:95], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[94:95], v[67:68], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[96:97], v[49:50], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[96:97], v[51:52], v[41:48] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[33:40], v[98:99], v[53:54], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[98:99], v[55:56], v[41:48] neg_lo:[1,1,0]
.LBB0_9:
	.loc	1 0 23 is_stmt 0                ; generate_amdgcn.py:0:23
	v_and_b32_e32 v85, 0x1f0, v0
	.loc	1 167 32 is_stmt 1              ; generate_amdgcn.py:167:32
	s_and_b32 vcc_lo, exec_lo, s0
	s_cbranch_vccnz .LBB0_11
; %bb.10:
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_load_b64 v[17:18], v93 offset:16384
	ds_load_b64 v[19:20], v92 offset:16384
	ds_load_b64 v[21:22], v91 offset:16384
	ds_load_b64 v[23:24], v86 offset:16384
	ds_load_b64 v[25:26], v87 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[79:80], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_load_b64 v[17:18], v88 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[61:62], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[63:64], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_load_b64 v[19:20], v89 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[57:58], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[59:60], v[1:8] neg_lo:[1,1,0]
	.loc	1 162 31                        ; generate_amdgcn.py:162:31
	ds_load_b64 v[21:22], v90 offset:16384
	.loc	1 167 32                        ; generate_amdgcn.py:167:32
	v_wmma_i32_16x16x16_iu4 v[9:16], v[23:24], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[23:24], v[71:72], v[1:8] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[25:26], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[25:26], v[75:76], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[17:18], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[17:18], v[67:68], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[19:20], v[49:50], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[19:20], v[51:52], v[1:8] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_wmma_i32_16x16x16_iu4 v[9:16], v[21:22], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[21:22], v[55:56], v[1:8] neg_lo:[1,1,0]
	s_branch .LBB0_12
.LBB0_11:
	.loc	1 0 32 is_stmt 0                ; generate_amdgcn.py:0:32
	v_dual_mov_b32 v40, v32 :: v_dual_mov_b32 v39, v31
	v_dual_mov_b32 v36, v28 :: v_dual_mov_b32 v35, v27
	v_dual_mov_b32 v48, v24 :: v_dual_mov_b32 v47, v23
	v_dual_mov_b32 v38, v30 :: v_dual_mov_b32 v37, v29
	v_dual_mov_b32 v34, v26 :: v_dual_mov_b32 v33, v25
	v_dual_mov_b32 v46, v22 :: v_dual_mov_b32 v45, v21
	v_dual_mov_b32 v44, v20 :: v_dual_mov_b32 v43, v19
	v_dual_mov_b32 v42, v18 :: v_dual_mov_b32 v41, v17
.LBB0_12:                               ; %._crit_edge13
	.loc	1 169 22 is_stmt 1              ; generate_amdgcn.py:169:22
	v_or_b32_e32 v18, s26, v82
	.loc	1 169 14 is_stmt 0              ; generate_amdgcn.py:169:14
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, s13, 0xffff
	s_mov_b32 s23, 0x31027000
	s_mov_b32 s22, 0x7ffffffe
	s_mov_b32 s20, s12
	.loc	1 169 22                        ; generate_amdgcn.py:169:22
	v_lshlrev_b32_e32 v18, 1, v18
	.loc	1 127 32 is_stmt 1              ; generate_amdgcn.py:127:32
	v_lshrrev_b32_e32 v17, 1, v83
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v55, v2
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v41, v41
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v11, v11
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	v_or_b32_e32 v25, 32, v18
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_and_or_b32 v17, v81, 1, v17
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v8, v8
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v33, v33
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_clause 0x1
	buffer_load_u16 v27, v18, s[20:23], 0 offen
	buffer_load_u16 v25, v25, s[20:23], 0 offen
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_and_b32 s21, s15, 0xffff
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v21, 10, v17
	v_or_b32_e32 v22, 8, v17
	v_or_b32_e32 v23, 6, v17
	v_or_b32_e32 v24, 2, v17
	v_or_b32_e32 v26, 4, v17
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v18, s27, v17
	.loc	1 127 32                        ; generate_amdgcn.py:127:32
	v_or_b32_e32 v19, 14, v17
	v_or_b32_e32 v20, 12, v17
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v28, s27, v24
	v_or_b32_e32 v29, s27, v26
	v_or_b32_e32 v30, s27, v23
	v_or_b32_e32 v31, s27, v22
	v_or_b32_e32 v32, s27, v21
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v17, s3, v17, 1
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_mov_b32 s20, s14
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v23, s3, v23, 1
	v_add_lshl_u32 v22, s3, v22, 1
	v_add_lshl_u32 v21, s3, v21, 1
	.loc	1 170 22                        ; generate_amdgcn.py:170:22
	v_or_b32_e32 v49, s27, v20
	v_or_b32_e32 v50, s27, v19
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_add_lshl_u32 v20, s3, v20, 1
	v_add_lshl_u32 v19, s3, v19, 1
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v10, v10
	v_cvt_f32_i32_e32 v7, v7
	v_cvt_f32_i32_e32 v6, v6
	v_cvt_f32_i32_e32 v5, v5
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v34, v34
	v_cvt_f32_i32_e32 v44, v44
	v_cvt_f32_i32_e32 v43, v43
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v12, v12
	v_cvt_f32_i32_e32 v15, v15
	v_cvt_f32_i32_e32 v13, v13
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v35, v35
	.loc	1 169 14                        ; generate_amdgcn.py:169:14
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v25, 16, v25
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v18, 1, v18
	buffer_load_u16 v51, v18, s[20:23], 0 offen
	v_lshlrev_b32_e32 v18, 1, v28
	v_lshlrev_b32_e32 v28, 1, v29
	v_lshlrev_b32_e32 v29, 1, v30
	v_lshlrev_b32_e32 v30, 1, v31
	v_lshlrev_b32_e32 v31, 1, v32
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	buffer_load_u16 v32, v17, s[20:23], 0 offen
	v_add_lshl_u32 v17, s3, v24, 1
	v_add_lshl_u32 v24, s3, v26, 1
	s_clause 0x6
	buffer_load_u16 v26, v17, s[20:23], 0 offen
	buffer_load_u16 v24, v24, s[20:23], 0 offen
	buffer_load_u16 v23, v23, s[20:23], 0 offen
	buffer_load_u16 v22, v22, s[20:23], 0 offen
	buffer_load_u16 v21, v21, s[20:23], 0 offen
	buffer_load_u16 v52, v20, s[20:23], 0 offen
	buffer_load_u16 v53, v19, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v20, v37
	v_cvt_f32_i32_e32 v37, v48
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v48, v3
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v2, 16, v32
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v23, 16, v23
	v_lshlrev_b32_e32 v26, 16, v26
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v32, 16, v52
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v17, 1, v49
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v21, 16, v21
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v19, 1, v50
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v52, v25, v2
	v_mul_f32_e32 v59, v25, v26
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_clause 0x6
	buffer_load_u16 v49, v18, s[20:23], 0 offen
	buffer_load_u16 v28, v28, s[20:23], 0 offen
	buffer_load_u16 v29, v29, s[20:23], 0 offen
	buffer_load_u16 v30, v30, s[20:23], 0 offen
	buffer_load_u16 v31, v31, s[20:23], 0 offen
	buffer_load_u16 v50, v17, s[20:23], 0 offen
	buffer_load_u16 v54, v19, s[20:23], 0 offen
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v19, v38
	v_cvt_f32_i32_e32 v38, v47
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v47, v1
	.loc	1 174 23                        ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v22, 16, v22
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v17, v40
	v_cvt_f32_i32_e32 v40, v45
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v45, v9
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v47, v52, v47
	.loc	1 175 25 is_stmt 0              ; generate_amdgcn.py:175:25
	v_dual_mul_f32 v56, v25, v22 :: v_dual_lshlrev_b32 v1, 16, v27
	.loc	1 174 23 is_stmt 1              ; generate_amdgcn.py:174:23
	v_lshlrev_b32_e32 v24, 16, v24
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v27, 16, v51
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	s_waitcnt vmcnt(7)
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v22, v1, v22 :: v_dual_lshlrev_b32 v51, 16, v53
	v_mul_f32_e32 v53, v1, v2
	v_mul_f32_e32 v58, v25, v24
	v_mul_f32_e32 v24, v1, v24
	.loc	1 168 15                        ; generate_amdgcn.py:168:15
	v_cvt_f32_i32_e32 v18, v39
	v_cvt_f32_i32_e32 v39, v46
	.loc	1 173 24                        ; generate_amdgcn.py:173:24
	v_cvt_f32_i32_e32 v46, v16
	v_cvt_f32_i32_e32 v16, v14
	v_cvt_f32_i32_e32 v14, v4
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v57, v25, v23
	.loc	1 175 13 is_stmt 0              ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v45, v53, v45
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v23, v1, v23
	v_mul_f32_e32 v26, v1, v26
.Ltmp16:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp17:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s17, 0xffff
.Ltmp18:
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v23, v23, v12
.Ltmp19:
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	s_mov_b32 s20, s16
.Ltmp20:
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v48, v58, v48
	v_mul_f32_e32 v26, v26, v10
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_mul_f32_e32 v10, 0xbfb8aa3b, v47
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v24, v24, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v10
	v_cndmask_b32_e64 v10, 0, 0x42800000, vcc_lo
	v_fmac_f32_e32 v10, 0xbfb8aa3b, v47
	s_delay_alu instid0(VALU_DEP_1)
	v_exp_f32_e32 v10, v10
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v29, 16, v29
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v4, 16, v50
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	s_waitcnt vmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_dual_mul_f32 v62, v25, v29 :: v_dual_lshlrev_b32 v9, 16, v54
	.loc	1 170 14                        ; generate_amdgcn.py:170:14
	v_lshlrev_b32_e32 v2, 16, v30
	v_lshlrev_b32_e32 v3, 16, v31
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v30, v25, v27
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v31, v25, v51
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v52, v25, v9
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v60, v25, v3 :: v_dual_lshlrev_b32 v49, 16, v49
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v50, v25, v32
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v27, v1, v27
	.loc	1 175 25                        ; generate_amdgcn.py:175:25
	v_mul_f32_e32 v51, v1, v51
	v_mul_f32_e32 v32, v1, v32
	v_mul_f32_e32 v54, v25, v21
	v_mul_f32_e32 v21, v1, v21
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v53, v25, v4 :: v_dual_mul_f32 v30, v30, v41
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v41, v59, v55
	v_dual_mul_f32 v55, v57, v14 :: v_dual_mul_f32 v8, v31, v8
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v31, v1, v49
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v11, 0xbfb8aa3b, v45 :: v_dual_mul_f32 v38, v53, v38
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v61, v25, v2 :: v_dual_lshlrev_b32 v28, 16, v28
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v7, v50, v7 :: v_dual_mul_f32 v16, v21, v16
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v29, v1, v29
	.loc	1 171 9 is_stmt 0               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v27, v27, v33
	.loc	1 175 13 is_stmt 1              ; generate_amdgcn.py:175:13
	v_mul_f32_e32 v21, v51, v46
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v33, v60, v39 :: v_dual_mul_f32 v46, 0xbfb8aa3b, v48
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cmp_gt_f32_e64 s0, 0xc2fc0000, v11
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v63, v25, v28
	v_dual_mul_f32 v25, v25, v49 :: v_dual_mul_f32 v6, v54, v6
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v5, v56, v5 :: v_dual_mul_f32 v28, v1, v28
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_mul_f32_e32 v49, 0xbfb8aa3b, v41
	v_cndmask_b32_e64 v11, 0, 0x42800000, s0
	v_cmp_gt_f32_e64 s2, 0xc2fc0000, v46
	.loc	1 175 13                        ; generate_amdgcn.py:175:13
	v_dual_mul_f32 v14, v22, v13 :: v_dual_mul_f32 v15, v32, v15
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v12, v25, v42 :: v_dual_mul_f32 v25, v63, v43
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v42, 0xbfb8aa3b, v6 :: v_dual_mul_f32 v13, v62, v44
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v32, v61, v40 :: v_dual_mul_f32 v37, v52, v37
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v44, 0xbfb8aa3b, v55 :: v_dual_mul_f32 v39, 0xbfb8aa3b, v8
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v22, v31, v34
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v40, 0xbfb8aa3b, v7 :: v_dual_mul_f32 v43, 0xbfb8aa3b, v5
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v28, v28, v35
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_mul_f32_e32 v34, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e64 s1, 0xc2fc0000, v49
	v_cndmask_b32_e64 v46, 0, 0x42800000, s2
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v45
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v29, v29, v36 :: v_dual_mul_f32 v36, 0xbfb8aa3b, v21
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_dual_mul_f32 v31, 0xbfb8aa3b, v23 :: v_dual_mul_f32 v52, 0xbfb8aa3b, v14
	v_dual_mul_f32 v35, 0xbfb8aa3b, v26 :: v_dual_mul_f32 v50, 0xbfb8aa3b, v15
	v_mul_f32_e32 v51, 0xbfb8aa3b, v16
	v_cndmask_b32_e64 v49, 0, 0x42800000, s1
	v_cmp_gt_f32_e64 s3, 0xc2fc0000, v44
	v_cmp_gt_f32_e64 s4, 0xc2fc0000, v43
	v_cmp_gt_f32_e64 s5, 0xc2fc0000, v42
	v_cmp_gt_f32_e64 s6, 0xc2fc0000, v40
	v_fmac_f32_e32 v46, 0xbfb8aa3b, v48
	v_exp_f32_e32 v11, v11
	v_cndmask_b32_e64 v44, 0, 0x42800000, s3
	v_cndmask_b32_e64 v43, 0, 0x42800000, s4
	v_cndmask_b32_e64 v42, 0, 0x42800000, s5
	v_cndmask_b32_e64 v40, 0, 0x42800000, s6
	v_cmp_gt_f32_e64 s7, 0xc2fc0000, v39
	v_cmp_gt_f32_e64 s8, 0xc2fc0000, v35
	v_cmp_gt_f32_e64 s9, 0xc2fc0000, v34
	v_cmp_gt_f32_e64 s10, 0xc2fc0000, v31
	v_cmp_gt_f32_e64 s11, 0xc2fc0000, v52
	v_cmp_gt_f32_e64 s12, 0xc2fc0000, v51
	v_cmp_gt_f32_e64 s14, 0xc2fc0000, v36
	v_cndmask_b32_e64 v54, 0, 0xffffffc0, s0
	v_dual_fmac_f32 v49, 0xbfb8aa3b, v41 :: v_dual_fmac_f32 v44, 0xbfb8aa3b, v55
	v_cndmask_b32_e64 v39, 0, 0x42800000, s7
	v_cndmask_b32_e64 v35, 0, 0x42800000, s8
	v_cndmask_b32_e64 v34, 0, 0x42800000, s9
	v_cndmask_b32_e64 v31, 0, 0x42800000, s10
	v_cndmask_b32_e64 v52, 0, 0x42800000, s11
	v_cndmask_b32_e64 v51, 0, 0x42800000, s12
	v_cmp_gt_f32_e64 s13, 0xc2fc0000, v50
	v_cndmask_b32_e64 v36, 0, 0x42800000, s14
	v_cndmask_b32_e64 v53, 0, 0xffffffc0, vcc_lo
	v_dual_fmac_f32 v43, 0xbfb8aa3b, v5 :: v_dual_fmac_f32 v42, 0xbfb8aa3b, v6
	v_dual_fmac_f32 v40, 0xbfb8aa3b, v7 :: v_dual_fmac_f32 v39, 0xbfb8aa3b, v8
	v_exp_f32_e32 v49, v49
	v_ldexp_f32 v11, v11, v54
	v_cndmask_b32_e64 v50, 0, 0x42800000, s13
	v_cndmask_b32_e64 v56, 0, 0xffffffc0, s1
	v_dual_fmac_f32 v35, 0xbfb8aa3b, v26 :: v_dual_fmac_f32 v34, 0xbfb8aa3b, v24
	v_dual_fmac_f32 v31, 0xbfb8aa3b, v23 :: v_dual_fmac_f32 v52, 0xbfb8aa3b, v14
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v51, 0xbfb8aa3b, v16 :: v_dual_fmac_f32 v50, 0xbfb8aa3b, v15
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v21
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v43, v43
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v40, v40
	v_ldexp_f32 v10, v10, v53
	.loc	1 176 38 is_stmt 0              ; generate_amdgcn.py:176:38
	v_add_f32_e32 v53, 1.0, v11
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v57, 0, 0xffffffc0, s2
	v_cndmask_b32_e64 v58, 0, 0xffffffc0, s3
	v_cndmask_b32_e64 v59, 0, 0xffffffc0, s4
	v_cndmask_b32_e64 v60, 0, 0xffffffc0, s5
	v_cndmask_b32_e64 v61, 0, 0xffffffc0, s6
	v_exp_f32_e32 v39, v39
	v_exp_f32_e32 v35, v35
	v_exp_f32_e32 v34, v34
	v_exp_f32_e32 v31, v31
	v_exp_f32_e32 v52, v52
	v_exp_f32_e32 v51, v51
	v_ldexp_f32 v49, v49, v56
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v56, null, v53, v53, v45
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v62, 0, 0xffffffc0, s7
	v_cndmask_b32_e64 v63, 0, 0xffffffc0, s8
	v_cndmask_b32_e64 v64, 0, 0xffffffc0, s9
	v_cndmask_b32_e64 v65, 0, 0xffffffc0, s10
	v_cndmask_b32_e64 v66, 0, 0xffffffc0, s11
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, s12
	v_ldexp_f32 v46, v46, v57
	v_ldexp_f32 v44, v44, v58
	v_ldexp_f32 v43, v43, v59
	v_ldexp_f32 v42, v42, v60
	v_ldexp_f32 v40, v40, v61
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v86, v56
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v39, v39, v62
	v_ldexp_f32 v35, v35, v63
	v_ldexp_f32 v34, v34, v64
	v_ldexp_f32 v31, v31, v65
	v_ldexp_f32 v52, v52, v66
	v_ldexp_f32 v51, v51, v67
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_dual_add_f32 v10, 1.0, v10 :: v_dual_add_f32 v39, 1.0, v39
	v_dual_add_f32 v40, 1.0, v40 :: v_dual_add_f32 v11, 1.0, v43
	v_dual_add_f32 v42, 1.0, v42 :: v_dual_add_f32 v43, 1.0, v44
	v_dual_add_f32 v44, 1.0, v46 :: v_dual_add_f32 v31, 1.0, v31
	v_dual_add_f32 v46, 1.0, v49 :: v_dual_add_f32 v35, 1.0, v35
	v_dual_add_f32 v34, 1.0, v34 :: v_dual_add_f32 v49, 1.0, v51
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v98, -v56, v86, 1.0
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v51, 1.0, v52
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v52, null, v10, v10, v47
	v_div_scale_f32 v58, null, v46, v46, v41
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v50, v50
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v60, null, v44, v44, v48
	v_div_scale_f32 v77, null, v31, v31, v23
	v_rcp_f32_e32 v80, v52
	v_rcp_f32_e32 v87, v58
	v_div_scale_f32 v62, null, v43, v43, v55
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v68, 0, 0xffffffc0, s13
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v88, v60
	v_div_scale_f32 v64, null, v11, v11, v5
	v_div_scale_f32 v66, null, v42, v42, v6
	v_rcp_f32_e32 v96, v77
	v_rcp_f32_e32 v89, v62
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v50, v50, v68
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v68, null, v40, v40, v7
	v_rcp_f32_e32 v90, v64
	v_div_scale_f32 v71, null, v39, v39, v8
	v_rcp_f32_e32 v91, v66
	v_fma_f32 v97, -v52, v80, 1.0
	v_fma_f32 v99, -v58, v87, 1.0
	v_div_scale_f32 v73, null, v35, v35, v26
	v_rcp_f32_e32 v92, v68
	v_fma_f32 v100, -v60, v88, 1.0
	v_div_scale_f32 v75, null, v34, v34, v24
	v_rcp_f32_e32 v93, v71
	v_div_scale_f32 v54, s1, v47, v10, v47
	v_div_scale_f32 v57, s0, v45, v53, v45
	v_div_scale_f32 v59, vcc_lo, v41, v46, v41
	v_fma_f32 v108, -v77, v96, 1.0
	v_dual_fmac_f32 v80, v97, v80 :: v_dual_fmac_f32 v87, v99, v87
	v_fmac_f32_e32 v86, v98, v86
	v_rcp_f32_e32 v94, v73
	v_fma_f32 v101, -v62, v89, 1.0
	v_div_scale_f32 v61, s10, v48, v44, v48
	v_fmac_f32_e32 v88, v100, v88
	v_rcp_f32_e32 v95, v75
	v_fma_f32 v102, -v64, v90, 1.0
	v_fma_f32 v103, -v66, v91, 1.0
	v_dual_fmac_f32 v96, v108, v96 :: v_dual_mul_f32 v99, v59, v87
	v_dual_mul_f32 v97, v54, v80 :: v_dual_mul_f32 v98, v57, v86
	v_div_scale_f32 v63, s9, v55, v43, v55
	v_fmac_f32_e32 v89, v101, v89
	v_fma_f32 v104, -v68, v92, 1.0
	v_mul_f32_e32 v100, v61, v88
	v_div_scale_f32 v65, s8, v5, v11, v5
	v_dual_fmac_f32 v90, v102, v90 :: v_dual_fmac_f32 v91, v103, v91
	v_fma_f32 v105, -v71, v93, 1.0
	v_div_scale_f32 v67, s6, v6, v42, v6
	v_div_scale_f32 v78, s2, v23, v31, v23
	v_fma_f32 v109, -v52, v97, v54
	v_fma_f32 v110, -v56, v98, v57
	v_fma_f32 v111, -v58, v99, v59
	v_fma_f32 v106, -v73, v94, 1.0
	v_mul_f32_e32 v101, v63, v89
	v_div_scale_f32 v70, s7, v7, v40, v7
	v_dual_fmac_f32 v92, v104, v92 :: v_dual_fmac_f32 v93, v105, v93
	v_fma_f32 v112, -v60, v100, v61
	v_fma_f32 v107, -v75, v95, 1.0
	v_dual_mul_f32 v102, v65, v90 :: v_dual_mul_f32 v103, v67, v91
	v_div_scale_f32 v72, s5, v8, v39, v8
	v_dual_mul_f32 v108, v78, v96 :: v_dual_fmac_f32 v99, v111, v87
	v_dual_fmac_f32 v97, v109, v80 :: v_dual_fmac_f32 v98, v110, v86
	v_div_scale_f32 v74, s3, v26, v35, v26
	v_dual_fmac_f32 v94, v106, v94 :: v_dual_fmac_f32 v95, v107, v95
	v_fma_f32 v113, -v62, v101, v63
	v_dual_mul_f32 v104, v70, v92 :: v_dual_mul_f32 v105, v72, v93
	v_fmac_f32_e32 v100, v112, v88
	v_div_scale_f32 v76, s4, v24, v34, v24
	v_fma_f32 v114, -v64, v102, v65
	v_fma_f32 v115, -v66, v103, v67
	v_fma_f32 v52, -v52, v97, v54
	v_fma_f32 v54, -v56, v98, v57
	v_fma_f32 v56, -v58, v99, v59
	v_dual_mul_f32 v106, v74, v94 :: v_dual_mul_f32 v107, v76, v95
	v_fmac_f32_e32 v101, v113, v89
	v_fma_f32 v109, -v68, v104, v70
	v_fma_f32 v57, -v60, v100, v61
	v_dual_fmac_f32 v102, v114, v90 :: v_dual_fmac_f32 v103, v115, v91
	v_fma_f32 v110, -v71, v105, v72
	v_div_fmas_f32 v56, v56, v87, v99
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v111, -v73, v106, v74
	v_fma_f32 v58, -v62, v101, v63
	v_dual_fmac_f32 v104, v109, v92 :: v_dual_fmac_f32 v105, v110, v93
	v_div_fmas_f32 v57, v57, v88, v100
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v112, -v75, v107, v76
	v_fma_f32 v59, -v64, v102, v65
	v_div_fmas_f32 v52, v52, v80, v97
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v60, -v66, v103, v67
	v_dual_fmac_f32 v106, v111, v94 :: v_dual_fmac_f32 v107, v112, v95
	v_div_fixup_f32 v41, v56, v46, v41
	v_div_fmas_f32 v46, v58, v89, v101
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v113, -v77, v108, v78
	v_fma_f32 v61, -v68, v104, v70
	v_div_fixup_f32 v44, v57, v44, v48
	v_div_fmas_f32 v48, v59, v90, v102
	s_mov_b32 vcc_lo, s6
	v_fma_f32 v62, -v71, v105, v72
	v_div_fixup_f32 v47, v52, v10, v47
	v_div_fmas_f32 v52, v60, v91, v103
	s_mov_b32 vcc_lo, s7
	v_fma_f32 v63, -v73, v106, v74
	v_fmac_f32_e32 v108, v113, v96
	v_div_fixup_f32 v43, v46, v43, v55
	v_div_fmas_f32 v46, v61, v92, v104
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v64, -v75, v107, v76
	v_div_fixup_f32 v5, v48, v11, v5
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v10, v25, v44
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v25, v62, v93, v105
	s_mov_b32 vcc_lo, s3
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v11, v30, v47
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v30, v63, v94, v106
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v65, -v77, v108, v78
	v_div_fixup_f32 v7, v46, v40, v7
	v_div_fmas_f32 v40, v64, v95, v107
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v6, v52, v42, v6
	v_div_fmas_f32 v42, v54, v86, v98
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v79, null, v51, v51, v14
	v_div_fmas_f32 v44, v65, v96, v108
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_exp_f32_e32 v36, v36
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v8, v25, v39, v8
	v_div_fixup_f32 v25, v30, v35, v26
	.loc	1 176 38                        ; generate_amdgcn.py:176:38
	v_add_f32_e32 v30, 1.0, v50
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fixup_f32 v23, v44, v31, v23
	v_div_fixup_f32 v26, v42, v53, v45
	v_div_scale_f32 v31, null, v49, v49, v16
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, s14
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v23, v29, v23
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v29, v79
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v6, v33, v6 :: v_dual_mul_f32 v7, v38, v7
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v33, null, v30, v30, v15
	v_div_fixup_f32 v24, v40, v34, v24
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v26, v27, v26 :: v_dual_mul_f32 v9, v1, v9
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v27, v31
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v5, v32, v5
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v34, -v79, v29, 1.0
	.loc	1 176 44                        ; generate_amdgcn.py:176:44
	v_ldexp_f32 v32, v36, v69
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_rcp_f32_e32 v35, v33
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v8, v37, v8
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_dual_mul_f32 v4, v1, v4 :: v_dual_fmac_f32 v29, v34, v29
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v34, vcc_lo, v14, v51, v14
	.loc	1 176 38 is_stmt 0              ; generate_amdgcn.py:176:38
	v_add_f32_e32 v32, 1.0, v32
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v36, -v31, v27, 1.0
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v4, v4, v18 :: v_dual_mul_f32 v39, v34, v29
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v38, -v33, v35, 1.0
	.loc	1 176 19 is_stmt 0              ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v24, v28, v24
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_scale_f32 v28, null, v32, v32, v21
	v_fmac_f32_e32 v27, v36, v27
	v_div_scale_f32 v36, s0, v16, v49, v16
	v_fma_f32 v42, -v79, v39, v34
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v37, v28
	v_fmac_f32_e32 v35, v38, v35
	v_div_scale_f32 v38, s1, v15, v30, v15
	v_dual_mul_f32 v44, v36, v27 :: v_dual_fmac_f32 v39, v42, v29
	.loc	1 171 16 is_stmt 1              ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v3, v1, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_mul_f32_e32 v45, v38, v35
	.loc	1 171 16                        ; generate_amdgcn.py:171:16
	v_mul_f32_e32 v1, v1, v2
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v42, -v31, v44, v36
	v_fma_f32 v2, -v79, v39, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v40, -v28, v37, 1.0
	v_fma_f32 v46, -v33, v45, v38
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_dual_mul_f32 v1, v1, v20 :: v_dual_fmac_f32 v44, v42, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_div_fmas_f32 v2, v2, v29, v39
	v_fmac_f32_e32 v37, v40, v37
	s_mov_b32 vcc_lo, s0
	v_div_scale_f32 v40, s2, v21, v32, v21
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v2, v2, v51, v14
	v_fmac_f32_e32 v45, v46, v35
	v_fma_f32 v29, -v31, v44, v36
	.loc	1 171 9                         ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v9, v9, v17
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshrrev_b32_e32 v20, 2, v83
.Ltmp22:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v18, v1, v2
	.loc	1 176 26 is_stmt 0              ; generate_amdgcn.py:176:26
	v_fma_f32 v31, -v33, v45, v38
	v_div_fmas_f32 v27, v29, v27, v44
	s_mov_b32 vcc_lo, s1
	s_mov_b32 s8, 0x76543210
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v29, v31, v35, v45
	v_div_fixup_f32 v16, v27, v49, v16
	s_mov_b32 vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fixup_f32 v14, v29, v30, v15
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_dual_mul_f32 v15, v22, v25 :: v_dual_mul_f32 v14, v4, v14
	.loc	1 171 9 is_stmt 1               ; generate_amdgcn.py:171:9
	v_mul_f32_e32 v3, v3, v19
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_mul_f32_e32 v47, v40, v37
	.loc	1 176 19 is_stmt 0              ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v19, v12, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp23:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v1, |v26|, |v15|, |v24|
.Ltmp24:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v16, v3, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 176 26 is_stmt 0              ; generate_amdgcn.py:176:26
	v_fma_f32 v34, -v28, v47, v40
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v3, v13, v43
.Ltmp25:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e64 v13, |v7|, |v8|
	v_max3_f32 v2, |v23|, |v18|, |v16|
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fmac_f32_e32 v47, v34, v37
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v12, |v3|, |v5|, |v6|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp28:
	.loc	1 176 26                        ; generate_amdgcn.py:176:26
	v_fma_f32 v28, -v28, v47, v40
	v_div_fmas_f32 v28, v28, v37, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v17, v28, v32, v21
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v21, 7, v82
.Ltmp30:
	.loc	1 176 19                        ; generate_amdgcn.py:176:19
	v_mul_f32_e32 v17, v9, v17
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max3_f32 v9, |v11|, |v19|, |v10|
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e64 v4, |v14|, |v17|
	v_max3_f32 v2, v1, v2, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_max3_f32 v4, v9, v12, v13
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshlrev_b32_e32 v1, 3, v82
	v_permlanex16_b32 v9, v2, s8, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_permlanex16_b32 v12, v4, s8, 0xfedcba98 op_sel:[1,0]
	v_xor_b32_e32 v22, v1, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	v_dual_max_f32 v13, v12, v12 :: v_dual_max_f32 v12, v2, v9
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_lshl_or_b32 v2, v83, 2, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v4, v13
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add3_u32 v4, 0, v21, v22
	v_xad_u32 v2, v2, v20, 0
	ds_store_b64 v4, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[12:13], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v4, v13
	v_mov_b32_e32 v2, v12
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_dual_max_f32 v9, v12, v12 :: v_dual_max_f32 v12, v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_dpp v4, v4 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v12, v4
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v12, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v12
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v12, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v4, v4, v12
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v12, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v13, v12, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v13, v4, v13
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v4, 0, v1
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v2, v9, v2
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v9
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v2, v2, v9
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v12, v2, v9
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ generate_amdgcn.py:75:16 @[ generate_amdgcn.py:243:9 ] ]
	v_add_nc_u32_e32 v2, 0, v20
	ds_store_b64 v2, v[12:13]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[12:13], v4
.Ltmp55:
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 76 14                         ; generate_amdgcn.py:76:14 @[ generate_amdgcn.py:243:9 ]
	v_max_f32_e32 v2, v12, v12
	v_max_f32_e32 v4, v13, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, 0x2b8cbccc, v2
	v_max_f32_e32 v4, 0x2b8cbccc, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_scale_f32 v9, null, 0x40e00000, 0x40e00000, v2
	v_div_scale_f32 v12, null, 0x40e00000, 0x40e00000, v4
	v_div_scale_f32 v25, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v13, v9
	v_rcp_f32_e32 v20, v12
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v21, -v9, v13, 1.0
	v_fma_f32 v22, -v12, v20, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v13, v21, v13
	v_div_scale_f32 v21, s0, v4, 0x40e00000, v4
	v_fmac_f32_e32 v20, v22, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v22, v25, v13
	v_mul_f32_e32 v27, v21, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v28, -v9, v22, v25
	v_fma_f32 v29, -v12, v27, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v22, v28, v13 :: v_dual_fmac_f32 v27, v29, v20
	v_fma_f32 v9, -v9, v22, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v12, -v12, v27, v21
	v_div_fmas_f32 v9, v9, v13, v22
	s_mov_b32 vcc_lo, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v12, v12, v20, v27
	v_div_fixup_f32 v2, v9, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v9, v12, 0x40e00000, v4
	.loc	1 76 13 is_stmt 0               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_bfe_u32 v4, v2, 16, 1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_bfe_u32 v12, v9, 16, 1
	v_add3_u32 v4, v2, v4, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v9, v9, v12, 0x7fff
	.loc	1 78 35 is_stmt 1               ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v12, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_scale_f32 v20, null, v12, v12, v26
	v_rcp_f32_e32 v43, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v53, -v20, v43, 1.0
	v_fmac_f32_e32 v43, v53, v43
	v_div_scale_f32 v22, null, v12, v12, v15
	v_div_scale_f32 v27, null, v12, v12, v24
	v_div_scale_f32 v29, null, v12, v12, v23
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v44, v22
	v_div_scale_f32 v31, null, v12, v12, v18
	v_rcp_f32_e32 v45, v27
	v_div_scale_f32 v37, null, v12, v12, v17
	v_rcp_f32_e32 v46, v29
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v47, v31
	v_div_scale_f32 v21, vcc_lo, v26, v12, v26
	v_fma_f32 v54, -v22, v44, 1.0
	.loc	1 78 35                         ; generate_amdgcn.py:78:35 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v13, 0xffff0000, v9
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_rcp_f32_e32 v50, v37
	v_fma_f32 v55, -v27, v45, 1.0
	v_div_scale_f32 v25, s0, v15, v12, v15
	v_fmac_f32_e32 v44, v54, v44
	v_div_scale_f32 v39, null, v13, v13, v11
	v_fma_f32 v56, -v29, v46, 1.0
	v_fma_f32 v57, -v31, v47, 1.0
	v_dual_fmac_f32 v45, v55, v45 :: v_dual_and_b32 v2, 16, v0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v51, v39
	v_div_scale_f32 v28, s1, v24, v12, v24
	v_div_scale_f32 v30, s2, v23, v12, v23
	v_fma_f32 v60, -v37, v50, 1.0
	v_dual_fmac_f32 v46, v56, v46 :: v_dual_fmac_f32 v47, v57, v47
	v_mul_f32_e32 v53, v21, v43
	v_div_scale_f32 v33, null, v12, v12, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v61, -v39, v51, 1.0
	v_dual_mul_f32 v54, v25, v44 :: v_dual_mul_f32 v55, v28, v45
	v_div_scale_f32 v38, s6, v17, v12, v17
	v_dual_fmac_f32 v50, v60, v50 :: v_dual_fmac_f32 v51, v61, v51
	v_mul_f32_e32 v56, v30, v46
	v_fma_f32 v61, -v20, v53, v21
	v_div_scale_f32 v32, s3, v18, v12, v18
	v_div_scale_f32 v35, null, v12, v12, v14
	v_rcp_f32_e32 v48, v33
	v_fma_f32 v63, -v22, v54, v25
	v_fma_f32 v64, -v27, v55, v28
	v_dual_mul_f32 v60, v38, v50 :: v_dual_fmac_f32 v53, v61, v43
	v_mul_f32_e32 v57, v32, v47
	v_fma_f32 v65, -v29, v56, v30
	v_rcp_f32_e32 v49, v35
	v_dual_fmac_f32 v54, v63, v44 :: v_dual_fmac_f32 v55, v64, v45
	v_fma_f32 v20, -v20, v53, v21
	v_fma_f32 v66, -v31, v57, v32
	v_fmac_f32_e32 v56, v65, v46
	v_fma_f32 v58, -v33, v48, 1.0
	v_fma_f32 v21, -v22, v54, v25
	v_fma_f32 v22, -v27, v55, v28
	v_div_fmas_f32 v20, v20, v43, v53
	s_mov_b32 vcc_lo, s0
	v_fmac_f32_e32 v57, v66, v47
	v_fma_f32 v25, -v29, v56, v30
	v_div_scale_f32 v34, s4, v16, v12, v16
	v_fma_f32 v59, -v35, v49, 1.0
	v_fmac_f32_e32 v48, v58, v48
	v_div_fmas_f32 v21, v21, v44, v54
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v42, null, v13, v13, v10
	v_div_fmas_f32 v22, v22, v45, v55
	s_mov_b32 vcc_lo, s2
	v_div_scale_f32 v36, s5, v14, v12, v14
	v_div_fmas_f32 v25, v25, v46, v56
	v_dual_fmac_f32 v49, v59, v49 :: v_dual_mul_f32 v58, v34, v48
	v_fma_f32 v27, -v31, v57, v32
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v23, v25, v12, v23
	v_rcp_f32_e32 v25, v42
	v_mul_f32_e32 v59, v36, v49
	v_fma_f32 v67, -v33, v58, v34
	v_div_scale_f32 v40, s7, v11, v13, v11
	v_div_fixup_f32 v15, v21, v12, v15
	v_div_fmas_f32 v21, v27, v47, v57
	v_fma_f32 v68, -v35, v59, v36
	v_fmac_f32_e32 v58, v67, v48
	v_div_scale_f32 v41, null, v13, v13, v19
	v_div_fixup_f32 v20, v20, v12, v26
	v_div_fixup_f32 v18, v21, v12, v18
	v_fma_f32 v21, -v37, v60, v38
	v_fma_f32 v29, -v42, v25, 1.0
	v_mul_f32_e32 v26, v40, v51
	v_fmac_f32_e32 v59, v68, v49
	v_fma_f32 v28, -v33, v58, v34
	s_mov_b32 vcc_lo, s4
	v_rcp_f32_e32 v52, v41
	v_fmac_f32_e32 v25, v29, v25
	v_fmac_f32_e32 v60, v21, v50
	v_fma_f32 v21, -v39, v26, v40
	v_div_fixup_f32 v22, v22, v12, v24
	v_div_fmas_f32 v24, v28, v48, v58
	v_div_scale_f32 v32, null, v13, v13, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v26, v21, v51
	v_fma_f32 v30, -v37, v60, v38
	v_div_fixup_f32 v16, v24, v12, v16
	v_fma_f32 v24, -v35, v59, v36
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v62, -v41, v52, 1.0
	v_fma_f32 v31, -v39, v26, v40
	v_rcp_f32_e32 v33, v32
	v_div_fmas_f32 v24, v24, v49, v59
	s_mov_b32 vcc_lo, s6
	v_div_scale_f32 v27, s0, v19, v13, v19
	v_div_fmas_f32 v30, v30, v50, v60
	s_mov_b32 vcc_lo, s7
	v_div_scale_f32 v29, s1, v10, v13, v10
	v_fmac_f32_e32 v52, v62, v52
	v_div_fmas_f32 v26, v31, v51, v26
	s_mov_b32 vcc_lo, s0
	v_div_fixup_f32 v14, v24, v12, v14
	v_div_fixup_f32 v12, v30, v12, v17
	v_div_scale_f32 v24, null, v13, v13, v5
	v_div_fixup_f32 v11, v26, v13, v11
	v_fma_f32 v26, -v32, v33, 1.0
	v_mul_f32_e32 v28, v27, v52
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v33, v26, v33
	v_fma_f32 v21, -v41, v28, v27
	v_div_scale_f32 v26, null, v13, v13, v7
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v28, v21, v52
	v_mul_f32_e32 v21, v29, v25
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v11, v11
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v9.l, v9.h
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v31, -v42, v21, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v31, v25
	v_div_scale_f32 v31, null, v13, v13, v8
	v_rcp_f32_e32 v35, v31
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v39, -v31, v35, 1.0
	v_fmac_f32_e32 v35, v39, v35
	v_fma_f32 v27, -v41, v28, v27
	v_div_scale_f32 v39, s3, v8, v13, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v27, v27, v52, v28
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v17, v27, v13, v19
	v_fma_f32 v19, -v42, v21, v29
	v_rcp_f32_e32 v29, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v19, v19, v25, v21
	v_div_scale_f32 v27, vcc_lo, v3, v13, v3
	v_rcp_f32_e32 v21, v24
	v_div_scale_f32 v25, null, v13, v13, v6
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v30, v27, v33
	v_div_fixup_f32 v10, v19, v13, v10
	v_fma_f32 v37, -v26, v29, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v28, v25
	v_fma_f32 v36, -v32, v30, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v10, v10
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v19, -v24, v21, 1.0
	v_fmac_f32_e32 v29, v37, v29
	v_div_scale_f32 v37, s2, v7, v13, v7
	v_fmac_f32_e32 v30, v36, v33
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v21, v19, v21
	v_div_scale_f32 v19, s0, v5, v13, v5
	v_fma_f32 v34, -v25, v28, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v27, -v32, v30, v27
	v_dual_mul_f32 v41, v37, v29 :: v_dual_fmac_f32 v28, v34, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v27, v27, v33, v30
	s_mov_b32 vcc_lo, s0
	s_mov_b32 s0, 0xc1000000
	v_div_scale_f32 v34, s1, v6, v13, v6
	v_div_fixup_f32 v3, v27, v13, v3
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v16, v16, s0, 0x40e00000
	v_med3_f32 v12, v12, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v40, v34, v28
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v15, v15, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v3, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v16, v16
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_mul_f32_e32 v38, v19, v21
	v_fma_f32 v32, -v25, v40, v34
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v18, v18, s0, 0x40e00000
	v_med3_f32 v3, v3, s0, 0x40e00000
	v_med3_f32 v17, v17, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v36, -v24, v38, v19
	v_fmac_f32_e32 v40, v32, v28
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_cvt_i32_f32_e32 v3, v3
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v38, v36, v21
	v_fma_f32 v36, -v26, v41, v37
	v_mul_f32_e32 v42, v39, v35
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v17, v17
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v19, -v24, v38, v19
	v_fmac_f32_e32 v41, v36, v29
	v_fma_f32 v24, -v31, v42, v39
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_med3_f32 v11, v11, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v19, v19, v21, v38
	v_fma_f32 v21, -v25, v40, v34
	s_mov_b32 vcc_lo, s1
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v5, v19, v13, v5
	v_div_fmas_f32 v21, v21, v28, v40
	s_mov_b32 vcc_lo, s2
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v19, v22
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v22, v11
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v5, v5
	.loc	1 78 29 is_stmt 0               ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v6, v21, v13, v6
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v21, v12
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fmac_f32_e32 v42, v24, v35
	v_fma_f32 v24, -v26, v41, v37
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v19, v19, s0, 0x40e00000
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v6, v6
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v5, v5, s0, 0x40e00000
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_fma_f32 v25, -v31, v42, v39
	v_div_fmas_f32 v24, v24, v29, v41
	s_mov_b32 vcc_lo, s3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v6, v6, s0, 0x40e00000
	v_cvt_i32_f32_e32 v19, v19
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fmas_f32 v25, v25, v35, v42
	v_div_fixup_f32 v7, v24, v13, v7
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v11, 15, v16
	v_cvt_i32_f32_e32 v24, v5
	.loc	1 78 29                         ; generate_amdgcn.py:78:29 @[ generate_amdgcn.py:243:9 ]
	v_div_fixup_f32 v8, v25, v13, v8
	.loc	1 78 9 is_stmt 0                ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v13, v20
	v_rndne_f32_e32 v20, v23
	v_rndne_f32_e32 v7, v7
	.loc	1 77 9 is_stmt 1                ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v23, v10
	.loc	1 78 9                          ; generate_amdgcn.py:78:9 @[ generate_amdgcn.py:243:9 ]
	v_rndne_f32_e32 v8, v8
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v20, v20, s0, 0x40e00000
	v_med3_f32 v7, v7, s0, 0x40e00000
	v_cvt_i32_f32_e32 v25, v6
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_and_b32_e32 v6, 15, v15
	v_cvt_i32_f32_e32 v20, v20
	v_cvt_i32_f32_e32 v26, v7
	v_and_b32_e32 v7, 15, v19
	v_and_b32_e32 v10, 15, v18
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 0x600, v84
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v15, 15, v17
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v19, 11, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v17, 15, v3
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v3, 5, v0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v27, v8
	v_and_b32_e32 v8, 15, v20
	v_and_b32_e32 v16, 15, v23
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v20, 0x60, v0
	v_lshl_or_b32 v18, v82, 4, v18
	v_and_b32_e32 v19, 0x3000, v19
	v_lshlrev_b32_e32 v23, 7, v0
	v_and_b32_e32 v3, 0x60, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v5, 15, v13
	v_and_b32_e32 v12, 15, v14
	v_and_b32_e32 v13, 15, v21
	v_and_b32_e32 v14, 15, v22
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b32_e32 v21, 7, v2
	v_xor_b32_e32 v22, v18, v20
	v_add_nc_u32_e32 v28, 0, v19
	v_and_or_b32 v3, 0x3600, v23, v3
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v18, 15, v24
	v_and_b32_e32 v19, 15, v25
	v_and_b32_e32 v20, 15, v26
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	v_add3_u32 v22, v28, v21, v22
	v_xad_u32 v3, v3, v85, 0
	.loc	1 77 9                          ; generate_amdgcn.py:77:9 @[ generate_amdgcn.py:243:9 ]
	v_and_b32_e32 v21, 15, v27
	.loc	1 83 18                         ; generate_amdgcn.py:83:18 @[ generate_amdgcn.py:243:9 ]
	ds_store_b128 v22, v[5:8]
	ds_store_b128 v22, v[14:17] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v3
	ds_load_b128 v[14:17], v3 offset:2048
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v22, v[10:13]
	ds_store_b128 v22, v[18:21] offset:256
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[10:13], v3
	ds_load_b128 v[18:21], v3 offset:2048
	.loc	1 76 13                         ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v22.h, 0
	v_mov_b16_e32 v22.l, v4.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s25, 31
	.loc	1 86 14 is_stmt 0               ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v3, s24, 7, v1
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 76 13 is_stmt 1               ; generate_amdgcn.py:76:13 @[ generate_amdgcn.py:243:9 ]
	v_mov_b16_e32 v9.h, v22.h
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 1
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v2, v22, v9, vcc_lo
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	v_lshl_or_b32 v4, v16, 4, v7
	v_lshl_or_b32 v7, v17, 4, v8
	v_lshl_or_b32 v6, v15, 4, v6
	v_lshl_or_b32 v5, v14, 4, v5
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v1.h, 0xff, v4.l
	.loc	1 84 15                         ; generate_amdgcn.py:84:15 @[ generate_amdgcn.py:243:9 ]
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v8, v18, 4, v10
	v_lshl_or_b32 v10, v19, 4, v11
	v_lshl_or_b32 v11, v20, 4, v12
	v_lshl_or_b32 v12, v21, 4, v13
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_or_b32_e32 v13, s26, v81
	.loc	1 86 5 is_stmt 0                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v7.l
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 86 14                         ; generate_amdgcn.py:86:14 @[ generate_amdgcn.py:243:9 ]
	v_mad_u64_u32 v[3:4], null, v13, s0, v[3:4]
	.loc	1 86 37                         ; generate_amdgcn.py:86:37 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s25, 31
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v4.h, v1.h, v1.l
	.loc	1 87 34 is_stmt 1               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_lshr_b32 s0, s0, 24
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v1.l, 8, v6.l
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_and_or_b32 v6, v0, 31, s26
	.loc	1 87 34 is_stmt 0               ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_add_i32 s0, s25, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v0.l, 0xff, v5.l
	.loc	1 87 34                         ; generate_amdgcn.py:87:34 @[ generate_amdgcn.py:243:9 ]
	s_ashr_i32 s0, s0, 8
	.loc	1 87 5 is_stmt 0                ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_bfe_i32 v5, v2, 0, 16
	.loc	1 87 14                         ; generate_amdgcn.py:87:14 @[ generate_amdgcn.py:243:9 ]
	v_mul_lo_u32 v6, v6, s0
	.loc	1 86 5 is_stmt 1                ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_lshlrev_b16 v0.h, 8, v12.l
	v_and_b16 v1.h, 0xff, v11.l
	v_lshlrev_b16 v2.l, 8, v10.l
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_permlanex16_b32 v7, v5, s8, 0xfedcba98 op_sel:[1,0]
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_and_b16 v2.h, 0xff, v8.l
	v_or_b16 v4.l, v0.l, v1.l
	v_or_b16 v5.h, v1.h, v0.h
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_add_lshl_u32 v0, v6, s24, 1
	v_cndmask_b32_e32 v1, v7, v22, vcc_lo
	v_cmp_eq_u32_e32 vcc_lo, 0, v83
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	v_or_b16 v5.l, v2.h, v2.l
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	.loc	1 86 5                          ; generate_amdgcn.py:86:5 @[ generate_amdgcn.py:243:9 ]
	buffer_store_b64 v[4:5], v3, s[20:23], 0 offen
	.loc	1 87 5                          ; generate_amdgcn.py:87:5 @[ generate_amdgcn.py:243:9 ]
	s_and_b32 s21, s19, 0xffff
	s_mov_b32 s20, s18
	buffer_store_b16 v1, v0, s[20:23], 0 offen
.Ltmp56:
	.loc	1 106 1                         ; generate_amdgcn.py:106:1
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp57:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
		.amdhsa_next_free_vgpr 125
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
	.size	amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk, .Lfunc_end0-amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_vgpr, 125
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_agpr, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.private_seg_size, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_vcc, 1
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_recursion, 0
	.set amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 10068
; TotalNumSgprs: 31
; NumVgprs: 125
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 125
; Occupancy: 10
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
	.byte	1                               ; Abbrev [1] 0xb:0x82 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x5c DW_TAG_subprogram
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
	.byte	5                               ; Abbrev [5] 0x65:0x26 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	9                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x71:0x19 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.byte	75                              ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x7d:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
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
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
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
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk"             ; string offset=75 ; amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
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
    .name:           amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_int4xint4_nt_pc_swiglu_outint4sc256_bm32_bn256_bk128_gm1_w16_s2_weu2_sk1_maskk.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     125
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
