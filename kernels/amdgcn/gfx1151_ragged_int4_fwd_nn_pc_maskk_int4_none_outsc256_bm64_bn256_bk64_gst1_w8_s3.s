	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[34:35], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v88, 15, v0
	v_lshlrev_b32_e32 v92, 1, v0
	v_and_b32_e32 v91, 0x80, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s34, 0xff
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	2 43 12 is_stmt 0               ; standard.py:43:12 @[ ragged.py:1031:21 ]
	s_ashr_i32 s5, s4, 31
	s_lshr_b32 s5, s5, 24
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s4, s4, s5
	s_ashr_i32 s4, s4, 8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
.Ltmp2:
	.loc	1 1033 25 is_stmt 1             ; ragged.py:1033:25
	s_abs_i32 s5, s4
	s_cvt_f32_u32 s6, s5
	s_sub_i32 s7, 0, s5
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s6
	v_readfirstlane_b32 s6, v1
	s_mul_f32 s6, s6, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s6, s6
	s_mul_i32 s7, s7, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_hi_u32 s7, s6, s7
	s_add_i32 s6, s6, s7
	s_xor_b32 s7, s2, s4
	s_mul_hi_u32 s6, s8, s6
	s_ashr_i32 s7, s7, 31
	s_mul_i32 s9, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s8, s8, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s8, s5
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s8, s10, s8
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s8, s5
	s_cselect_b32 s5, s9, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s5, s5, s7
	s_sub_i32 s12, s5, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_4) | instid1(SALU_CYCLE_1)
	.loc	1 1035 33                       ; ragged.py:1035:33
	s_sub_i32 s3, s3, s12
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_mul_i32 s4, s12, s4
	.loc	1 1035 22                       ; ragged.py:1035:22
	s_min_i32 s3, s3, 1
	.loc	1 1036 24                       ; ragged.py:1036:24
	s_sub_i32 s2, s2, s4
	.loc	1 1038 17                       ; ragged.py:1038:17
	s_abs_i32 s13, s3
	s_cvt_f32_u32 s5, s13
	s_sub_i32 s6, 0, s13
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_3)
	s_cvt_u32_f32 s5, s5
	s_mul_i32 s6, s6, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_mul_hi_u32 s4, s5, s6
	s_abs_i32 s6, s2
	s_add_i32 s5, s5, s4
	s_xor_b32 s4, s2, s3
	s_mul_hi_u32 s14, s6, s5
	s_ashr_i32 s30, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s16, s14, 1
	s_sub_i32 s15, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s17, s15, s13
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s14, s16, s14
	s_cselect_b32 s15, s17, s15
	s_add_i32 s16, s14, 1
	s_cmp_ge_u32 s15, s13
	s_cselect_b32 s13, s16, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s31, s13, s30
	s_sub_i32 s33, s31, s30
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s33, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[2:3], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s4, s4, s2
	s_addc_u32 s5, s5, s3
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s6, s6, s2
	s_addc_u32 s7, s7, s3
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[28:29], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[40:41], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s35, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v6, s28 :: v_dual_lshlrev_b32 v7, 1, v0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v0
	v_mov_b32_e32 v5, s40
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x40
	s_load_b128 s[16:19], s[0:1], 0x10
	s_load_b64 s[36:37], s[4:5], 0x0
	s_load_b64 s[38:39], s[2:3], 0x0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v89, 0xf0, v0
	v_dual_mov_b32 v3, 0 :: v_dual_lshlrev_b32 v90, 4, v88
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v12, 0
	v_dual_mov_b32 v15, 0 :: v_dual_mov_b32 v14, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v19, 0 :: v_dual_mov_b32 v18, 0
	v_dual_mov_b32 v21, 0 :: v_dual_mov_b32 v20, 0
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v22, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v40, 0
	v_dual_mov_b32 v41, 0 :: v_dual_mov_b32 v38, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v34, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v94, 0
	v_mov_b32_e32 v95, 0
	v_mov_b32_e32 v97, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_load_b128 s[20:23], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v78, 31, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s0, s40, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s41, 0, s0
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v77, 3, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v4, vcc_lo, v2, 8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v5, null, 0, v3, vcc_lo
	v_add_co_u32 v6, vcc_lo, v2, 16
	v_add_co_ci_u32_e64 v7, null, 0, v3, vcc_lo
	v_add_co_u32 v8, vcc_lo, v2, 24
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v9, null, 0, v3, vcc_lo
	v_add_co_u32 v10, vcc_lo, v2, 32
	v_add_co_ci_u32_e64 v11, null, 0, v3, vcc_lo
	v_add_co_u32 v12, vcc_lo, v2, 40
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, 0, v3, vcc_lo
	v_add_co_u32 v14, vcc_lo, v2, 48
	v_add_co_ci_u32_e64 v15, null, 0, v3, vcc_lo
	v_add_co_u32 v16, vcc_lo, v2, 56
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v17, null, 0, v3, vcc_lo
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[2:3]
	v_bfe_i32 v2, v0, 7, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[38:39], v[4:5]
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[6:7]
	v_and_b32_e32 v2, 0x88, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[38:39], v[6:7]
	v_lshrrev_b32_e32 v5, 2, v0
	v_lshlrev_b32_e32 v6, 5, v88
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[8:9]
	v_xor_b32_e32 v4, v2, v4
	v_cmp_le_i64_e64 s3, s[36:37], v[10:11]
	v_xor_b32_e32 v2, v92, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[38:39], v[8:9]
	v_cmp_gt_i64_e64 s11, s[38:39], v[10:11]
	v_xor_b32_e32 v7, 0x110, v4
	v_lshlrev_b32_e32 v3, 3, v0
	v_lshlrev_b32_e32 v8, 4, v19
	v_and_b32_e32 v2, 24, v2
	v_dual_mov_b32 v31, v1 :: v_dual_add_nc_u32 v104, 0, v4
	v_add_nc_u32_e32 v94, 0, v7
	v_mov_b32_e32 v7, v1
	v_and_or_b32 v5, v92, 24, v6
	v_dual_mov_b32 v4, v1 :: v_dual_and_b32 v3, 24, v3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[36:37], v[14:15]
	v_cmp_le_i64_e64 s6, s[36:37], v[16:17]
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v11, 16, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[38:39], v[14:15]
	v_cmp_gt_i64_e64 s14, s[38:39], v[16:17]
	v_add_nc_u32_e32 v14, s40, v18
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[12:13]
	v_add_nc_u32_e32 v96, 0, v11
	v_mov_b32_e32 v11, v1
	v_or3_b32 v6, v2, v8, v6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[38:39], v[12:13]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s29, s0, s8
	v_xor_b32_e32 v12, 24, v5
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_lshl_b32 s0, s31, 8
	v_xor_b32_e32 v16, 8, v6
	v_xor_b32_e32 v17, 16, v6
	v_xor_b32_e32 v18, 24, v6
	v_dual_mov_b32 v30, v1 :: v_dual_add_nc_u32 v107, 0, v6
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v3, v3, v77
	v_dual_mov_b32 v29, v1 :: v_dual_add_nc_u32 v102, 0, v17
	v_mov_b32_e32 v17, v1
	v_xor_b32_e32 v10, 8, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v9, v88, 9, v3
	v_mad_u64_u32 v[2:3], null, s35, s28, v[77:78]
	v_add_nc_u32_e32 v97, 0, v12
	v_mov_b32_e32 v12, v1
	v_xor_b32_e32 v13, 0x110, v9
	v_xor_b32_e32 v15, 0x198, v9
	v_xor_b32_e32 v8, 0x88, v9
	v_add_nc_u32_e32 v95, 0, v10
	v_mul_lo_u32 v2, s34, v2
	v_add_nc_u32_e32 v99, 0, v13
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v22, 56, v14
	v_add_nc_u32_e32 v23, 48, v14
	v_add_nc_u32_e32 v24, 40, v14
	v_add_nc_u32_e32 v3, 32, v14
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v21, 24, v14
	v_mad_u64_u32 v[79:80], null, v22, s35, v[78:79]
	v_add_nc_u32_e32 v20, 16, v14
	v_add3_u32 v2, v2, s0, v90
	v_add_nc_u32_e32 v19, 8, v14
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v100, 0, v15
	v_mov_b32_e32 v15, v1
	v_mad_u64_u32 v[80:81], null, v23, s35, v[78:79]
	v_mad_u64_u32 v[81:82], null, v24, s35, v[78:79]
	v_mad_u64_u32 v[82:83], null, v3, s35, v[78:79]
	v_mad_u64_u32 v[83:84], null, v21, s35, v[78:79]
	v_mad_u64_u32 v[84:85], null, v20, s35, v[78:79]
	v_add_nc_u32_e32 v3, s34, v2
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v98, 0, v8
	v_mov_b32_e32 v8, v1
	v_mad_u64_u32 v[85:86], null, v19, s35, v[78:79]
	v_mad_u64_u32 v[86:87], null, v14, s35, v[78:79]
	s_lshl_b32 s0, s30, 8
	v_dual_mov_b32 v24, v1 :: v_dual_add_nc_u32 v101, 0, v16
	v_subrev_nc_u32_e32 v87, s0, v2
	v_dual_mov_b32 v26, v1 :: v_dual_add_nc_u32 v103, 0, v18
	v_dual_mov_b32 v28, v1 :: v_dual_add_nc_u32 v105, 0, v5
	v_dual_mov_b32 v33, v1 :: v_dual_add_nc_u32 v106, 0, v9
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v5, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
	v_subrev_nc_u32_e32 v93, s0, v3
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v19, v1
	v_mov_b32_e32 v20, v1
	v_mov_b32_e32 v21, v1
	v_mov_b32_e32 v22, v1
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v34, v1
	v_mov_b32_e32 v35, v1
	v_mov_b32_e32 v36, v1
	v_mov_b32_e32 v37, v1
	v_mov_b32_e32 v38, v1
	v_mov_b32_e32 v39, v1
	v_mov_b32_e32 v40, v1
	v_mov_b32_e32 v41, v1
	v_mov_b32_e32 v42, v1
	v_mov_b32_e32 v43, v1
	v_mov_b32_e32 v44, v1
	v_mov_b32_e32 v45, v1
	v_mov_b32_e32 v46, v1
	v_mov_b32_e32 v47, v1
	v_mov_b32_e32 v48, v1
	v_mov_b32_e32 v49, v1
	v_mov_b32_e32 v50, v1
	v_mov_b32_e32 v51, v1
	v_mov_b32_e32 v52, v1
	v_mov_b32_e32 v53, v1
	v_mov_b32_e32 v54, v1
	v_mov_b32_e32 v55, v1
	v_mov_b32_e32 v56, v1
	v_mov_b32_e32 v57, v1
	v_mov_b32_e32 v58, v1
	v_mov_b32_e32 v59, v1
	v_mov_b32_e32 v60, v1
	v_mov_b32_e32 v61, v1
	v_mov_b32_e32 v62, v1
	v_mov_b32_e32 v63, v1
	v_mov_b32_e32 v64, v1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s15, vcc_lo, s7
	s_and_b32 s14, s6, s14
	s_and_b32 s21, s21, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s1, s1, s9
	s_and_b32 s2, s2, s10
	s_and_b32 s3, s3, s11
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s5, s13
	s_and_b32 s9, s23, 0xffff
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s30, s34, 5
	s_mov_b32 s31, 0
	s_mov_b32 s4, s20
	s_mov_b32 s5, s21
	s_mov_b32 s8, s22
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v65, s31, v77
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_add_nc_u32_e32 v66, s31, v78
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v74, s31, v79
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_add_nc_u32_e32 v67, s31, v86
	v_add_nc_u32_e32 v68, s31, v85
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_add_nc_u32_e32 v75, 1, v65
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s35, v65
	v_cmp_gt_i32_e32 vcc_lo, s35, v66
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v69, s31, v84
	v_add_nc_u32_e32 v70, s31, v83
	v_add_nc_u32_e32 v71, s31, v82
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v65, 0x80000000, v87, s0
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s35, v75
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v72, s31, v81
	v_add_nc_u32_e32 v73, s31, v80
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v87, s30, v87
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s31, s31, 32
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v75, 0x80000000, v93, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s15, vcc_lo
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v93, s30, v93
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v76, 0x80000000, v67, s0
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s0, s29, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v108, 0x80000000, v68, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s1, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v109, 0x80000000, v69, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s2, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v110, 0x80000000, v70, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s3, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v111, 0x80000000, v71, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s12, vcc_lo
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v112, 0x80000000, v72, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s13, vcc_lo
	s_and_b32 vcc_lo, s14, vcc_lo
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v73, 0x80000000, v73, s0
	v_cndmask_b32_e32 v74, 0x80000000, v74, vcc_lo
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_b128 v[65:68], v65, s[8:11], 0 offen
	buffer_load_b128 v[69:72], v75, s[8:11], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v75, v76, s[4:7], 0 offen
	buffer_load_u8 v76, v109, s[4:7], 0 offen
	buffer_load_u8 v109, v111, s[4:7], 0 offen
	buffer_load_u8 v73, v73, s[4:7], 0 offen
	buffer_load_u8 v74, v74, s[4:7], 0 offen
	buffer_load_u8 v111, v112, s[4:7], 0 offen
	buffer_load_u8 v110, v110, s[4:7], 0 offen
	buffer_load_u8 v108, v108, s[4:7], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s31, s35
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(7)
	ds_store_b8 v104, v75
	s_waitcnt vmcnt(6)
	ds_store_b8 v104, v76 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v104, v109 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v104, v73 offset:1536
	s_waitcnt vmcnt(0)
	ds_store_b8 v94, v108
	ds_store_b8 v94, v110 offset:512
	ds_store_b8 v94, v111 offset:1024
	ds_store_b8 v94, v74 offset:1536
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_perm_b32 v117, v69, v65, 0x5010400
	v_perm_b32 v118, v69, v65, 0x7030602
	v_perm_b32 v119, v70, v66, 0x5010400
	v_perm_b32 v120, v70, v66, 0x7030602
	v_perm_b32 v121, v71, v67, 0x5010400
	v_lshrrev_b32_e32 v125, 8, v117
	v_and_b16 v116.l, 0xff, v117.l
	v_lshrrev_b32_e32 v126, 24, v117
	v_lshrrev_b32_e32 v127, 8, v118
	v_and_b16 v117.l, 0xff, v118.l
	v_lshrrev_b32_e32 v130, 24, v118
	v_lshrrev_b32_e32 v131, 8, v119
	v_and_b16 v118.l, 0xff, v119.l
	v_lshrrev_b32_e32 v132, 24, v119
	v_lshrrev_b32_e32 v133, 8, v120
	v_and_b16 v119.l, 0xff, v120.l
	v_lshrrev_b32_e32 v134, 24, v120
	v_lshlrev_b16 v120.l, 8, v125.l
	v_and_b16 v116.h, 0xff, v117.h
	v_and_b16 v117.h, 0xff, v118.h
	v_and_b16 v118.h, 0xff, v119.h
	v_and_b16 v119.h, 0xff, v120.h
	v_or_b16 v128.l, v116.l, v120.l
	v_lshlrev_b16 v116.l, 8, v126.l
	v_lshrrev_b32_e32 v120, 8, v121
	v_perm_b32 v122, v71, v67, 0x7030602
	v_lshrrev_b32_e32 v125, 24, v121
	v_perm_b32 v123, v72, v68, 0x5010400
	v_or_b16 v128.h, v116.h, v116.l
	v_lshlrev_b16 v116.h, 8, v127.l
	v_and_b16 v116.l, 0xff, v121.l
	v_perm_b32 v124, v72, v68, 0x7030602
	v_lshrrev_b32_e32 v126, 24, v122
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_or_b16 v129.l, v117.l, v116.h
	v_lshlrev_b16 v117.l, 8, v130.l
	v_and_b16 v116.h, 0xff, v121.h
	v_lshrrev_b32_e32 v121, 8, v122
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_barrier
	ds_load_2addr_stride64_b64 v[108:111], v105 offset1:1
	ds_load_2addr_stride64_b64 v[112:115], v105 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[73:76], v95 offset1:1
	ds_load_2addr_stride64_b64 v[69:72], v95 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[65:68], v96 offset1:1
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_or_b16 v129.h, v117.h, v117.l
	v_lshlrev_b16 v117.h, 8, v132.l
	v_lshlrev_b16 v117.l, 8, v131.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_or_b16 v130.h, v118.h, v117.h
	v_lshlrev_b16 v118.h, 8, v120.l
	v_or_b16 v130.l, v118.l, v117.l
	v_lshlrev_b16 v118.l, 8, v133.l
	v_and_b16 v117.l, 0xff, v122.l
	v_and_b16 v117.h, 0xff, v122.h
	v_or_b16 v132.l, v116.l, v118.h
	v_lshlrev_b16 v118.h, 8, v125.l
	v_or_b16 v131.l, v119.l, v118.l
	v_lshlrev_b16 v118.l, 8, v134.l
	v_lshrrev_b32_e32 v122, 8, v123
	v_lshrrev_b32_e32 v120, 8, v124
	v_or_b16 v132.h, v116.h, v118.h
	v_lshlrev_b16 v116.h, 8, v121.l
	v_or_b16 v131.h, v119.h, v118.l
	v_lshrrev_b32_e32 v119, 24, v123
	v_lshrrev_b32_e32 v121, 24, v124
	v_and_b16 v118.l, 0xff, v123.l
	v_or_b16 v133.l, v117.l, v116.h
	v_lshlrev_b16 v117.l, 8, v126.l
	v_and_b16 v116.l, 0xff, v123.h
	v_and_b16 v116.h, 0xff, v124.l
	v_lshlrev_b16 v118.h, 8, v119.l
	v_lshlrev_b16 v119.l, 8, v120.l
	v_or_b16 v133.h, v117.h, v117.l
	v_and_b16 v117.l, 0xff, v124.h
	v_lshlrev_b16 v117.h, 8, v122.l
	v_lshlrev_b16 v119.h, 8, v121.l
	v_or_b16 v134.h, v116.l, v118.h
	v_or_b16 v135.l, v116.h, v119.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_or_b16 v134.l, v118.l, v117.h
	v_or_b16 v135.h, v117.l, v119.h
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[116:119], v96 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[120:123], v97 offset1:1
	ds_load_2addr_stride64_b64 v[124:127], v97 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v106, v128
	ds_store_b16_d16_hi v106, v128 offset:32
	ds_store_b16 v106, v129 offset:64
	ds_store_b16_d16_hi v106, v129 offset:96
	ds_store_b16 v98, v130
	ds_store_b16_d16_hi v98, v130 offset:32
	ds_store_b16 v98, v131 offset:64
	ds_store_b16_d16_hi v98, v131 offset:96
	ds_store_b16 v99, v132
	ds_store_b16_d16_hi v99, v132 offset:32
	ds_store_b16 v99, v133 offset:64
	ds_store_b16_d16_hi v99, v133 offset:96
	ds_store_b16 v100, v134
	ds_store_b16_d16_hi v100, v134 offset:32
	ds_store_b16 v100, v135 offset:64
	ds_store_b16_d16_hi v100, v135 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[128:131], v107 offset1:8
	ds_load_2addr_stride64_b64 v[132:135], v101 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[128:129], v[108:109], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[130:131], v[108:109], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[128:129], v[110:111], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[130:131], v[110:111], v[25:32] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[108:111], v102 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[128:129], v[112:113], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[130:131], v[112:113], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[128:129], v[114:115], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[130:131], v[114:115], v[57:64] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[112:115], v103 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[132:133], v[73:74], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[134:135], v[73:74], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[132:133], v[75:76], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[134:135], v[75:76], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[132:133], v[69:70], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[134:135], v[69:70], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[132:133], v[71:72], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[134:135], v[71:72], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[108:109], v[65:66], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[110:111], v[65:66], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[108:109], v[67:68], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[110:111], v[67:68], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[108:109], v[116:117], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[110:111], v[116:117], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[108:109], v[118:119], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[110:111], v[118:119], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[112:113], v[120:121], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[114:115], v[120:121], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[112:113], v[122:123], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[114:115], v[122:123], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[112:113], v[124:125], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[114:115], v[124:125], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[112:113], v[126:127], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[114:115], v[126:127], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v80, v1
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v74, v3
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v84, v5
	v_cvt_f32_i32_e32 v83, v6
	v_cvt_f32_i32_e32 v82, v7
	v_cvt_f32_i32_e32 v81, v8
	v_cvt_f32_i32_e32 v94, v9
	v_cvt_f32_i32_e32 v73, v10
	v_cvt_f32_i32_e32 v71, v11
	v_cvt_f32_i32_e32 v70, v12
	v_cvt_f32_i32_e32 v69, v13
	v_cvt_f32_i32_e32 v97, v14
	v_cvt_f32_i32_e32 v96, v15
	v_cvt_f32_i32_e32 v95, v16
	v_cvt_f32_i32_e32 v68, v17
	v_cvt_f32_i32_e32 v67, v18
	v_cvt_f32_i32_e32 v65, v19
	v_cvt_f32_i32_e32 v66, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v77, v22
	v_cvt_f32_i32_e32 v75, v23
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v85, v25
	v_cvt_f32_i32_e32 v25, v26
	v_cvt_f32_i32_e32 v24, v27
	v_cvt_f32_i32_e32 v22, v28
	v_cvt_f32_i32_e32 v20, v29
	v_cvt_f32_i32_e32 v93, v30
	v_cvt_f32_i32_e32 v87, v31
	v_cvt_f32_i32_e32 v86, v32
	v_cvt_f32_i32_e32 v23, v33
	v_cvt_f32_i32_e32 v21, v34
	v_cvt_f32_i32_e32 v18, v35
	v_cvt_f32_i32_e32 v19, v36
	v_cvt_f32_i32_e32 v29, v37
	v_cvt_f32_i32_e32 v28, v38
	v_cvt_f32_i32_e32 v27, v39
	v_cvt_f32_i32_e32 v26, v40
	v_cvt_f32_i32_e32 v34, v41
	v_cvt_f32_i32_e32 v17, v42
	v_cvt_f32_i32_e32 v16, v43
	v_cvt_f32_i32_e32 v14, v44
	v_cvt_f32_i32_e32 v12, v45
	v_cvt_f32_i32_e32 v37, v46
	v_cvt_f32_i32_e32 v36, v47
	v_cvt_f32_i32_e32 v35, v48
	v_cvt_f32_i32_e32 v15, v49
	v_cvt_f32_i32_e32 v13, v50
	v_cvt_f32_i32_e32 v10, v51
	v_cvt_f32_i32_e32 v11, v52
	v_cvt_f32_i32_e32 v33, v53
	v_cvt_f32_i32_e32 v32, v54
	v_cvt_f32_i32_e32 v31, v55
	v_cvt_f32_i32_e32 v30, v56
	v_cvt_f32_i32_e32 v38, v57
	v_cvt_f32_i32_e32 v9, v58
	v_cvt_f32_i32_e32 v4, v59
	v_cvt_f32_i32_e32 v3, v60
	v_cvt_f32_i32_e32 v2, v61
	v_cvt_f32_i32_e32 v41, v62
	v_cvt_f32_i32_e32 v40, v63
	v_cvt_f32_i32_e32 v39, v64
	v_dual_mov_b32 v6, s28 :: v_dual_mov_b32 v5, s40
	v_mov_b32_e32 v7, v92
	v_mov_b32_e32 v1, v91
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 48, v88
	v_or_b32_e32 v45, 16, v88
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_mul_lo_u32 v6, s34, v6
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s17, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v42, s0, s40, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v43, null, s41, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v8, 32, v88
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_mov_b32 s28, s16
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[42:43]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v43, s1, s40, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v44, null, s41, 0, s1
	v_add_co_u32 v45, s1, s40, v45
	v_add_co_ci_u32_e64 v46, null, s41, 0, s1
	v_add_co_u32 v47, s1, s40, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v48, null, s41, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[36:37], v[45:46]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[38:39], v[45:46]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[36:37], v[43:44]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[36:37], v[47:48]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[38:39], v[47:48]
	v_cmp_gt_i64_e64 s2, s[38:39], v[43:44]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v8, 1, v47
	v_lshlrev_b32_e32 v44, 1, v45
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v43, 1, v43
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	s_and_b32 s3, s3, s4
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v44, 0x80000000, v44, s3
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	v_cndmask_b32_e64 v43, 0x80000000, v43, s1
	s_clause 0x3
	buffer_load_u16 v45, v8, s[28:31], 0 offen
	buffer_load_u16 v44, v44, s[28:31], 0 offen
	buffer_load_u16 v43, v43, s[28:31], 0 offen
	buffer_load_u16 v42, v42, s[28:31], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_lshl_or_b32 v8, s33, 8, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s29, s19, 0xffff
	s_mov_b32 s28, s18
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v48, v89, 2, 0
	v_lshl_add_u32 v49, v89, 1, 0
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v6, v8, v6, 1
	s_mov_b32 s0, 0x76543210
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v102, 3, v1
.Ltmp6:
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v46, v6, s[28:31], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s29, s25, 0xffff
	s_mov_b32 s28, s24
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v44, 16, v44
	v_lshlrev_b32_e32 v45, 16, v45
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v47, 28, v7
	v_lshlrev_b32_e32 v7, 5, v0
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v98, 3, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v54, v80, v45 :: v_dual_and_b32 v99, 4, v0
	v_mul_f32_e32 v52, v96, v45
	v_dual_mul_f32 v61, v82, v45 :: v_dual_and_b32 v50, 32, v7
	v_mul_f32_e32 v55, v78, v45
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v51, v98, 9, 0
.Ltmp10:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v57, v74, v45 :: v_dual_and_b32 v8, 0x60, v0
	v_dual_mul_f32 v59, v84, v45 :: v_dual_and_b32 v100, 8, v0
	v_dual_mul_f32 v56, v76, v45 :: v_dual_lshlrev_b32 v101, 4, v0
	v_dual_mul_f32 v60, v83, v45 :: v_dual_lshlrev_b32 v7, 5, v98
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v47, v48, v50, v47
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v104, v99, 2, v51
.Ltmp12:
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v62, v81, v45 :: v_dual_lshlrev_b32 v43, 16, v43
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v69, v69, v45 :: v_dual_lshlrev_b32 v42, 16, v42
	v_mul_f32_e32 v50, v94, v45
	v_mul_f32_e32 v51, v97, v45
	v_mul_f32_e32 v53, v95, v45
	v_mul_f32_e32 v64, v73, v45
	v_mul_f32_e32 v71, v71, v45
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v70, v70, v45 :: v_dual_lshlrev_b32 v45, 16, v46
	v_dual_mul_f32 v73, v93, v44 :: v_dual_lshlrev_b32 v6, 1, v1
	v_mul_f32_e32 v46, v85, v44
	v_dual_mul_f32 v74, v87, v44 :: v_dual_mul_f32 v41, v41, v42
	v_dual_mul_f32 v76, v86, v44 :: v_dual_mul_f32 v39, v39, v42
	v_dual_mul_f32 v34, v34, v43 :: v_dual_mul_f32 v87, v67, v44
	v_dual_mul_f32 v36, v36, v43 :: v_dual_mul_f32 v95, v66, v44
	v_dual_mul_f32 v38, v38, v42 :: v_dual_mul_f32 v65, v65, v44
	v_dual_mul_f32 v40, v40, v42 :: v_dual_mul_f32 v97, v77, v44
	v_dual_mul_f32 v86, v68, v44 :: v_dual_mul_f32 v23, v23, v43
	v_dual_mul_f32 v96, v79, v44 :: v_dual_mul_f32 v107, v21, v43
	v_dual_mul_f32 v105, v75, v44 :: v_dual_mul_f32 v110, v29, v43
	v_dual_mul_f32 v72, v72, v44 :: v_dual_mul_f32 v109, v18, v43
	v_dual_mul_f32 v25, v25, v44 :: v_dual_mul_f32 v108, v19, v43
	v_dual_mul_f32 v24, v24, v44 :: v_dual_mul_f32 v27, v27, v43
	v_dual_mul_f32 v106, v22, v44 :: v_dual_mul_f32 v17, v17, v43
	v_dual_mul_f32 v44, v20, v44 :: v_dual_mul_f32 v111, v14, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v47, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v49 offset:512
	ds_load_b128 v[19:22], v49 offset:528
	ds_load_b128 v[81:84], v49
	ds_load_b128 v[91:94], v49 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v37, v37, v43
	v_mul_f32_e32 v85, v35, v43
	v_dual_mul_f32 v28, v28, v43 :: v_dual_mul_f32 v15, v15, v42
	v_dual_mul_f32 v26, v26, v43 :: v_dual_mul_f32 v113, v13, v42
	v_dual_mul_f32 v16, v16, v43 :: v_dual_mul_f32 v11, v11, v42
	v_dual_mul_f32 v112, v12, v43 :: v_dual_mul_f32 v117, v30, v42
	v_mul_f32_e32 v10, v10, v42
	v_mul_f32_e32 v114, v33, v42
	v_mul_f32_e32 v115, v32, v42
	v_mul_f32_e32 v116, v31, v42
	v_mul_f32_e32 v9, v9, v42
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v4, v4, v42 :: v_dual_mul_f32 v35, v34, v77
	v_mul_f32_e32 v3, v3, v42
	s_waitcnt lgkmcnt(2)
	v_dual_mul_f32 v2, v2, v42 :: v_dual_mul_f32 v31, v37, v20
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v58, v50, v77 :: v_dual_mul_f32 v63, v51, v20
	v_dual_mul_f32 v67, v52, v21 :: v_dual_mul_f32 v68, v53, v22
	v_mul_f32_e32 v29, v36, v21
	v_dual_mul_f32 v66, v46, v77 :: v_dual_mul_f32 v47, v73, v20
	v_dual_mul_f32 v46, v74, v21 :: v_dual_mul_f32 v45, v76, v22
	v_mul_f32_e32 v18, v38, v77
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v12, v41, v20 :: v_dual_mul_f32 v49, v54, v81
	v_dual_mul_f32 v14, v39, v22 :: v_dual_mul_f32 v51, v57, v83
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v52, v56, v84 :: v_dual_mul_f32 v57, v62, v94
	v_dual_mul_f32 v50, v55, v82 :: v_dual_mul_f32 v55, v61, v93
	v_dual_mul_f32 v54, v60, v92 :: v_dual_mul_f32 v53, v59, v91
	v_dual_mul_f32 v62, v69, v19 :: v_dual_mul_f32 v61, v70, v80
	v_dual_mul_f32 v60, v71, v79 :: v_dual_mul_f32 v59, v64, v78
	v_dual_mul_f32 v74, v65, v83 :: v_dual_mul_f32 v75, v95, v84
	v_dual_mul_f32 v71, v87, v82 :: v_dual_mul_f32 v70, v86, v81
	v_dual_mul_f32 v76, v97, v92 :: v_dual_mul_f32 v77, v96, v91
	v_dual_mul_f32 v56, v44, v19 :: v_dual_mul_f32 v69, v25, v78
	v_dual_mul_f32 v64, v106, v80 :: v_dual_mul_f32 v65, v24, v79
	v_dual_mul_f32 v30, v85, v22 :: v_dual_mul_f32 v13, v40, v21
	v_dual_mul_f32 v72, v72, v94 :: v_dual_mul_f32 v73, v105, v93
	v_dual_mul_f32 v41, v109, v83 :: v_dual_mul_f32 v42, v108, v84
	v_dual_mul_f32 v43, v107, v82 :: v_dual_mul_f32 v40, v110, v91
	v_dual_mul_f32 v44, v23, v81 :: v_dual_mul_f32 v37, v26, v94
	v_dual_mul_f32 v38, v27, v93 :: v_dual_mul_f32 v39, v28, v92
	v_dual_mul_f32 v32, v112, v19 :: v_dual_mul_f32 v33, v111, v80
	v_dual_mul_f32 v34, v16, v79 :: v_dual_mul_f32 v25, v11, v84
	v_dual_mul_f32 v36, v17, v78 :: v_dual_mul_f32 v21, v116, v93
	v_dual_mul_f32 v26, v10, v83 :: v_dual_mul_f32 v27, v113, v82
	v_dual_mul_f32 v28, v15, v81 :: v_dual_mul_f32 v15, v2, v19
	v_dual_mul_f32 v16, v3, v80 :: v_dual_mul_f32 v19, v4, v79
	v_mul_f32_e32 v22, v9, v78
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v49|, |v50|
	v_max3_f32 v3, |v52|, |v53|, |v54|
	v_max3_f32 v9, |v59|, |v60|, |v61|
	v_max3_f32 v10, |v62|, |v63|, |v67|
	v_max_f32_e64 v11, |v70|, |v71|
	v_max3_f32 v17, |v75|, |v77|, |v76|
	v_max3_f32 v79, |v69|, |v65|, |v64|
	v_max3_f32 v80, |v56|, |v47|, |v46|
	v_max3_f32 v4, |v55|, |v57|, |v58|
	v_max3_f32 v78, |v73|, |v72|, |v66|
	v_max_f32_e64 v81, |v44|, |v43|
	v_max3_f32 v82, |v42|, |v40|, |v39|
	v_max3_f32 v84, |v36|, |v34|, |v33|
	v_max3_f32 v85, |v32|, |v31|, |v29|
	v_max3_f32 v2, v2, |v51|, v3
	v_max3_f32 v3, v9, v10, |v68|
	v_max3_f32 v9, v11, |v74|, v17
	v_max3_f32 v10, v79, v80, |v45|
	v_max3_f32 v83, |v38|, |v37|, |v35|
	v_max3_f32 v11, v81, |v41|, v82
	v_max3_f32 v17, v84, v85, |v30|
	v_max3_f32 v2, v2, v4, v3
	v_max3_f32 v3, v9, v78, v10
.Ltmp14:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v20, v117, v94 :: v_dual_mul_f32 v23, v115, v92
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v11, v83, v17
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4)
	v_permlanex16_b32 v17, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v24, v114, v91
.Ltmp18:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v86, |v28|, |v27|
	v_max3_f32 v93, |v15|, |v12|, |v13|
	v_max_f32_e32 v11, v11, v11
	v_max3_f32 v92, |v22|, |v19|, |v16|
	v_max_f32_e32 v17, v17, v17
	v_max3_f32 v87, |v25|, |v24|, |v23|
	v_max3_f32 v91, |v21|, |v20|, |v18|
.Ltmp19:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v81, 0x680, v101, v7
.Ltmp20:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v80, v92, v93, |v14|
.Ltmp21:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v78, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp22:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v79, v86, |v26|, v87
.Ltmp23:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v103, v99, 6, 0
	v_xor_b32_e32 v48, v7, v8
	v_lshl_add_u32 v10, v100, 4, v104
	v_xor_b32_e32 v82, v81, v8
.Ltmp24:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v9, v79, v91, v80
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add3_u32 v10, v10, v6, v48
	v_add_nc_u32_e32 v1, 0, v1
	v_permlanex16_b32 v79, v9, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp26:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v78, v78
	v_max_f32_e32 v78, v2, v11
.Ltmp27:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v103, v102, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp28:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v79, v79
	v_dual_max_f32 v79, v3, v17 :: v_dual_max_f32 v80, v4, v80
	s_delay_alu instid0(VALU_DEP_2)
	v_max_f32_e32 v81, v9, v81
.Ltmp29:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v10, v[78:81]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[78:81], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v2, v78 :: v_dual_max_f32 v9, v79, v79
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v78, v78 :: v_dual_mov_b32 v4, v79
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v10, v80 :: v_dual_max_f32 v11, v81, v81
	v_mov_b32_dpp v81, v81 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v80, v80
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v81, v81
	v_max_f32_e32 v2, v2, v2
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v78, 1, v8
	v_lshl_add_u32 v81, v98, 4, 0
.Ltmp36:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v90, v8
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v48
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v2, v3, v2 :: v_dual_max_f32 v3, v9, v4
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v9, v11 :: v_dual_max_f32 v4, v17, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v3
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v48, v4 :: v_dual_max_f32 v9, v9, v9
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v17, v17
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v9, v11, v9 :: v_dual_max_f32 v10, v10, v10
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v11, 3, v100
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v17 :: v_dual_max_f32 v48, v48, v48
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v2, v2, v10
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v78, v1, v78, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v4, v48 :: v_dual_mov_b32 v17, v2
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v4, v9 :: v_dual_mov_b32 v79, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v48, v3
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v80, 5, v99
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v1, v2, v17 :: v_dual_max_f32 v48, v48, v48
.Ltmp50:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v17.h, 0
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v9, v4
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v9, v81, v80, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v3, v48 :: v_dual_max_f32 v3, v10, v79
.Ltmp54:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.h, v17.h
	v_mov_b16_e32 v81.h, v17.h
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v78, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v9
.Ltmp56:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 4, v89
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v48, 48, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v10, s0, s40, v9
	v_add_co_ci_u32_e64 v11, null, s41, 0, s0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v78, 32, v9
	v_or_b32_e32 v79, 16, v9
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v9, v9, v5
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[36:37], v[10:11]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[38:39], v[10:11]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_dual_max_f32 v82, v1, v1 :: v_dual_max_f32 v3, v3, v3
	v_max_f32_e32 v83, v2, v2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s40, v48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v48, 0x2b8cbccc, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s41, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v82, 0x2b8cbccc, v83
	v_max_f32_e32 v83, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s40, v78
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v83
	v_div_scale_f32 v97, s1, v83, 0x40e00000, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v86
	v_fma_f32 v99, -v86, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v4, v4 :: v_dual_fmac_f32 v93, v99, v93
	v_max_f32_e32 v84, 0x2b8cbccc, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s41, 0, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v84
	v_rcp_f32_e32 v95, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v101, -v91, v95, 1.0
	v_fmac_f32_e32 v95, v101, v95
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v48
	v_div_scale_f32 v96, vcc_lo, v48, 0x40e00000, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v92, v85
	v_fma_f32 v78, -v85, v92, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v92, v78, v92
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s40, v79
	v_add_co_ci_u32_e64 v79, null, s41, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v99, v96, v92
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v82
	v_div_scale_f32 v98, s2, v82, 0x40e00000, v82
	v_fma_f32 v104, -v85, v99, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v94, v87
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[1:2]
	v_cmp_le_i64_e64 s6, s[36:37], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[78:79]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v100, -v87, v94, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v94, v100, v94
	v_mul_f32_e32 v101, v98, v94
	v_div_scale_f32 v102, s3, v84, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v106, -v87, v101, v98
	v_mul_f32_e32 v103, v102, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v101, v106, v94
	v_fma_f32 v107, -v91, v103, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v103, v107, v95 :: v_dual_mul_f32 v100, v97, v93
	v_fmac_f32_e32 v99, v104, v92
	v_fma_f32 v105, -v86, v100, v97
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v10, -v85, v99, v96
	v_fma_f32 v85, -v87, v101, v98
	v_fmac_f32_e32 v100, v105, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v10, v10, v92, v99
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v11, -v86, v100, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v10, v10, 0x40e00000, v48
	v_fma_f32 v86, -v91, v103, v102
	v_div_fmas_f32 v11, v11, v93, v100
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v10.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[3:4]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v85, v85, v94, v101
	s_mov_b32 vcc_lo, s3
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v80
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v11, v11, 0x40e00000, v83
	v_div_fmas_f32 v48, v86, v95, v103
	v_div_fixup_f32 v2, v85, 0x40e00000, v82
	.loc	1 1046 48 is_stmt 1             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[3:4]
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v10, v1, 0x7fff
	v_mov_b16_e32 v17.l, v11.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fixup_f32 v48, v48, 0x40e00000, v84
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v2.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v10
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v17.l, v48.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v93, null, v79, v79, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v11, v80, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v116, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v131, -v93, v116, 1.0
	v_fmac_f32_e32 v116, v131, v116
	v_div_scale_f32 v82, null, v79, v79, v52
	v_div_scale_f32 v91, null, v79, v79, v55
	v_div_scale_f32 v80, null, v79, v79, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v112, v82
	v_rcp_f32_e32 v115, v91
	v_div_scale_f32 v84, null, v79, v79, v53
	v_div_scale_f32 v86, null, v79, v79, v54
	v_div_scale_f32 v101, null, v79, v79, v61
	v_rcp_f32_e32 v111, v80
	v_div_scale_f32 v95, null, v79, v79, v58
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v127, -v82, v112, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v3, 1, v81
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v130, -v91, v115, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v17
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v103, null, v79, v79, v62
	v_fmac_f32_e32 v112, v127, v112
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v2, v3, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v3, null, v79, v79, v49
	v_fmac_f32_e32 v115, v130, v115
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v48, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v48, null, v79, v79, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v109, v3
	v_div_scale_f32 v107, null, v79, v79, v67
	v_div_scale_f32 v108, null, v79, v79, v68
	v_rcp_f32_e32 v110, v48
	v_rcp_f32_e32 v113, v84
	v_rcp_f32_e32 v114, v86
	v_rcp_f32_e32 v120, v101
	v_div_scale_f32 v97, null, v79, v79, v59
	v_div_scale_f32 v99, null, v79, v79, v60
	v_div_scale_f32 v105, null, v79, v79, v63
	v_rcp_f32_e32 v117, v95
	v_rcp_f32_e32 v121, v103
	v_rcp_f32_e32 v123, v107
	v_rcp_f32_e32 v124, v108
	v_fma_f32 v17, -v3, v109, 1.0
	v_fma_f32 v126, -v80, v111, 1.0
	v_div_scale_f32 v4, vcc_lo, v49, v79, v49
	v_div_scale_f32 v81, s9, v51, v79, v51
	v_rcp_f32_e32 v118, v97
	v_rcp_f32_e32 v119, v99
	v_rcp_f32_e32 v122, v105
	v_fma_f32 v125, -v48, v110, 1.0
	v_fma_f32 v128, -v84, v113, 1.0
	v_fma_f32 v129, -v86, v114, 1.0
	v_fma_f32 v135, -v101, v120, 1.0
	v_fmac_f32_e32 v109, v17, v109
	v_fmac_f32_e32 v111, v126, v111
	v_div_scale_f32 v78, s8, v50, v79, v50
	v_div_scale_f32 v83, s10, v52, v79, v52
	v_div_scale_f32 v87, s12, v54, v79, v54
	v_fma_f32 v132, -v95, v117, 1.0
	v_fma_f32 v136, -v103, v121, 1.0
	v_fma_f32 v138, -v107, v123, 1.0
	v_fma_f32 v139, -v108, v124, 1.0
	v_dual_fmac_f32 v110, v125, v110 :: v_dual_fmac_f32 v113, v128, v113
	v_fmac_f32_e32 v114, v129, v114
	v_dual_fmac_f32 v120, v135, v120 :: v_dual_mul_f32 v125, v4, v109
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v126, v78, v110 :: v_dual_mul_f32 v127, v81, v111
	v_mul_f32_e32 v130, v87, v114
	v_div_scale_f32 v85, s11, v53, v79, v53
	v_div_scale_f32 v92, s13, v55, v79, v55
	v_div_scale_f32 v96, s15, v58, v79, v58
	v_div_scale_f32 v104, s19, v62, v79, v62
	v_fma_f32 v133, -v97, v118, 1.0
	v_fma_f32 v134, -v99, v119, 1.0
	v_fma_f32 v137, -v105, v122, 1.0
	v_fmac_f32_e32 v117, v132, v117
	v_dual_fmac_f32 v121, v136, v121 :: v_dual_fmac_f32 v124, v139, v124
	v_dual_fmac_f32 v123, v138, v123 :: v_dual_mul_f32 v128, v83, v112
	v_fma_f32 v17, -v3, v125, v4
	v_fma_f32 v139, -v80, v127, v81
	v_div_scale_f32 v94, s14, v57, v79, v57
	v_div_scale_f32 v98, s16, v59, v79, v59
	v_div_scale_f32 v100, s17, v60, v79, v60
	v_div_scale_f32 v102, s18, v61, v79, v61
	v_dual_fmac_f32 v118, v133, v118 :: v_dual_fmac_f32 v119, v134, v119
	v_fmac_f32_e32 v122, v137, v122
	v_dual_mul_f32 v129, v85, v113 :: v_dual_mul_f32 v132, v94, v116
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mul_f32 v131, v92, v115 :: v_dual_mul_f32 v134, v98, v118
	v_dual_mul_f32 v133, v96, v117 :: v_dual_mul_f32 v136, v102, v120
	v_fma_f32 v137, -v48, v126, v78
	v_dual_mul_f32 v138, v104, v121 :: v_dual_fmac_f32 v127, v139, v111
	v_fma_f32 v139, -v86, v130, v87
	v_fmac_f32_e32 v125, v17, v109
	v_fma_f32 v17, -v82, v128, v83
	v_dual_mul_f32 v135, v100, v119 :: v_dual_fmac_f32 v126, v137, v110
	v_fma_f32 v137, -v84, v129, v85
	v_fmac_f32_e32 v130, v139, v114
	v_fma_f32 v139, -v95, v133, v96
	v_fmac_f32_e32 v128, v17, v112
	v_fma_f32 v17, -v91, v131, v92
	v_div_scale_f32 v106, s20, v63, v79, v63
	v_fmac_f32_e32 v129, v137, v113
	v_fma_f32 v137, -v93, v132, v94
	v_fmac_f32_e32 v133, v139, v117
	v_fma_f32 v139, -v101, v136, v102
	v_fmac_f32_e32 v131, v17, v115
	v_fma_f32 v17, -v97, v134, v98
	v_fmac_f32_e32 v132, v137, v116
	v_fma_f32 v137, -v99, v135, v100
	v_mul_f32_e32 v140, v106, v122
	v_fmac_f32_e32 v136, v139, v120
	v_fmac_f32_e32 v134, v17, v118
	v_fma_f32 v17, -v103, v138, v104
	v_fmac_f32_e32 v135, v137, v119
	v_fma_f32 v137, -v105, v140, v106
	v_fma_f32 v82, -v82, v128, v83
	v_fma_f32 v139, -v48, v126, v78
	v_dual_fmac_f32 v138, v17, v121 :: v_dual_and_b32 v17, 63, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v140, v137, v122
	v_fma_f32 v137, -v3, v125, v4
	v_fma_f32 v80, -v80, v127, v81
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v1
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v3, s21, s40, v17
	v_add_co_ci_u32_e64 v4, null, s41, 0, s21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, s21, v67, v79, v67
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v81, 0xffff0000, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v91, v131, v92
	v_fma_f32 v92, -v93, v132, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v93, v83, v123
	v_fma_f32 v94, -v95, v133, v96
	v_fma_f32 v96, -v97, v134, v98
	v_fma_f32 v98, -v99, v135, v100
	v_fma_f32 v100, -v101, v136, v102
	v_fma_f32 v101, -v103, v138, v104
	v_div_fmas_f32 v103, v137, v109, v125
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v84, -v84, v129, v85
	v_div_fmas_f32 v104, v139, v110, v126
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v86, v130, v87
	v_div_fmas_f32 v80, v80, v111, v127
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s22, v68, v79, v68
	v_div_fmas_f32 v82, v82, v112, v128
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v51, v80, v79, v51
	v_div_fmas_f32 v84, v84, v113, v129
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v52, v82, v79, v52
	v_div_fmas_f32 v80, v86, v114, v130
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v53, v84, v79, v53
	v_div_fmas_f32 v82, v91, v115, v131
	s_mov_b32 vcc_lo, s14
	v_div_fixup_f32 v54, v80, v79, v54
	v_div_fmas_f32 v84, v92, v116, v132
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v55, v82, v79, v55
	v_div_fmas_f32 v80, v94, v117, v133
	s_mov_b32 vcc_lo, s16
	v_div_fixup_f32 v57, v84, v79, v57
	v_div_fmas_f32 v82, v96, v118, v134
	s_mov_b32 vcc_lo, s17
	v_div_fixup_f32 v58, v80, v79, v58
	v_div_fmas_f32 v84, v98, v119, v135
	s_mov_b32 vcc_lo, s18
	v_fma_f32 v99, -v107, v93, v83
	v_div_fmas_f32 v80, v100, v120, v136
	v_dual_mul_f32 v97, v85, v124 :: v_dual_and_b32 v48, 0xffff0000, v2
	s_mov_b32 vcc_lo, s19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v93, v99, v123
	v_div_fixup_f32 v61, v80, v79, v61
	v_div_scale_f32 v80, null, v81, v81, v71
	v_fma_f32 v102, -v105, v140, v106
	v_div_fixup_f32 v59, v82, v79, v59
	v_div_fmas_f32 v82, v101, v121, v138
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v80
	s_mov_b32 vcc_lo, s20
	v_div_scale_f32 v87, null, v81, v81, v70
	v_div_fixup_f32 v60, v84, v79, v60
	v_div_fmas_f32 v84, v102, v122, v140
	v_fma_f32 v91, -v108, v97, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v95, v87
	v_div_fixup_f32 v62, v82, v79, v62
	v_fma_f32 v82, -v107, v93, v83
	v_div_fixup_f32 v63, v84, v79, v63
	v_fma_f32 v84, -v80, v86, 1.0
	v_fmac_f32_e32 v97, v91, v124
	v_div_scale_f32 v91, null, v81, v81, v74
	v_div_scale_f32 v83, s8, v70, v81, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v91
	v_fma_f32 v92, -v87, v95, 1.0
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v85, -v108, v97, v85
	v_div_fmas_f32 v82, v82, v123, v93
	v_div_scale_f32 v93, s9, v71, v81, v71
	s_mov_b32 vcc_lo, s22
	v_div_fixup_f32 v49, v103, v79, v49
	v_div_fmas_f32 v85, v85, v124, v97
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v98, -v91, v84, 1.0
	v_fmac_f32_e32 v95, v92, v95
	v_mul_f32_e32 v97, v93, v86
	v_div_fixup_f32 v50, v104, v79, v50
	v_div_fixup_f32 v67, v82, v79, v67
	v_fmac_f32_e32 v84, v98, v84
	v_mul_f32_e32 v92, v83, v95
	v_div_fixup_f32 v68, v85, v79, v68
	v_fma_f32 v79, -v80, v97, v93
	v_div_scale_f32 v85, null, v81, v81, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v96, -v87, v92, v83
	v_div_scale_f32 v94, null, v81, v81, v75
	v_fmac_f32_e32 v97, v79, v86
	v_div_scale_f32 v98, null, v81, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v92, v96, v95
	v_rcp_f32_e32 v99, v94
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v80, -v80, v97, v93
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v82, s10, v74, v81, v74
	v_fma_f32 v83, -v87, v92, v83
	v_rcp_f32_e32 v87, v85
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, v17, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v95, v92
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v96, -v94, v99, 1.0
	v_div_fmas_f32 v80, v80, v86, v97
	v_rcp_f32_e32 v86, v98
	v_div_fixup_f32 v70, v83, v81, v70
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fma_f32 v95, -v85, v87, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v71, v80, v81, v71
	v_fmac_f32_e32 v87, v95, v87
	v_div_scale_f32 v95, s8, v77, v81, v77
	v_mul_f32_e32 v79, v82, v84
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v98, v86, 1.0
	v_fmac_f32_e32 v99, v96, v99
	v_div_scale_f32 v96, s11, v75, v81, v75
	v_fma_f32 v92, -v91, v79, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v86, v83, v86 :: v_dual_mul_f32 v93, v96, v99
	v_fmac_f32_e32 v79, v92, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v92, -v94, v93, v96
	v_fma_f32 v80, -v91, v79, v82
	v_div_scale_f32 v91, null, v81, v81, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v93, v92, v99
	v_mul_f32_e32 v82, v95, v87
	v_div_fmas_f32 v79, v80, v84, v79
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v91
	v_div_scale_f32 v92, s9, v76, v81, v76
	v_fma_f32 v80, -v94, v93, v96
	v_fma_f32 v84, -v85, v82, v95
	v_div_scale_f32 v94, null, v81, v81, v72
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v74, v79, v81, v74
	v_fmac_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v84, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v91, v83, 1.0
	v_div_fmas_f32 v80, v80, v99, v93
	v_mul_f32_e32 v93, v92, v86
	v_fma_f32 v79, -v85, v82, v95
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v96, v83
	v_div_scale_f32 v96, null, v81, v81, v66
	v_div_fixup_f32 v75, v80, v81, v75
	v_fma_f32 v80, -v98, v93, v92
	v_div_scale_f32 v85, s10, v73, v81, v73
	v_fma_f32 v95, -v94, v84, 1.0
	v_div_fmas_f32 v79, v79, v87, v82
	v_rcp_f32_e32 v82, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v93, v80, v86 :: v_dual_mul_f32 v80, v85, v83
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v87, s8, v72, v81, v72
	v_div_scale_f32 v95, null, v81, v81, v69
	v_div_fixup_f32 v77, v79, v81, v77
	v_fma_f32 v79, -v98, v93, v92
	v_fma_f32 v92, -v91, v80, v85
	v_mul_f32_e32 v97, v87, v84
	v_rcp_f32_e32 v98, v95
	v_fma_f32 v99, -v96, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v79, v79, v86, v93
	v_fma_f32 v86, -v94, v97, v87
	v_fmac_f32_e32 v80, v92, v83
	v_fmac_f32_e32 v82, v99, v82
	v_div_scale_f32 v92, s9, v66, v81, v66
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v95, v98, 1.0
	v_div_fixup_f32 v76, v79, v81, v76
	v_fmac_f32_e32 v97, v86, v84
	v_fma_f32 v79, -v91, v80, v85
	v_mul_f32_e32 v85, v92, v82
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v98, v93, v98
	v_div_scale_f32 v86, s11, v69, v81, v69
	v_div_fmas_f32 v79, v79, v83, v80
	v_fma_f32 v80, -v94, v97, v87
	v_fma_f32 v83, -v96, v85, v92
	v_div_scale_f32 v94, null, v81, v81, v64
	v_mul_f32_e32 v93, v86, v98
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v83, v82
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v91, null, v81, v81, v65
	v_div_fmas_f32 v80, v80, v84, v97
	v_fma_f32 v84, -v95, v93, v86
	v_div_fixup_f32 v73, v79, v81, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v87, v91
	v_fma_f32 v79, -v96, v85, v92
	v_div_scale_f32 v92, null, v81, v81, v56
	v_fmac_f32_e32 v93, v84, v98
	v_fma_f32 v84, -v94, v83, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v72, v80, v81, v72
	v_div_fmas_f32 v79, v79, v82, v85
	v_fma_f32 v82, -v95, v93, v86
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v92
	v_div_scale_f32 v95, null, v81, v81, v47
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v97, -v91, v87, 1.0
	v_div_fmas_f32 v82, v82, v98, v93
	v_rcp_f32_e32 v98, v95
	v_div_scale_f32 v80, s8, v65, v81, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v87, v97, v87
	v_fma_f32 v97, -v92, v84, 1.0
	v_div_scale_f32 v86, s9, v64, v81, v64
	v_div_fixup_f32 v66, v79, v81, v66
	v_div_fixup_f32 v69, v82, v81, v69
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v84, v97, v84
	v_fma_f32 v97, -v95, v98, 1.0
	v_mul_f32_e32 v85, v80, v87
	v_mul_f32_e32 v96, v86, v83
	v_div_scale_f32 v82, s10, v56, v81, v56
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v98, v97, v98
	v_fma_f32 v93, -v91, v85, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v94, v96, v86
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v97, s11, v47, v81, v47
	v_fmac_f32_e32 v85, v93, v87
	v_div_scale_f32 v93, null, v81, v81, v46
	v_dual_fmac_f32 v96, v79, v83 :: v_dual_mul_f32 v79, v82, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v91, v85, v80
	v_rcp_f32_e32 v91, v93
	v_div_scale_f32 v99, null, v81, v81, v45
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v87, v85
	v_fma_f32 v85, -v94, v96, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v92, v79, v82
	v_mul_f32_e32 v87, v97, v98
	v_div_fixup_f32 v65, v80, v81, v65
	v_div_fmas_f32 v83, v85, v83, v96
	v_rcp_f32_e32 v85, v99
	v_fma_f32 v94, -v93, v91, 1.0
	v_fmac_f32_e32 v79, v86, v84
	v_fma_f32 v86, -v95, v87, v97
	v_div_fixup_f32 v64, v83, v81, v64
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v91, v94, v91
	v_div_scale_f32 v94, s8, v46, v81, v46
	v_fmac_f32_e32 v87, v86, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v99, v85, 1.0
	v_div_scale_f32 v86, null, v78, v78, v44
	v_fma_f32 v80, -v92, v79, v82
	v_dual_mul_f32 v82, v94, v91 :: v_dual_fmac_f32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v92, s9, v45, v81, v45
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v95, v87, v97
	v_fma_f32 v84, -v93, v82, v94
	v_div_scale_f32 v95, null, v78, v78, v43
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v56, v79, v81, v56
	v_fmac_f32_e32 v82, v84, v91
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v96, -v86, v83, 1.0
	v_div_fmas_f32 v80, v80, v98, v87
	v_mul_f32_e32 v87, v92, v85
	v_fma_f32 v79, -v93, v82, v94
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v96, v83
	v_div_scale_f32 v96, null, v78, v78, v41
	v_div_fixup_f32 v47, v80, v81, v47
	v_fma_f32 v80, -v99, v87, v92
	v_div_scale_f32 v93, s10, v44, v78, v44
	v_fma_f32 v94, -v95, v84, 1.0
	v_div_fmas_f32 v79, v79, v91, v82
	v_rcp_f32_e32 v82, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v85 :: v_dual_mul_f32 v80, v93, v83
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v91, s8, v43, v78, v43
	v_div_scale_f32 v94, null, v78, v78, v42
	v_div_fixup_f32 v46, v79, v81, v46
	v_fma_f32 v79, -v99, v87, v92
	v_fma_f32 v92, -v86, v80, v93
	v_mul_f32_e32 v97, v91, v84
	v_rcp_f32_e32 v98, v94
	v_fma_f32 v99, -v96, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v92, v83
	v_div_fmas_f32 v79, v79, v85, v87
	v_fma_f32 v85, -v95, v97, v91
	v_fmac_f32_e32 v82, v99, v82
	v_div_scale_f32 v87, s9, v41, v78, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v45, v79, v81, v45
	v_fma_f32 v92, -v94, v98, 1.0
	v_fma_f32 v79, -v86, v80, v93
	v_fmac_f32_e32 v97, v85, v84
	v_mul_f32_e32 v81, v87, v82
	v_div_scale_f32 v86, null, v78, v78, v40
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v98, v92, v98
	v_div_scale_f32 v85, s11, v42, v78, v42
	v_div_fmas_f32 v79, v79, v83, v80
	v_fma_f32 v80, -v95, v97, v91
	v_fma_f32 v83, -v96, v81, v87
	v_rcp_f32_e32 v91, v86
	v_div_scale_f32 v93, null, v78, v78, v39
	v_mul_f32_e32 v92, v85, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v93
	v_div_fmas_f32 v80, v80, v84, v97
	v_fma_f32 v84, -v94, v92, v85
	v_div_fixup_f32 v44, v79, v78, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v86, v91, 1.0
	v_fma_f32 v79, -v96, v81, v87
	v_div_fixup_f32 v43, v80, v78, v43
	v_fmac_f32_e32 v92, v84, v98
	v_div_scale_f32 v80, s8, v40, v78, v40
	v_fmac_f32_e32 v91, v95, v91
	v_fma_f32 v84, -v93, v83, 1.0
	v_div_scale_f32 v87, null, v78, v78, v38
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v81
	v_fma_f32 v81, -v94, v92, v85
	v_mul_f32_e32 v82, v80, v91
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s9, v39, v78, v39
	v_div_scale_f32 v94, null, v78, v78, v37
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v85, v83
	v_div_fmas_f32 v81, v81, v98, v92
	v_fma_f32 v92, -v86, v82, v80
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v87, v84, 1.0
	v_div_fixup_f32 v41, v79, v78, v41
	v_fma_f32 v79, -v93, v95, v85
	v_fmac_f32_e32 v82, v92, v91
	v_div_scale_f32 v92, null, v78, v78, v35
	v_div_fixup_f32 v42, v81, v78, v42
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v81, s10, v38, v78, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v80, -v86, v82, v80
	v_fmac_f32_e32 v95, v79, v83
	v_rcp_f32_e32 v86, v92
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v81, v84
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v37, v78, v37
	v_div_fmas_f32 v80, v80, v91, v82
	v_fma_f32 v82, -v93, v95, v85
	v_div_scale_f32 v98, null, v78, v78, v36
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v87, v79, v81
	v_mul_f32_e32 v91, v96, v97
	v_fma_f32 v93, -v92, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v95
	v_rcp_f32_e32 v83, v98
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v94, v91, v96
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s8, v35, v78, v35
	v_div_fixup_f32 v40, v80, v78, v40
	v_div_fixup_f32 v39, v82, v78, v39
	v_fma_f32 v80, -v87, v79, v81
	v_fmac_f32_e32 v91, v85, v97
	v_mul_f32_e32 v81, v93, v86
	v_fma_f32 v82, -v98, v83, 1.0
	v_div_scale_f32 v85, null, v78, v78, v34
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v36, v78, v36
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v94, v91, v96
	v_fma_f32 v84, -v92, v81, v93
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v94, null, v78, v78, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v38, v79, v78, v38
	v_rcp_f32_e32 v84, v94
	v_div_fmas_f32 v80, v80, v97, v91
	v_mul_f32_e32 v91, v87, v83
	v_fma_f32 v79, -v92, v81, v93
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v37, v80, v78, v37
	v_fma_f32 v80, -v98, v91, v87
	v_div_scale_f32 v92, s10, v34, v78, v34
	v_fmac_f32_e32 v82, v95, v82
	v_fma_f32 v93, -v94, v84, 1.0
	v_div_scale_f32 v95, null, v78, v78, v32
	v_div_fmas_f32 v79, v79, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v91, v80, v83 :: v_dual_fmac_f32 v84, v93, v84
	v_rcp_f32_e32 v81, v95
	v_div_scale_f32 v93, null, v78, v78, v31
	v_mul_f32_e32 v80, v92, v82
	v_div_scale_f32 v86, s8, v33, v78, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v93
	v_div_fixup_f32 v35, v79, v78, v35
	v_fma_f32 v79, -v98, v91, v87
	v_fma_f32 v87, -v85, v80, v92
	v_mul_f32_e32 v96, v86, v84
	v_fma_f32 v98, -v95, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v91
	v_fmac_f32_e32 v80, v87, v82
	v_fma_f32 v83, -v94, v96, v86
	v_fmac_f32_e32 v81, v98, v81
	v_div_scale_f32 v87, s9, v32, v78, v32
	v_fma_f32 v91, -v93, v97, 1.0
	v_div_fixup_f32 v36, v79, v78, v36
	v_fma_f32 v79, -v85, v80, v92
	v_fmac_f32_e32 v96, v83, v84
	v_mul_f32_e32 v83, v87, v81
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v91, null, v78, v78, v29
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v31, v78, v31
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v94, v96, v86
	v_fma_f32 v82, -v95, v83, v87
	v_rcp_f32_e32 v86, v91
	v_div_scale_f32 v94, null, v78, v78, v30
	v_mul_f32_e32 v92, v85, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v94
	v_div_fmas_f32 v80, v80, v84, v96
	v_fma_f32 v84, -v93, v92, v85
	v_div_fixup_f32 v34, v79, v78, v34
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v91, v86, 1.0
	v_fma_f32 v79, -v95, v83, v87
	v_div_fixup_f32 v33, v80, v78, v33
	v_fmac_f32_e32 v92, v84, v97
	v_div_scale_f32 v80, s8, v29, v78, v29
	v_fmac_f32_e32 v86, v96, v86
	v_fma_f32 v84, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v48, v48, v27
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v93, v92, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v48, v48, v28
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s9, v30, v78, v30
	v_div_fmas_f32 v81, v81, v97, v92
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v92, -v91, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v93, v85, v82
	v_div_fixup_f32 v32, v79, v78, v32
	v_div_fixup_f32 v31, v81, v78, v31
	v_rcp_f32_e32 v81, v95
	v_fmac_f32_e32 v83, v92, v86
	v_fma_f32 v79, -v94, v93, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v97, null, v48, v48, v25
	v_fma_f32 v92, -v84, v87, 1.0
	v_fma_f32 v80, -v91, v83, v80
	v_div_scale_f32 v91, null, v48, v48, v26
	v_fmac_f32_e32 v93, v79, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v87, v92, v87
	v_div_scale_f32 v79, s10, v28, v48, v28
	v_rcp_f32_e32 v92, v91
	v_fma_f32 v96, -v95, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v94, v93, v85
	v_mul_f32_e32 v85, v79, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v96, v81
	v_div_scale_f32 v86, s8, v27, v48, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v84, v85, v79
	v_fma_f32 v94, -v91, v92, 1.0
	v_rcp_f32_e32 v99, v97
	v_div_fmas_f32 v82, v83, v82, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v98, v86, v81 :: v_dual_fmac_f32 v85, v96, v87
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s11, v26, v48, v26
	v_div_fixup_f32 v29, v80, v78, v29
	v_div_fixup_f32 v30, v82, v78, v30
	v_fma_f32 v78, -v84, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v94, v92
	v_div_scale_f32 v82, null, v48, v48, v24
	v_fma_f32 v83, -v95, v98, v86
	v_fma_f32 v80, -v97, v99, 1.0
	v_fma_f32 v79, -v91, v93, v94
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v98, v83, v81 :: v_dual_fmac_f32 v99, v80, v99
	v_fmac_f32_e32 v93, v79, v92
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v80, s9, v25, v48, v25
	v_div_fmas_f32 v78, v78, v87, v85
	v_fma_f32 v83, -v95, v98, v86
	v_div_scale_f32 v85, null, v48, v48, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v99
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v28, v78, v48, v28
	v_fma_f32 v86, -v82, v79, 1.0
	v_div_fmas_f32 v81, v83, v81, v98
	v_fma_f32 v83, -v91, v93, v94
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v91, -v97, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s8, v24, v48, v24
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v84, v91, v99
	v_div_fmas_f32 v83, v83, v92, v93
	v_mul_f32_e32 v78, v86, v79
	v_div_fixup_f32 v27, v81, v48, v27
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v97, v84, v80
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v91, -v82, v78, v86
	v_div_fixup_f32 v26, v83, v48, v26
	v_div_scale_f32 v83, null, v48, v48, v21
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s10, v23, v48, v23
	v_div_fmas_f32 v80, v80, v99, v84
	v_fmac_f32_e32 v78, v91, v79
	v_rcp_f32_e32 v92, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v80, v48, v25
	v_fma_f32 v80, -v82, v78, v86
	v_div_scale_f32 v91, null, v48, v48, v20
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v80, v79, v78
	v_div_scale_f32 v79, null, v48, v48, v18
	v_fma_f32 v86, -v83, v92, 1.0
	v_rcp_f32_e32 v93, v91
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s8, v21, v48, v21
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, null, v48, v48, v22
	v_div_fixup_f32 v24, v78, v48, v24
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v91, v93, 1.0
	v_rcp_f32_e32 v95, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v92
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v78, v93
	v_div_scale_f32 v78, s9, v20, v48, v20
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v94, null, v48, v48, v19
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v78, v93
	v_div_scale_f32 v96, s10, v18, v48, v18
	v_fma_f32 v97, -v86, v95, 1.0
	v_rcp_f32_e32 v98, v94
	v_fmac_f32_e32 v85, v84, v92
	v_fma_f32 v84, -v91, v87, v78
	v_mul_f32_e32 v99, v96, v82
	v_fmac_f32_e32 v95, v97, v95
	v_div_scale_f32 v97, s11, v22, v48, v22
	v_div_fixup_f32 v23, v81, v48, v23
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v93
	v_fma_f32 v81, -v79, v99, v96
	v_mul_f32_e32 v83, v97, v95
	v_fma_f32 v84, -v94, v98, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v78, -v91, v87, v78
	v_fmac_f32_e32 v99, v81, v82
	v_fma_f32 v81, -v86, v83, v97
	v_fmac_f32_e32 v98, v84, v98
	v_div_scale_f32 v84, s8, v19, v48, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v79, v99, v96
	v_fmac_f32_e32 v83, v81, v95
	v_div_fmas_f32 v80, v80, v92, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v98
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v48, v48, v16
	v_div_fmas_f32 v78, v78, v93, v87
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v21, v80, v48, v21
	v_div_fmas_f32 v79, v79, v82, v99
	v_fma_f32 v82, -v86, v83, v97
	v_fma_f32 v86, -v94, v81, v84
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v20, v78, v48, v20
	v_div_fixup_f32 v18, v79, v48, v18
	v_div_scale_f32 v79, null, v48, v48, v15
	v_fmac_f32_e32 v81, v86, v98
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v92, null, v48, v48, v14
	v_div_fmas_f32 v82, v82, v95, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v78, -v94, v81, v84
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v85, v87, 1.0
	v_rcp_f32_e32 v94, v92
	v_div_fixup_f32 v22, v82, v48, v22
	v_div_fmas_f32 v78, v78, v98, v81
	v_rcp_f32_e32 v81, v79
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v83, vcc_lo, v16, v48, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v19, v78, v48, v19
	v_div_scale_f32 v80, null, v48, v48, v12
	v_mul_f32_e32 v91, v83, v87
	v_div_scale_f32 v82, null, v48, v48, v13
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v79, v81, 1.0
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v85, v91, v83
	v_rcp_f32_e32 v86, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v78, v81
	v_div_scale_f32 v78, s8, v15, v48, v15
	v_fmac_f32_e32 v91, v95, v87
	v_fma_f32 v98, -v92, v94, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v78, v81
	v_fma_f32 v93, -v80, v84, 1.0
	v_fma_f32 v83, -v85, v91, v83
	v_fma_f32 v96, -v82, v86, 1.0
	v_fmac_f32_e32 v94, v98, v94
	v_fma_f32 v95, -v79, v97, v78
	v_fmac_f32_e32 v84, v93, v84
	v_div_fmas_f32 v83, v83, v87, v91
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v97, v95, v81
	v_div_scale_f32 v93, s9, v12, v48, v12
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v19, v19, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v96, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v78, -v79, v97, v78
	v_div_scale_f32 v96, s10, v13, v48, v13
	v_div_scale_f32 v98, s11, v14, v48, v14
	v_div_fmas_f32 v78, v78, v81, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_cvt_i32_f32_e32 v106, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v93, v84
	v_div_fixup_f32 v15, v78, v48, v15
	v_mul_f32_e32 v100, v96, v86
	v_mul_f32_e32 v101, v98, v94
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v78, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v15, v15
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v99, v93
	v_fma_f32 v95, -v82, v100, v96
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_and_b32_e32 v43, 15, v47
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_and_b32_e32 v47, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v78, 16, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v92, v101, v98
	v_fmac_f32_e32 v100, v95, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v107, v15
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v85, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v104, v18
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v101, v79, v94
	v_fma_f32 v79, -v82, v100, v96
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v80, -v80, v99, v93
	v_div_fixup_f32 v16, v83, v48, v16
	v_fma_f32 v81, -v92, v101, v98
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v99
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v100
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v12, v80, v48, v12
	v_div_fmas_f32 v81, v81, v94, v101
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v79, v48, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v81, v48, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v57
	v_rndne_f32_e32 v57, v58
	v_rndne_f32_e32 v58, v59
	v_rndne_f32_e32 v59, v60
	v_rndne_f32_e32 v60, v61
	v_rndne_f32_e32 v61, v62
	v_rndne_f32_e32 v62, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v68
	v_rndne_f32_e32 v68, v70
	v_rndne_f32_e32 v70, v71
	v_rndne_f32_e32 v71, v74
	v_rndne_f32_e32 v74, v75
	v_rndne_f32_e32 v75, v77
	v_rndne_f32_e32 v33, v33
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v64, v64
	v_rndne_f32_e32 v41, v41
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v84, v37
	v_cvt_i32_f32_e32 v16, v16
	v_and_b32_e32 v37, 15, v72
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v72, 10, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v77, v44
	v_cvt_i32_f32_e32 v86, v36
	v_cvt_i32_f32_e32 v87, v34
	v_cvt_i32_f32_e32 v91, v33
	v_and_b32_e32 v33, 15, v74
	v_and_b32_e32 v34, 15, v75
	v_and_b32_e32 v36, 15, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v74, 0x1800, v72
	v_lshlrev_b32_e32 v75, 6, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v16
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v16, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v79, v41
	v_cvt_i32_f32_e32 v80, v42
	v_cvt_i32_f32_e32 v96, v28
	v_cvt_i32_f32_e32 v97, v27
	v_cvt_i32_f32_e32 v98, v26
	v_cvt_i32_f32_e32 v99, v25
	v_and_b32_e32 v44, 15, v46
	v_and_b32_e32 v46, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v77, 0, v74, v75
	v_and_or_b32 v7, 0x1b00, v16, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v85, v35
	v_cvt_i32_f32_e32 v105, v22
	v_cvt_i32_f32_e32 v81, v40
	v_cvt_i32_f32_e32 v92, v32
	v_cvt_i32_f32_e32 v93, v31
	v_cvt_i32_f32_e32 v95, v30
	v_cvt_i32_f32_e32 v102, v21
	v_cvt_i32_f32_e32 v103, v20
	v_cvt_i32_f32_e32 v108, v12
	v_cvt_i32_f32_e32 v109, v13
	v_cvt_i32_f32_e32 v110, v14
	v_and_b32_e32 v12, 15, v48
	v_and_b32_e32 v13, 15, v49
	v_and_b32_e32 v14, 15, v50
	v_and_b32_e32 v15, 15, v51
	v_and_b32_e32 v18, 15, v52
	v_and_b32_e32 v19, 15, v53
	v_and_b32_e32 v20, 15, v54
	v_and_b32_e32 v21, 15, v55
	v_and_b32_e32 v27, 15, v62
	v_and_b32_e32 v28, 15, v63
	v_and_b32_e32 v30, 15, v68
	v_and_b32_e32 v31, 15, v70
	v_and_b32_e32 v32, 15, v71
	v_and_b32_e32 v40, 15, v65
	v_and_b32_e32 v41, 15, v64
	v_and_b32_e32 v48, 15, v79
	v_and_b32_e32 v49, 15, v80
	v_and_b32_e32 v62, 15, v96
	v_and_b32_e32 v63, 15, v97
	v_and_b32_e32 v64, 15, v98
	v_and_b32_e32 v65, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v6, v77, v8, v6
	v_xad_u32 v7, v7, v89, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v39
	v_cvt_i32_f32_e32 v83, v38
	v_cvt_i32_f32_e32 v94, v29
	v_cvt_i32_f32_e32 v100, v24
	v_cvt_i32_f32_e32 v101, v23
	v_and_b32_e32 v22, 15, v57
	v_and_b32_e32 v23, 15, v58
	v_and_b32_e32 v24, 15, v59
	v_and_b32_e32 v25, 15, v60
	v_and_b32_e32 v26, 15, v61
	v_and_b32_e32 v29, 15, v67
	v_and_b32_e32 v38, 15, v66
	v_and_b32_e32 v39, 15, v69
	v_and_b32_e32 v42, 15, v56
	v_and_b32_e32 v54, 15, v85
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v56, 15, v87
	v_and_b32_e32 v57, 15, v91
	v_and_b32_e32 v70, 15, v104
	v_and_b32_e32 v71, 15, v105
	v_and_b32_e32 v72, 15, v106
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v45, v45
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v6, v[12:15]
	ds_store_b128 v6, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v7
	ds_load_b128 v[22:25], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[30:33]
	ds_store_b128 v6, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v7
	ds_load_b128 v[38:41], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[46:49]
	ds_store_b128 v6, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v7
	ds_load_b128 v[54:57], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[62:65]
	ds_store_b128 v6, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v7
	ds_load_b128 v[70:73], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[18:21]
	ds_store_b128 v6, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v7
	ds_load_b128 v[26:29], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v52, 15, v83
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v45, v45
	v_and_b32_e32 v53, 15, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v35, 15, v76
	v_and_b32_e32 v45, 15, v45
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v6, v[34:37]
	ds_store_b128 v6, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v7
	ds_load_b128 v[42:45], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v92
	v_and_b32_e32 v59, 15, v93
	v_and_b32_e32 v60, 15, v94
	v_and_b32_e32 v61, 15, v95
	v_and_b32_e32 v66, 15, v100
	v_and_b32_e32 v67, 15, v101
	v_and_b32_e32 v68, 15, v102
	v_and_b32_e32 v69, 15, v103
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v27, v41, 4, v33
	v_lshl_or_b32 v33, v55, 4, v47
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v47, 3, v88
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v107
	v_and_b32_e32 v75, 15, v108
	v_and_b32_e32 v77, 15, v110
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v76, 15, v109
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[50:53]
	ds_store_b128 v6, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v7
	ds_load_b128 v[58:61], v7 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s34, 31
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[66:69]
	ds_store_b128 v6, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v7
	ds_load_b128 v[74:77], v7 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v22, 4, v12
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v6, s33, 7, v47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v22, v24, 4, v14
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s34, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 16, v9
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v8, v23, 4, v13
	v_lshl_or_b32 v23, v25, 4, v15
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 32, v9
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v9, s8, v[6:7]
	v_mad_u64_u32 v[13:14], null, v14, s8, v[6:7]
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s8, v[6:7]
	v_add_nc_u32_e32 v16, 48, v9
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v24, v38, 4, v30
	v_lshl_or_b32 v25, v39, 4, v31
	v_lshl_or_b32 v28, v42, 4, v34
	v_lshl_or_b32 v29, v43, 4, v35
	v_lshl_or_b32 v30, v44, 4, v36
	v_lshl_or_b32 v31, v45, 4, v37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[15:16], null, v16, s8, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v6.l, 8, v8.l
	v_and_b16 v6.h, 0xff, v7.l
	v_lshlrev_b16 v7.l, 8, v21.l
	v_and_b16 v7.h, 0xff, v20.l
	v_lshlrev_b16 v8.l, 8, v19.l
	v_and_b16 v8.h, 0xff, v18.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v26, v40, 4, v32
	v_lshl_or_b32 v36, v58, 4, v50
	v_lshl_or_b32 v37, v59, 4, v51
	v_lshl_or_b32 v38, v60, 4, v52
	v_lshl_or_b32 v39, v61, 4, v53
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.h, v2.l, v1.l
	v_or_b16 v18.l, v6.h, v6.l
	v_or_b16 v19.h, v7.h, v7.l
	v_or_b16 v19.l, v8.h, v8.l
	v_cndmask_b32_e32 v9, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v7.l, 8, v31.l
	v_and_b16 v7.h, 0xff, v30.l
	v_lshlrev_b16 v8.l, 8, v29.l
	v_and_b16 v8.h, 0xff, v28.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v54, 4, v46
	v_lshl_or_b32 v34, v56, 4, v48
	v_lshl_or_b32 v35, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v74, 4, v66
	v_lshl_or_b32 v45, v75, 4, v67
	v_lshl_or_b32 v46, v76, 4, v68
	v_lshl_or_b32 v48, v77, 4, v69
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v27.l
	v_and_b16 v2.l, 0xff, v26.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v24.l
	buffer_store_b64 v[18:19], v9, s[28:31], 0 offen
	v_or_b16 v19.h, v7.h, v7.l
	v_or_b16 v19.l, v8.h, v8.l
	v_lshlrev_b16 v7.l, 8, v39.l
	v_and_b16 v7.h, 0xff, v38.l
	v_lshlrev_b16 v8.l, 8, v37.l
	v_and_b16 v8.h, 0xff, v36.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v70, 4, v62
	v_lshl_or_b32 v41, v71, 4, v63
	v_lshl_or_b32 v42, v72, 4, v64
	v_lshl_or_b32 v43, v73, 4, v65
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.h, v2.l, v1.l
	v_or_b16 v18.l, v6.h, v6.l
	v_cndmask_b32_e32 v9, 0x80000000, v13, vcc_lo
	v_lshlrev_b16 v1.l, 8, v35.l
	v_and_b16 v2.l, 0xff, v34.l
	v_lshlrev_b16 v6.l, 8, v33.l
	v_and_b16 v6.h, 0xff, v32.l
	v_or_b16 v13.h, v7.h, v7.l
	v_or_b16 v13.l, v8.h, v8.l
	v_lshlrev_b16 v7.l, 8, v48.l
	v_and_b16 v7.h, 0xff, v46.l
	v_lshlrev_b16 v8.l, 8, v45.l
	v_and_b16 v8.h, 0xff, v44.l
	buffer_store_b64 v[18:19], v9, s[28:31], 0 offen
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v43.l
	v_and_b16 v2.l, 0xff, v42.l
	v_lshlrev_b16 v6.l, 8, v41.l
	v_and_b16 v6.h, 0xff, v40.l
	v_or_b16 v19.h, v7.h, v7.l
	v_or_b16 v19.l, v8.h, v8.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v7, 4, v0
	v_lshrrev_b32_e32 v8, 2, v78
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.h, v2.l, v1.l
	v_cndmask_b32_e32 v9, 0x80000000, v14, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v18.l, v6.h, v6.l
	v_cndmask_b32_e32 v6, 0x80000000, v15, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v7, 2, v7
	v_add_nc_u32_e32 v8, 0, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s34, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[12:13], v9, s[28:31], 0 offen
	buffer_store_b64 v[18:19], v6, s[28:31], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v47
	v_mov_b16_e32 v2.l, v11.h
	v_mov_b16_e32 v1.l, v10.h
	v_add3_u32 v7, v8, v7, v47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s34, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v6, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v7
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[3:4]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s29, s27, 0xffff
	s_mov_b32 s28, s26
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v2, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[28:31], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp57:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 120
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
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 141
		.amdhsa_next_free_sgpr 42
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 141
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14456
; TotalNumSgprs: 44
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 141
; Occupancy: 10
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 0
; COMPUTE_PGM_RSRC2:USER_SGPR: 2
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
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
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x67 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x41 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x15 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp1                          ; DW_AT_low_pc
	.long	.Ltmp2-.Ltmp1                   ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x56:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1237                            ; DW_AT_call_line
	.byte	20                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x63:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltmp3-.Lfunc_begin0
	.quad	.Ltmp4-.Lfunc_begin0
	.quad	.Ltmp5-.Lfunc_begin0
	.quad	.Ltmp6-.Lfunc_begin0
	.quad	.Ltmp7-.Lfunc_begin0
	.quad	.Ltmp8-.Lfunc_begin0
	.quad	.Ltmp9-.Lfunc_begin0
	.quad	.Ltmp10-.Lfunc_begin0
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
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
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
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
	.asciz	"ragged.py"                     ; string offset=7 ; ragged.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=17 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     global_buffer
      - .offset:         80
        .size:           4
        .value_kind:     by_value
      - .offset:         84
        .size:           4
        .value_kind:     by_value
      - .offset:         88
        .size:           4
        .value_kind:     by_value
      - .offset:         92
        .size:           4
        .value_kind:     by_value
      - .offset:         96
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .max_flat_workgroup_size: 256
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     141
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
