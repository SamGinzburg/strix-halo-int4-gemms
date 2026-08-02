	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[28:29], s[0:1], 0x54
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
	s_add_i32 s4, s28, 0xff
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
	s_ashr_i32 s40, s4, 31
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
	s_xor_b32 s41, s13, s40
	s_sub_i32 s33, s41, s40
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
	s_load_b64 s[38:39], s[4:5], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[36:37], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s4, s8, s2
	s_addc_u32 s5, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s29, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v6, s38 :: v_dual_lshlrev_b32 v7, 1, v0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v1, 0x80, v0
	v_mov_b32_e32 v5, s36
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
	s_load_b128 s[16:19], s[0:1], 0x40
	s_load_b128 s[20:23], s[0:1], 0x10
	s_load_b64 s[30:31], s[4:5], 0x0
	s_load_b64 s[34:35], s[2:3], 0x0
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v89, 0xf0, v0
	v_dual_mov_b32 v3, 0 :: v_dual_lshlrev_b32 v90, 4, v88
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v9, 0
	v_dual_mov_b32 v10, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v65, 0 :: v_dual_mov_b32 v66, 0
	v_dual_mov_b32 v67, 0 :: v_dual_mov_b32 v68, 0
	v_dual_mov_b32 v69, 0 :: v_dual_mov_b32 v70, 0
	v_dual_mov_b32 v71, 0 :: v_dual_mov_b32 v72, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v74, 0
	v_dual_mov_b32 v75, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v77, 0 :: v_dual_mov_b32 v78, 0
	v_dual_mov_b32 v79, 0 :: v_dual_mov_b32 v80, 0
	v_dual_mov_b32 v81, 0 :: v_dual_mov_b32 v82, 0
	v_dual_mov_b32 v83, 0 :: v_dual_mov_b32 v84, 0
	v_dual_mov_b32 v85, 0 :: v_dual_mov_b32 v86, 0
	v_dual_mov_b32 v87, 0 :: v_dual_mov_b32 v94, 0
	v_dual_mov_b32 v93, 0 :: v_dual_mov_b32 v96, 0
	v_dual_mov_b32 v95, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v97, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v102, 0
	v_mov_b32_e32 v101, 0
	v_mov_b32_e32 v103, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v18, 5, v0
	s_load_b128 s[24:27], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v78, 31, v0
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v19, 0xe0, v0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s0, s36, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v3, null, s37, 0, s0
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
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[34:35], v[2:3]
	v_bfe_i32 v2, v0, 7, 1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[30:31], v[4:5]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[34:35], v[4:5]
	v_and_b32_e32 v4, 0x7f, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[30:31], v[6:7]
	v_and_b32_e32 v2, 0x88, v2
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[34:35], v[6:7]
	v_lshrrev_b32_e32 v5, 2, v0
	v_lshlrev_b32_e32 v6, 5, v88
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[30:31], v[8:9]
	v_xor_b32_e32 v4, v2, v4
	v_cmp_le_i64_e64 s3, s[30:31], v[10:11]
	v_xor_b32_e32 v2, v92, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s10, s[34:35], v[8:9]
	v_cmp_gt_i64_e64 s11, s[34:35], v[10:11]
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
	v_cmp_le_i64_e64 s5, s[30:31], v[14:15]
	v_cmp_le_i64_e64 s6, s[30:31], v[16:17]
	s_delay_alu instid0(VALU_DEP_4)
	v_xor_b32_e32 v11, 16, v5
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[34:35], v[14:15]
	v_cmp_gt_i64_e64 s14, s[34:35], v[16:17]
	v_add_nc_u32_e32 v14, s36, v18
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[30:31], v[12:13]
	v_add_nc_u32_e32 v96, 0, v11
	v_mov_b32_e32 v11, v1
	v_or3_b32 v6, v2, v8, v6
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s12, s[34:35], v[12:13]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s39, s0, s8
	v_xor_b32_e32 v12, 24, v5
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_lshl_b32 s0, s41, 8
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
	v_mad_u64_u32 v[2:3], null, s29, s38, v[77:78]
	v_add_nc_u32_e32 v97, 0, v12
	v_mov_b32_e32 v12, v1
	v_xor_b32_e32 v13, 0x110, v9
	v_xor_b32_e32 v15, 0x198, v9
	v_xor_b32_e32 v8, 0x88, v9
	v_add_nc_u32_e32 v95, 0, v10
	v_mul_lo_u32 v2, s28, v2
	v_add_nc_u32_e32 v99, 0, v13
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v22, 56, v14
	v_add_nc_u32_e32 v23, 48, v14
	v_add_nc_u32_e32 v24, 40, v14
	v_add_nc_u32_e32 v3, 32, v14
	v_dual_mov_b32 v10, v1 :: v_dual_add_nc_u32 v21, 24, v14
	v_mad_u64_u32 v[79:80], null, v22, s29, v[78:79]
	v_add_nc_u32_e32 v20, 16, v14
	v_add3_u32 v2, v2, s0, v90
	v_add_nc_u32_e32 v19, 8, v14
	v_dual_mov_b32 v27, v1 :: v_dual_add_nc_u32 v100, 0, v15
	v_mov_b32_e32 v15, v1
	v_mad_u64_u32 v[80:81], null, v23, s29, v[78:79]
	v_mad_u64_u32 v[81:82], null, v24, s29, v[78:79]
	v_mad_u64_u32 v[82:83], null, v3, s29, v[78:79]
	v_mad_u64_u32 v[83:84], null, v21, s29, v[78:79]
	v_mad_u64_u32 v[84:85], null, v20, s29, v[78:79]
	v_add_nc_u32_e32 v3, s28, v2
	v_dual_mov_b32 v25, v1 :: v_dual_add_nc_u32 v98, 0, v8
	v_mov_b32_e32 v8, v1
	v_mad_u64_u32 v[85:86], null, v19, s29, v[78:79]
	v_mad_u64_u32 v[86:87], null, v14, s29, v[78:79]
	s_lshl_b32 s0, s40, 8
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
	s_and_b32 s25, s25, 0xffff
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_and_b32 s1, s1, s9
	s_and_b32 s2, s2, s10
	s_and_b32 s3, s3, s11
	s_and_b32 s12, s4, s12
	s_and_b32 s13, s5, s13
	s_and_b32 s9, s27, 0xffff
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s40, s28, 5
	s_mov_b32 s41, 0
	s_mov_b32 s4, s24
	s_mov_b32 s5, s25
	s_mov_b32 s8, s26
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_add_nc_u32_e32 v65, s41, v77
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_add_nc_u32_e32 v66, s41, v78
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v74, s41, v79
	.loc	1 1069 38 is_stmt 0             ; ragged.py:1069:38
	v_add_nc_u32_e32 v67, s41, v86
	v_add_nc_u32_e32 v68, s41, v85
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	v_add_nc_u32_e32 v75, 1, v65
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s29, v65
	v_cmp_gt_i32_e32 vcc_lo, s29, v66
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v69, s41, v84
	v_add_nc_u32_e32 v70, s41, v83
	v_add_nc_u32_e32 v71, s41, v82
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v65, 0x80000000, v87, s0
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s29, v75
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_add_nc_u32_e32 v72, s41, v81
	v_add_nc_u32_e32 v73, s41, v80
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v87, s40, v87
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s41, s41, 32
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v75, 0x80000000, v93, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s15, vcc_lo
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v93, s40, v93
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v76, 0x80000000, v67, s0
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 s0, s39, vcc_lo
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
	s_cmp_lt_i32 s41, s29
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
	v_cvt_f32_i32_e32 v103, v1
	v_cvt_f32_i32_e32 v102, v2
	v_cvt_f32_i32_e32 v101, v3
	v_cvt_f32_i32_e32 v100, v4
	v_cvt_f32_i32_e32 v99, v5
	v_cvt_f32_i32_e32 v98, v6
	v_cvt_f32_i32_e32 v97, v7
	v_cvt_f32_i32_e32 v96, v8
	v_cvt_f32_i32_e32 v95, v9
	v_cvt_f32_i32_e32 v94, v10
	v_cvt_f32_i32_e32 v93, v11
	v_cvt_f32_i32_e32 v87, v12
	v_cvt_f32_i32_e32 v86, v13
	v_cvt_f32_i32_e32 v85, v14
	v_cvt_f32_i32_e32 v84, v15
	v_cvt_f32_i32_e32 v83, v16
	v_cvt_f32_i32_e32 v82, v17
	v_cvt_f32_i32_e32 v81, v18
	v_cvt_f32_i32_e32 v80, v19
	v_cvt_f32_i32_e32 v79, v20
	v_cvt_f32_i32_e32 v78, v21
	v_cvt_f32_i32_e32 v77, v22
	v_cvt_f32_i32_e32 v76, v23
	v_cvt_f32_i32_e32 v75, v24
	v_cvt_f32_i32_e32 v74, v25
	v_cvt_f32_i32_e32 v73, v26
	v_cvt_f32_i32_e32 v72, v27
	v_cvt_f32_i32_e32 v71, v28
	v_cvt_f32_i32_e32 v70, v29
	v_cvt_f32_i32_e32 v69, v30
	v_cvt_f32_i32_e32 v68, v31
	v_cvt_f32_i32_e32 v67, v32
	v_cvt_f32_i32_e32 v66, v33
	v_cvt_f32_i32_e32 v65, v34
	v_cvt_f32_i32_e32 v35, v35
	v_cvt_f32_i32_e32 v34, v36
	v_cvt_f32_i32_e32 v33, v37
	v_cvt_f32_i32_e32 v32, v38
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v29, v41
	v_cvt_f32_i32_e32 v28, v42
	v_cvt_f32_i32_e32 v27, v43
	v_cvt_f32_i32_e32 v26, v44
	v_cvt_f32_i32_e32 v25, v45
	v_cvt_f32_i32_e32 v24, v46
	v_cvt_f32_i32_e32 v23, v47
	v_cvt_f32_i32_e32 v22, v48
	v_cvt_f32_i32_e32 v21, v49
	v_cvt_f32_i32_e32 v20, v50
	v_cvt_f32_i32_e32 v19, v51
	v_cvt_f32_i32_e32 v18, v52
	v_cvt_f32_i32_e32 v17, v53
	v_cvt_f32_i32_e32 v16, v54
	v_cvt_f32_i32_e32 v15, v55
	v_cvt_f32_i32_e32 v14, v56
	v_cvt_f32_i32_e32 v13, v57
	v_cvt_f32_i32_e32 v12, v58
	v_cvt_f32_i32_e32 v11, v59
	v_cvt_f32_i32_e32 v10, v60
	v_cvt_f32_i32_e32 v9, v61
	v_cvt_f32_i32_e32 v4, v62
	v_cvt_f32_i32_e32 v3, v63
	v_cvt_f32_i32_e32 v2, v64
	v_dual_mov_b32 v6, s38 :: v_dual_mov_b32 v5, s36
	v_mov_b32_e32 v7, v92
	v_mov_b32_e32 v1, v91
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 48, v88
	v_or_b32_e32 v39, 16, v88
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s21, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s36, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v37, null, s37, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v8, 32, v88
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_mov_b32 s12, s20
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_mul_lo_u32 v6, s28, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[36:37]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v37, s1, s36, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v38, null, s37, 0, s1
	v_add_co_u32 v39, s1, s36, v39
	v_add_co_ci_u32_e64 v40, null, s37, 0, s1
	v_add_co_u32 v41, s1, s36, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v42, null, s37, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[30:31], v[39:40]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[34:35], v[39:40]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[30:31], v[37:38]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[30:31], v[41:42]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[34:35], v[41:42]
	v_cmp_gt_i64_e64 s2, s[34:35], v[37:38]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v8, 1, v41
	v_lshlrev_b32_e32 v38, 1, v39
	v_lshlrev_b32_e32 v36, 1, v36
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	s_and_b32 s3, s3, s4
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e64 v38, 0x80000000, v38, s3
	v_cndmask_b32_e32 v36, 0x80000000, v36, vcc_lo
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	s_clause 0x3
	buffer_load_u16 v39, v8, s[12:15], 0 offen
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	buffer_load_u16 v36, v36, s[12:15], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_lshl_or_b32 v8, s33, 8, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s13, s23, 0xffff
	s_mov_b32 s12, s22
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v42, v89, 2, 0
	v_lshl_add_u32 v43, v89, 1, 0
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v6, v8, v6, 1
	s_mov_b32 s0, 0x76543210
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v105, 3, v1
.Ltmp6:
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v40, v6, s[12:15], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v38, 16, v38
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v41, 28, v7
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v62, v79, v38 :: v_dual_lshlrev_b32 v39, 16, v39
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v7, 5, v0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v49, v97, v39 :: v_dual_and_b32 v58, 3, v0
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v91, 4, v0
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v51, v95, v39 :: v_dual_and_b32 v8, 0x60, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v59, v82, v38 :: v_dual_and_b32 v44, 32, v7
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v45, v58, 9, 0
.Ltmp10:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v53, v93, v39 :: v_dual_and_b32 v92, 8, v0
	v_dual_mul_f32 v55, v86, v39 :: v_dual_lshlrev_b32 v6, 1, v1
	v_dual_mul_f32 v57, v84, v39 :: v_dual_lshlrev_b32 v104, 4, v0
	v_dual_mul_f32 v46, v100, v39 :: v_dual_lshlrev_b32 v7, 5, v58
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v48, v98, v39 :: v_dual_lshlrev_b32 v37, 16, v37
	v_mul_f32_e32 v47, v99, v39
	v_mul_f32_e32 v50, v96, v39
	v_mul_f32_e32 v52, v94, v39
	v_mul_f32_e32 v54, v87, v39
	v_mul_f32_e32 v56, v85, v39
	v_mul_f32_e32 v60, v81, v38
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v41, v42, v44, v41
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v42, v103, v39
	v_mul_f32_e32 v44, v102, v39
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v108, v91, 2, v45
.Ltmp12:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v45, v101, v39
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v39, v83, v39 :: v_dual_lshlrev_b32 v36, 16, v36
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v61, v80, v38 :: v_dual_lshlrev_b32 v40, 16, v40
	v_mul_f32_e32 v69, v69, v38
	v_mul_f32_e32 v63, v78, v38
	v_dual_mul_f32 v64, v77, v38 :: v_dual_mul_f32 v35, v35, v37
	v_mul_f32_e32 v76, v76, v38
	v_mul_f32_e32 v75, v75, v38
	v_dual_mul_f32 v74, v74, v38 :: v_dual_mul_f32 v77, v32, v37
	v_mul_f32_e32 v73, v73, v38
	v_dual_mul_f32 v72, v72, v38 :: v_dual_mul_f32 v79, v30, v37
	v_mul_f32_e32 v71, v71, v38
	v_dual_mul_f32 v70, v70, v38 :: v_dual_mul_f32 v81, v28, v37
	v_dual_mul_f32 v68, v68, v38 :: v_dual_mul_f32 v83, v26, v37
	v_dual_mul_f32 v38, v67, v38 :: v_dual_mul_f32 v85, v24, v37
	v_dual_mul_f32 v66, v66, v37 :: v_dual_mul_f32 v21, v21, v36
	v_mul_f32_e32 v65, v65, v37
	v_dual_mul_f32 v34, v34, v37 :: v_dual_mul_f32 v87, v17, v36
	v_mul_f32_e32 v67, v33, v37
	v_mul_f32_e32 v78, v31, v37
	v_dual_mul_f32 v80, v29, v37 :: v_dual_mul_f32 v93, v16, v36
	v_dual_mul_f32 v82, v27, v37 :: v_dual_mul_f32 v13, v13, v36
	v_dual_mul_f32 v84, v25, v37 :: v_dual_mul_f32 v15, v15, v36
	v_dual_mul_f32 v86, v23, v37 :: v_dual_mul_f32 v9, v9, v36
	v_dual_mul_f32 v37, v22, v37 :: v_dual_mul_f32 v20, v20, v36
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v41, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[22:25], v43
	ds_load_b128 v[26:29], v43 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v40, v19, v36
	v_mul_f32_e32 v41, v18, v36
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[16:19], v43 offset:512
	ds_load_b128 v[30:33], v43 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v14, v14, v36
	v_mul_f32_e32 v12, v12, v36
	v_mul_f32_e32 v11, v11, v36
	v_mul_f32_e32 v10, v10, v36
	v_mul_f32_e32 v4, v4, v36
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v2, v2, v36
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v106, v91, 6, 0
	v_xor_b32_e32 v107, v7, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_lshl_add_u32 v58, v58, 4, 0
.Ltmp14:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v36, v42, v22 :: v_dual_add_nc_u32 v1, 0, v1
	v_dual_mul_f32 v42, v44, v23 :: v_dual_mul_f32 v43, v45, v24
	v_dual_mul_f32 v44, v46, v25 :: v_dual_mul_f32 v45, v47, v26
	v_dual_mul_f32 v46, v48, v27 :: v_dual_mul_f32 v47, v49, v28
	v_dual_mul_f32 v48, v50, v29 :: v_dual_mul_f32 v49, v51, v16
	v_dual_mul_f32 v50, v52, v17 :: v_dual_mul_f32 v51, v53, v18
	v_dual_mul_f32 v52, v54, v19 :: v_dual_mul_f32 v53, v55, v30
	v_dual_mul_f32 v54, v56, v31 :: v_dual_mul_f32 v73, v73, v17
	v_mul_f32_e32 v55, v57, v32
	v_mul_f32_e32 v39, v39, v33
	v_dual_mul_f32 v56, v59, v22 :: v_dual_mul_f32 v57, v60, v23
	v_dual_mul_f32 v59, v61, v24 :: v_dual_mul_f32 v60, v62, v25
	v_mul_f32_e32 v71, v71, v19
	v_dual_mul_f32 v61, v63, v26 :: v_dual_mul_f32 v62, v64, v27
	v_mul_f32_e32 v35, v35, v24
	v_dual_mul_f32 v63, v76, v28 :: v_dual_mul_f32 v64, v75, v29
	v_dual_mul_f32 v69, v69, v31 :: v_dual_mul_f32 v74, v74, v16
	v_dual_mul_f32 v65, v65, v23 :: v_dual_mul_f32 v72, v72, v18
	v_dual_mul_f32 v75, v77, v27 :: v_dual_mul_f32 v70, v70, v30
	v_dual_mul_f32 v77, v79, v29 :: v_dual_mul_f32 v68, v68, v32
	v_dual_mul_f32 v67, v67, v26 :: v_dual_mul_f32 v38, v38, v33
	v_dual_mul_f32 v66, v66, v22 :: v_dual_mul_f32 v79, v81, v17
	v_mul_f32_e32 v34, v34, v25
	v_dual_mul_f32 v76, v78, v28 :: v_dual_mul_f32 v37, v37, v33
	v_dual_mul_f32 v78, v80, v16 :: v_dual_mul_f32 v21, v21, v22
	v_dual_mul_f32 v80, v82, v18 :: v_dual_mul_f32 v81, v83, v19
	v_dual_mul_f32 v82, v84, v30 :: v_dual_mul_f32 v83, v85, v31
	v_dual_mul_f32 v84, v86, v32 :: v_dual_mul_f32 v11, v11, v18
	v_dual_mul_f32 v20, v20, v23 :: v_dual_mul_f32 v15, v15, v28
	v_dual_mul_f32 v22, v40, v24 :: v_dual_mul_f32 v9, v9, v30
	v_dual_mul_f32 v23, v41, v25 :: v_dual_mul_f32 v24, v87, v26
	v_mul_f32_e32 v13, v13, v16
	v_dual_mul_f32 v25, v93, v27 :: v_dual_mul_f32 v14, v14, v29
	v_dual_mul_f32 v3, v3, v32 :: v_dual_mul_f32 v12, v12, v17
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v17, 0, v42 :: v_dual_mul_f32 v10, v10, v19
	v_dual_max_f32 v19, 0, v44 :: v_dual_mul_f32 v4, v4, v31
	v_dual_max_f32 v27, 0, v46 :: v_dual_mul_f32 v2, v2, v33
	v_max_f32_e32 v29, 0, v48
	v_dual_max_f32 v16, 0, v36 :: v_dual_max_f32 v31, 0, v50
	v_dual_max_f32 v18, 0, v43 :: v_dual_max_f32 v33, 0, v52
	v_dual_max_f32 v26, 0, v45 :: v_dual_max_f32 v45, 0, v55
	v_max_f32_e32 v28, 0, v47
	v_dual_max_f32 v30, 0, v49 :: v_dual_max_f32 v39, 0, v39
	v_max_f32_e32 v32, 0, v51
	v_max_f32_e32 v36, 0, v53
	v_max_f32_e32 v44, 0, v54
	v_dual_max_f32 v48, 0, v56 :: v_dual_max_f32 v85, 0, v74
	v_dual_max_f32 v49, 0, v57 :: v_dual_max_f32 v52, 0, v59
	v_max_f32_e32 v87, 0, v72
	v_dual_max_f32 v53, 0, v60 :: v_dual_max_f32 v56, 0, v61
	v_max_f32_e32 v93, 0, v71
	v_dual_max_f32 v57, 0, v62 :: v_dual_max_f32 v62, 0, v64
	v_max_f32_e32 v95, 0, v69
	v_dual_max_f32 v86, 0, v73 :: v_dual_max_f32 v97, 0, v66
	v_dual_max_f32 v94, 0, v70 :: v_dual_max_f32 v35, 0, v35
	v_dual_max_f32 v96, 0, v68 :: v_dual_max_f32 v99, 0, v67
	v_dual_max_f32 v38, 0, v38 :: v_dual_max_f32 v101, 0, v76
	v_dual_max_f32 v98, 0, v65 :: v_dual_max_f32 v103, 0, v78
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v79, 0, v79
	v_dual_max_f32 v100, 0, v75 :: v_dual_max_f32 v81, 0, v81
	v_dual_max_f32 v102, 0, v77 :: v_dual_max_f32 v83, 0, v83
	v_dual_max_f32 v80, 0, v80 :: v_dual_max_f32 v37, 0, v37
	v_dual_max_f32 v82, 0, v82 :: v_dual_max_f32 v21, 0, v21
	v_dual_max_f32 v84, 0, v84 :: v_dual_max_f32 v23, 0, v23
	v_dual_max_f32 v61, 0, v63 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v109, 0, v25 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v15, 0, v15 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v9, 0, v9 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v3, 0, v3 :: v_dual_max_f32 v4, 0, v4
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v41, v17, v17 :: v_dual_max_f32 v2, 0, v2
	v_dual_mul_f32 v43, v19, v19 :: v_dual_mul_f32 v40, v16, v16
	v_dual_mul_f32 v47, v27, v27 :: v_dual_mul_f32 v42, v18, v18
	v_dual_mul_f32 v51, v29, v29 :: v_dual_mul_f32 v46, v26, v26
	v_dual_mul_f32 v55, v31, v31 :: v_dual_mul_f32 v50, v28, v28
	v_dual_mul_f32 v67, v45, v45 :: v_dual_mul_f32 v54, v30, v30
	v_dual_mul_f32 v59, v32, v32 :: v_dual_mul_f32 v60, v33, v33
	v_mul_f32_e32 v63, v36, v36
	v_dual_mul_f32 v64, v44, v44 :: v_dual_mul_f32 v77, v57, v57
	v_dual_mul_f32 v68, v39, v39 :: v_dual_mul_f32 v71, v48, v48
	v_dual_mul_f32 v72, v49, v49 :: v_dual_mul_f32 v75, v52, v52
	v_dual_mul_f32 v76, v53, v53 :: v_dual_mul_f32 v65, v87, v87
	v_dual_mul_f32 v78, v56, v56 :: v_dual_mul_f32 v73, v61, v61
	v_dual_mul_f32 v74, v62, v62 :: v_dual_mul_f32 v69, v85, v85
	v_dual_mul_f32 v62, v95, v95 :: v_dual_mul_f32 v53, v98, v98
	v_dual_mul_f32 v56, v38, v38 :: v_dual_mul_f32 v45, v100, v100
	v_dual_mul_f32 v52, v97, v97 :: v_dual_mul_f32 v49, v34, v34
	v_dual_mul_f32 v48, v35, v35 :: v_dual_mul_f32 v39, v102, v102
	v_dual_mul_f32 v44, v99, v99 :: v_dual_mul_f32 v33, v80, v80
	v_dual_mul_f32 v38, v101, v101 :: v_dual_mul_f32 v35, v79, v79
	v_dual_mul_f32 v36, v103, v103 :: v_dual_mul_f32 v29, v84, v84
	v_dual_mul_f32 v34, v81, v81 :: v_dual_mul_f32 v31, v83, v83
	v_dual_mul_f32 v32, v82, v82 :: v_dual_mul_f32 v25, v23, v23
	v_dual_mul_f32 v70, v86, v86 :: v_dual_mul_f32 v57, v96, v96
	v_dual_mul_f32 v66, v93, v93 :: v_dual_mul_f32 v61, v94, v94
	v_dual_mul_f32 v30, v37, v37 :: v_dual_mul_f32 v27, v22, v22
	v_dual_mul_f32 v28, v21, v21 :: v_dual_mul_f32 v19, v15, v15
	v_dual_mul_f32 v26, v20, v20 :: v_dual_mul_f32 v23, v109, v109
	v_dual_mul_f32 v24, v24, v24 :: v_dual_mul_f32 v21, v13, v13
	v_dual_mul_f32 v20, v14, v14 :: v_dual_mul_f32 v15, v4, v4
	v_dual_mul_f32 v22, v12, v12 :: v_dual_mul_f32 v13, v10, v10
	v_dual_mul_f32 v18, v11, v11 :: v_dual_mul_f32 v17, v2, v2
	v_dual_mul_f32 v14, v9, v9 :: v_dual_max_f32 v11, v71, v72
	v_dual_mul_f32 v16, v3, v3 :: v_dual_max_f32 v81, v52, v53
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v40, v41
	v_max3_f32 v3, v43, v46, v47
	v_max3_f32 v9, v55, v59, v60
	v_max3_f32 v10, v63, v64, v67
	v_max3_f32 v12, v76, v78, v77
	v_max3_f32 v82, v49, v44, v45
	v_max3_f32 v84, v35, v33, v34
	v_max3_f32 v85, v32, v31, v29
	v_max3_f32 v4, v50, v51, v54
	v_max3_f32 v79, v70, v65, v66
	v_max3_f32 v80, v61, v62, v57
	v_max3_f32 v83, v38, v39, v36
	v_max3_f32 v2, v2, v42, v3
	v_max3_f32 v3, v9, v10, v68
	v_max3_f32 v9, v11, v75, v12
	v_max3_f32 v11, v81, v48, v82
	v_max3_f32 v12, v84, v85, v30
	v_max3_f32 v37, v73, v74, v69
	v_max3_f32 v10, v79, v80, v56
	v_max3_f32 v2, v2, v4, v3
	v_max3_f32 v87, v25, v24, v23
	v_max3_f32 v4, v11, v83, v12
	v_max3_f32 v94, v22, v18, v13
	v_max3_f32 v95, v14, v15, v16
	v_max3_f32 v3, v9, v37, v10
	v_max3_f32 v93, v19, v20, v21
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v37, v4, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v86, v28, v26
	v_max3_f32 v80, v94, v95, v17
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v81, 0x680, v104, v7
	v_permlanex16_b32 v10, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v37, v37, v37
	v_max3_f32 v79, v86, v27, v87
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v9, v92, 4, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v79, v93, v80
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v80, v81, v8
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v81, v9, v6, v107
	v_permlanex16_b32 v79, v12, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v79, v79, v79
	v_dual_max_f32 v9, v2, v10 :: v_dual_max_f32 v10, v3, v11
	v_max_f32_e32 v11, v4, v37
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v106, v105, v80
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v79
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v79, 1, v8
.Ltmp29:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v90, v8
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v81, v[9:12]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[9:12], v2
	v_lshlrev_b32_e32 v81, 5, v91
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v9
	v_dual_mov_b32 v4, v10 :: v_dual_max_f32 v37, v12, v12
	v_mov_b32_dpp v12, v12 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v9, v9
	v_dual_max_f32 v9, v10, v10 :: v_dual_mov_b32 v10, v11
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v4
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v12, v37, v12
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_max_f32 v2, v3, v2 :: v_dual_max_f32 v3, v9, v4
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v9, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v11, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v11, v3
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v37, v4
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v10, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v37, v37 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v37, v37, v37
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v3, v3, v11 :: v_dual_max_f32 v10, v10, v10
	v_dual_max_f32 v9, v12, v9 :: v_dual_max_f32 v2, v2, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v10, v4, v37 :: v_dual_lshlrev_b32 v11, 3, v92
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v4, v9 :: v_dual_mov_b32 v37, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v12, v2
	v_mov_b32_e32 v80, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v79, v1, v79, v11
	v_mov_b32_dpp v4, v4 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v37, v37 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_max_f32 v37, v37, v37
	v_max_f32_e32 v12, v12, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v80, v80, v80
	v_max_f32_e32 v4, v9, v4
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v9, v58, v81, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v2, v12 :: v_dual_max_f32 v2, v3, v37
	v_max_f32_e32 v3, v10, v80
.Ltmp48:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 4, v89
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.h, 0
.Ltmp49:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v79, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v9
.Ltmp50:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v9, 63, v0
	v_or_b32_e32 v11, 48, v10
	v_or_b32_e32 v58, 32, v10
	v_or_b32_e32 v83, 16, v10
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.h, v37.h
	v_mov_b16_e32 v85.h, v37.h
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v79, v79, v79
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v82, v82, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s36, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v86, 0x2b8cbccc, v79 :: v_dual_max_f32 v91, 0x2b8cbccc, v81
	v_max_f32_e32 v92, 0x2b8cbccc, v82
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s37, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v93, null, 0x40e00000, 0x40e00000, v86
	v_div_scale_f32 v94, null, 0x40e00000, 0x40e00000, v91
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s36, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s37, 0, s0
	v_add_co_u32 v11, s0, s36, v11
	v_add_co_ci_u32_e64 v12, null, s37, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v96, null, 0x40e00000, 0x40e00000, v92
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s0, s36, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v58, v93
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v99, v96
	v_div_scale_f32 v100, vcc_lo, v86, 0x40e00000, v86
	v_div_scale_f32 v101, s1, v91, 0x40e00000, v91
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[30:31], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[34:35], v[3:4]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, v10, v5
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v81, -v93, v58, 1.0
	v_fma_f32 v82, -v94, v97, 1.0
	v_max_f32_e32 v80, v80, v80
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v104, -v96, v99, 1.0
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, v9, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v58, v81, v58 :: v_dual_fmac_f32 v97, v82, v97
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v87, 0x2b8cbccc, v80
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s37, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v99, v104, v99
	v_div_scale_f32 v105, s3, v92, 0x40e00000, v92
	v_div_scale_f32 v95, null, 0x40e00000, 0x40e00000, v87
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s0, s36, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_mul_f32 v83, v100, v58 :: v_dual_mul_f32 v106, v105, v99
	v_rcp_f32_e32 v98, v95
	v_div_scale_f32 v102, s2, v87, 0x40e00000, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v107, -v93, v83, v100
	v_fma_f32 v110, -v96, v106, v105
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s37, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[30:31], v[11:12]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_fmac_f32 v83, v107, v58 :: v_dual_fmac_f32 v106, v110, v99
	v_fma_f32 v103, -v95, v98, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[30:31], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[34:35], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v3, -v93, v83, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v98, v103, v98 :: v_dual_mul_f32 v103, v101, v97
	v_div_fmas_f32 v3, v3, v58, v83
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[34:35], v[11:12]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v108, -v94, v103, v101
	v_mul_f32_e32 v104, v102, v98
	v_div_fixup_f32 v3, v3, 0x40e00000, v86
	v_fmac_f32_e32 v103, v108, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v109, -v95, v104, v102
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v3.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v4, -v94, v103, v101
	v_dual_fmac_f32 v104, v109, v98 :: v_dual_and_b32 v11, 1, v84
	v_fma_f32 v94, -v96, v106, v105
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v4, v4, v97, v103
	v_fma_f32 v93, -v95, v104, v102
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v3, v11, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[30:31], v[79:80]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v4, v4, 0x40e00000, v91
	v_div_fmas_f32 v58, v93, v98, v104
	s_mov_b32 vcc_lo, s3
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[34:35], v[79:80]
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v83, v94, v99, v106
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v37.l, v4.h
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v12, v58, 0x40e00000, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v80, v80, v40
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v58, v83, 0x40e00000, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v12.h
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_rcp_f32_e32 v96, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v104, -v81, v96, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v83, 1, v37
	v_mov_b16_e32 v37.l, v58.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v104, v96
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v3, v4, v83, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v80, v80, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v97, v83
	v_fma_f32 v105, -v83, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v105, v97
	v_div_scale_f32 v87, null, v80, v80, v43
	v_div_scale_f32 v85, null, v80, v80, v42
	v_div_scale_f32 v92, null, v80, v80, v46
	v_div_scale_f32 v94, null, v80, v80, v47
	v_rcp_f32_e32 v99, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v98, v85
	v_rcp_f32_e32 v100, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v101, v94
	v_div_scale_f32 v82, vcc_lo, v40, v80, v40
	v_div_scale_f32 v84, s8, v41, v80, v41
	v_div_scale_f32 v86, s9, v42, v80, v42
	v_fma_f32 v107, -v87, v99, 1.0
	v_fma_f32 v106, -v85, v98, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v108, -v92, v100, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v37, 1, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v109, -v94, v101, 1.0
	v_dual_fmac_f32 v99, v107, v99 :: v_dual_mul_f32 v104, v82, v96
	v_div_scale_f32 v93, s11, v46, v80, v46
	v_fmac_f32_e32 v98, v106, v98
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v12, v12, v79, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v108, v100
	v_mul_f32_e32 v105, v84, v97
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v58, v37, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v101, v109, v101 :: v_dual_and_b32 v58, 0xffff0000, v3
	v_div_scale_f32 v91, s10, v43, v80, v43
	v_fma_f32 v109, -v81, v104, v82
	v_dual_mul_f32 v106, v86, v98 :: v_dual_and_b32 v79, 0xffff0000, v12
	v_mul_f32_e32 v108, v93, v100
	v_fma_f32 v110, -v83, v105, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v107, v91, v99 :: v_dual_fmac_f32 v104, v109, v96
	v_fma_f32 v111, -v85, v106, v86
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v37, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v105, v110, v97
	v_fma_f32 v112, -v87, v107, v91
	v_fma_f32 v81, -v81, v104, v82
	v_fmac_f32_e32 v106, v111, v98
	v_div_scale_f32 v95, null, v80, v80, v50
	v_fma_f32 v82, -v83, v105, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v96, v104
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v102, s12, v47, v80, v47
	v_fmac_f32_e32 v107, v112, v99
	v_fma_f32 v83, -v85, v106, v86
	v_div_fmas_f32 v82, v82, v97, v105
	v_div_scale_f32 v85, null, v80, v80, v51
	v_rcp_f32_e32 v103, v95
	v_fma_f32 v109, -v92, v108, v93
	v_mul_f32_e32 v113, v102, v101
	v_fma_f32 v84, -v87, v107, v91
	v_div_fixup_f32 v41, v82, v80, v41
	v_rcp_f32_e32 v82, v85
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v40, v81, v80, v40
	v_div_fmas_f32 v83, v83, v98, v106
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v108, v109, v100
	v_div_fmas_f32 v81, v84, v99, v107
	v_fma_f32 v84, -v94, v113, v102
	v_fma_f32 v86, -v95, v103, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v42, v83, v80, v42
	v_div_fixup_f32 v43, v81, v80, v43
	v_fmac_f32_e32 v113, v84, v101
	v_fma_f32 v84, -v85, v82, 1.0
	v_fma_f32 v81, -v92, v108, v93
	v_div_scale_f32 v92, s9, v51, v80, v51
	v_div_scale_f32 v93, null, v80, v80, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v82, v84, v82 :: v_dual_fmac_f32 v103, v86, v103
	v_div_scale_f32 v86, null, v80, v80, v54
	v_rcp_f32_e32 v98, v93
	v_div_fmas_f32 v81, v81, v100, v108
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v96, v92, v82
	v_rcp_f32_e32 v84, v86
	v_div_scale_f32 v83, s8, v50, v80, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v46, v81, v80, v46
	v_fma_f32 v81, -v85, v96, v92
	s_mov_b32 vcc_lo, s12
	v_div_scale_f32 v100, null, v80, v80, v60
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_mov_b32 s12, s16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v96, v81, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v97, -v86, v84, 1.0
	v_fma_f32 v87, -v94, v113, v102
	v_fma_f32 v85, -v85, v96, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v97, v84
	v_fma_f32 v97, -v93, v98, 1.0
	v_mul_f32_e32 v91, v83, v103
	v_div_fmas_f32 v87, v87, v101, v113
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v98, v97, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v94, -v95, v91, v83
	v_div_scale_f32 v97, s11, v55, v80, v55
	v_div_fixup_f32 v47, v87, v80, v47
	v_div_scale_f32 v87, s10, v54, v80, v54
	v_dual_fmac_f32 v91, v94, v103 :: v_dual_mul_f32 v92, v97, v98
	v_div_scale_f32 v94, null, v80, v80, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v81, v87, v84
	v_fma_f32 v83, -v95, v91, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v95, v94
	v_div_fmas_f32 v83, v83, v103, v91
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v91, -v86, v81, v87
	v_div_fmas_f32 v82, v85, v82, v96
	v_rcp_f32_e32 v85, v100
	v_div_scale_f32 v96, s8, v59, v80, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v91, v84
	v_div_fixup_f32 v51, v82, v80, v51
	v_fma_f32 v91, -v93, v92, v97
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v99, -v94, v95, 1.0
	v_fma_f32 v82, -v86, v81, v87
	v_div_scale_f32 v87, null, v80, v80, v63
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v100, v85, 1.0
	v_fmac_f32_e32 v92, v91, v98
	v_div_fmas_f32 v81, v82, v84, v81
	v_div_fixup_f32 v50, v83, v80, v50
	v_div_scale_f32 v91, s9, v60, v80, v60
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v87
	v_fma_f32 v82, -v93, v92, v97
	v_div_scale_f32 v93, null, v80, v80, v64
	v_div_fixup_f32 v54, v81, v80, v54
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v97, -v87, v86, 1.0
	v_dual_fmac_f32 v86, v97, v86 :: v_dual_fmac_f32 v95, v99, v95
	v_div_scale_f32 v97, null, v80, v80, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v83, v96, v95
	v_div_fmas_f32 v82, v82, v98, v92
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v84, -v94, v83, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v55, v82, v80, v55
	v_fmac_f32_e32 v83, v84, v95
	v_rcp_f32_e32 v84, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v81, -v94, v83, v96
	v_div_scale_f32 v94, s10, v63, v80, v63
	v_fma_f32 v96, -v93, v84, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v96, v84
	v_mul_f32_e32 v92, v91, v85
	v_div_scale_f32 v96, null, v80, v80, v68
	v_fma_f32 v82, -v100, v92, v91
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v99, v96
	v_fmac_f32_e32 v92, v82, v85
	v_mul_f32_e32 v82, v94, v86
	v_div_fmas_f32 v81, v81, v95, v83
	v_rcp_f32_e32 v83, v97
	v_div_scale_f32 v95, s8, v64, v80, v64
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v59, v81, v80, v59
	v_fma_f32 v81, -v100, v92, v91
	v_fma_f32 v91, -v87, v82, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v100, -v97, v83, 1.0
	v_mul_f32_e32 v98, v95, v84
	v_div_fmas_f32 v81, v81, v85, v92
	v_fma_f32 v92, -v96, v99, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_dual_fmac_f32 v82, v91, v86 :: v_dual_fmac_f32 v83, v100, v83
	v_fma_f32 v85, -v93, v98, v95
	v_div_scale_f32 v91, s9, v67, v80, v67
	v_div_fixup_f32 v60, v81, v80, v60
	v_fmac_f32_e32 v99, v92, v99
	v_fma_f32 v81, -v87, v82, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_fmac_f32 v98, v85, v84 :: v_dual_mul_f32 v85, v91, v83
	v_div_scale_f32 v92, null, v79, v79, v71
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s11, v68, v80, v68
	v_div_fmas_f32 v81, v81, v86, v82
	v_fma_f32 v82, -v93, v98, v95
	v_rcp_f32_e32 v93, v92
	v_div_scale_f32 v95, null, v79, v79, v72
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v86, -v97, v85, v91
	v_div_fmas_f32 v82, v82, v84, v98
	v_rcp_f32_e32 v84, v95
	v_div_fixup_f32 v63, v81, v80, v63
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v85, v86, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v92, v93, 1.0
	v_mul_f32_e32 v94, v87, v99
	v_div_fixup_f32 v64, v82, v80, v64
	v_div_scale_f32 v82, s8, v71, v79, v71
	v_fmac_f32_e32 v93, v98, v93
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v86, -v96, v94, v87
	v_fma_f32 v81, -v97, v85, v91
	v_div_scale_f32 v91, null, v79, v79, v75
	v_fmac_f32_e32 v94, v86, v99
	v_fma_f32 v86, -v95, v84, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v83, v85
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v83, -v96, v94, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v86, v84
	v_rcp_f32_e32 v86, v91
	v_div_scale_f32 v87, s9, v72, v79, v72
	v_div_fixup_f32 v67, v81, v80, v67
	v_div_scale_f32 v81, s10, v75, v79, v75
	v_mul_f32_e32 v97, v87, v84
	v_div_fmas_f32 v83, v83, v99, v94
	v_div_scale_f32 v96, null, v79, v79, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v98, -v91, v86, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v68, v83, v80, v68
	v_fma_f32 v80, -v95, v97, v87
	v_div_scale_f32 v83, null, v79, v79, v78
	v_fmac_f32_e32 v86, v98, v86
	v_rcp_f32_e32 v99, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v97, v80, v84
	v_div_scale_f32 v98, null, v79, v79, v77
	v_dual_mul_f32 v80, v81, v86 :: v_dual_mul_f32 v85, v82, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v92, v85, v82
	v_fmac_f32_e32 v85, v94, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v94, -v96, v99, 1.0
	v_fma_f32 v82, -v92, v85, v82
	v_rcp_f32_e32 v92, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v82, v82, v93, v85
	v_fma_f32 v85, -v95, v97, v87
	v_fma_f32 v87, -v91, v80, v81
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v71, v82, v79, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v83, v92, 1.0
	v_fmac_f32_e32 v80, v87, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v92, v95, v92
	v_div_scale_f32 v95, s8, v78, v79, v78
	v_fmac_f32_e32 v99, v94, v99
	v_div_scale_f32 v94, s11, v76, v79, v76
	v_mul_f32_e32 v82, v95, v92
	v_fma_f32 v81, -v91, v80, v81
	v_div_scale_f32 v91, s9, v77, v79, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v94, v99
	v_fma_f32 v87, -v96, v93, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v93, v87, v99
	v_div_fmas_f32 v84, v85, v84, v97
	v_rcp_f32_e32 v85, v98
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, null, v79, v79, v73
	v_div_fixup_f32 v72, v84, v79, v72
	v_div_fmas_f32 v80, v81, v86, v80
	v_fma_f32 v81, -v96, v93, v94
	v_fma_f32 v86, -v83, v82, v95
	v_div_scale_f32 v94, null, v79, v79, v74
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v84, -v98, v85, 1.0
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v82, v86, v92
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v86, v94
	v_div_fmas_f32 v81, v81, v99, v93
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_fixup_f32 v75, v80, v79, v75
	v_fma_f32 v80, -v83, v82, v95
	v_div_fixup_f32 v76, v81, v79, v76
	v_mul_f32_e32 v93, v91, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v83, s10, v73, v79, v73
	v_fma_f32 v95, -v94, v86, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v98, v93, v91
	v_div_fmas_f32 v80, v80, v92, v82
	v_fma_f32 v96, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s9
	v_dual_fmac_f32 v86, v95, v86 :: v_dual_fmac_f32 v93, v81, v85
	v_div_scale_f32 v95, null, v79, v79, v70
	v_div_fixup_f32 v78, v80, v79, v78
	v_fmac_f32_e32 v84, v96, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v98, v93, v91
	v_rcp_f32_e32 v98, v95
	v_div_scale_f32 v92, s8, v74, v79, v74
	v_div_scale_f32 v96, null, v79, v79, v69
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v85, v93
	v_mul_f32_e32 v97, v92, v86
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v96
	v_fma_f32 v93, -v95, v98, 1.0
	v_mul_f32_e32 v81, v83, v84
	v_fma_f32 v85, -v94, v97, v92
	v_div_fixup_f32 v77, v80, v79, v77
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v98, v93, v98
	v_fma_f32 v91, -v87, v81, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v97, v85, v86
	v_fma_f32 v99, -v96, v82, 1.0
	v_div_scale_f32 v85, s11, v70, v79, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v91, v84
	v_div_scale_f32 v91, s9, v69, v79, v69
	v_mul_f32_e32 v93, v85, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v87, v81, v83
	v_div_scale_f32 v87, null, v79, v79, v65
	v_div_fmas_f32 v80, v80, v84, v81
	v_fma_f32 v81, -v94, v97, v92
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v92, v87
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v79, v79, v66
	v_div_fmas_f32 v81, v81, v86, v97
	v_fma_f32 v86, -v95, v93, v85
	v_div_fixup_f32 v73, v80, v79, v73
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v74, v81, v79, v74
	v_fma_f32 v97, -v87, v92, 1.0
	v_div_scale_f32 v81, s8, v65, v79, v65
	v_fmac_f32_e32 v93, v86, v98
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v97, v92
	v_fmac_f32_e32 v82, v99, v82
	v_div_scale_f32 v99, null, v79, v79, v56
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v83, v91, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v96, v83, v91
	v_fmac_f32_e32 v83, v84, v82
	v_rcp_f32_e32 v84, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v96, v83, v91
	v_div_scale_f32 v91, null, v79, v79, v61
	v_div_fmas_f32 v80, v80, v82, v83
	v_fma_f32 v82, -v95, v93, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v91
	v_div_scale_f32 v95, null, v79, v79, v62
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v86, -v94, v84, 1.0
	v_div_fmas_f32 v82, v82, v98, v93
	v_rcp_f32_e32 v98, v95
	v_mul_f32_e32 v83, v81, v92
	v_div_fixup_f32 v69, v80, v79, v69
	v_fmac_f32_e32 v84, v86, v84
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v97, -v91, v85, 1.0
	v_div_scale_f32 v86, s9, v66, v79, v66
	v_fma_f32 v93, -v87, v83, v81
	v_div_fixup_f32 v70, v82, v79, v70
	v_fmac_f32_e32 v85, v97, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v98, 1.0
	v_mul_f32_e32 v96, v86, v84
	v_div_scale_f32 v82, s10, v61, v79, v61
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v98, v97, v98
	v_fmac_f32_e32 v83, v93, v92
	v_div_scale_f32 v93, null, v79, v79, v57
	v_fma_f32 v80, -v94, v96, v86
	v_div_scale_f32 v97, s11, v62, v79, v62
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v87, v83, v81
	v_rcp_f32_e32 v87, v93
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v96, v80, v84
	v_mul_f32_e32 v80, v82, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v92, v83
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v83, -v94, v96, v86
	v_fma_f32 v86, -v91, v80, v82
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v65, v81, v79, v65
	v_fma_f32 v94, -v93, v87, 1.0
	v_div_fmas_f32 v83, v83, v84, v96
	v_rcp_f32_e32 v84, v99
	v_fmac_f32_e32 v80, v86, v85
	s_mov_b32 vcc_lo, s10
	v_dual_fmac_f32 v87, v94, v87 :: v_dual_mul_f32 v92, v97, v98
	v_div_scale_f32 v94, s8, v57, v79, v57
	v_div_fixup_f32 v66, v83, v79, v66
	v_fma_f32 v81, -v91, v80, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v86, -v95, v92, v97
	v_mul_f32_e32 v82, v94, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v99, v84, 1.0
	v_div_scale_f32 v91, s9, v56, v79, v56
	v_fmac_f32_e32 v92, v86, v98
	v_div_scale_f32 v86, null, v58, v58, v52
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v85, -v93, v82, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v81, -v95, v92, v97
	v_fmac_f32_e32 v84, v83, v84
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v95, null, v58, v58, v53
	v_fmac_f32_e32 v82, v85, v87
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v61, v80, v79, v61
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v85, v95
	v_div_fmas_f32 v81, v81, v98, v92
	v_mul_f32_e32 v92, v91, v84
	v_fma_f32 v80, -v93, v82, v94
	v_fma_f32 v96, -v86, v83, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v62, v81, v79, v62
	v_fma_f32 v81, -v99, v92, v91
	v_div_scale_f32 v93, s10, v52, v58, v52
	v_fmac_f32_e32 v83, v96, v83
	v_fma_f32 v94, -v95, v85, 1.0
	v_div_scale_f32 v96, null, v58, v58, v48
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v61, v61
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v94, v85
	v_div_fmas_f32 v80, v80, v87, v82
	v_rcp_f32_e32 v82, v96
	v_div_scale_f32 v87, s8, v53, v58, v53
	v_fmac_f32_e32 v92, v81, v84
	v_div_scale_f32 v94, null, v58, v58, v49
	v_div_fixup_f32 v57, v80, v79, v57
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v97, v87, v85
	v_fma_f32 v80, -v99, v92, v91
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v98, v94
	v_fma_f32 v99, -v96, v82, 1.0
	v_mul_f32_e32 v81, v93, v83
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v84, v92
	v_fmac_f32_e32 v82, v99, v82
	v_fma_f32 v91, -v86, v81, v93
	v_fma_f32 v84, -v95, v97, v87
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v92, -v94, v98, 1.0
	v_div_fixup_f32 v56, v80, v79, v56
	v_fmac_f32_e32 v81, v91, v83
	v_div_scale_f32 v91, s9, v48, v58, v48
	v_fmac_f32_e32 v97, v84, v85
	v_fmac_f32_e32 v98, v92, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v86, v81, v93
	v_div_scale_f32 v86, null, v58, v58, v44
	v_mul_f32_e32 v80, v91, v82
	v_div_scale_f32 v84, s11, v49, v58, v49
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v95, v97, v87
	v_rcp_f32_e32 v87, v86
	v_fma_f32 v83, -v96, v80, v91
	v_div_scale_f32 v93, null, v58, v58, v45
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v52, v79, v58, v52
	v_fmac_f32_e32 v80, v83, v82
	v_rcp_f32_e32 v83, v93
	v_div_fmas_f32 v81, v81, v85, v97
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v86, v87, 1.0
	v_mul_f32_e32 v92, v84, v98
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v53, v81, v58, v53
	v_div_scale_f32 v81, s8, v44, v58, v44
	v_fmac_f32_e32 v87, v95, v87
	v_fma_f32 v85, -v94, v92, v84
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v92, v85, v98
	v_fma_f32 v85, -v93, v83, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v85, v83
	v_fma_f32 v79, -v96, v80, v91
	v_div_scale_f32 v85, s9, v45, v58, v45
	v_div_scale_f32 v91, null, v58, v58, v38
	v_div_fmas_f32 v79, v79, v82, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v95, v85, v83
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v48, v79, v58, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v93, v95, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v79, v83
	v_fma_f32 v80, -v94, v92, v84
	v_rcp_f32_e32 v84, v91
	v_div_scale_f32 v94, null, v58, v58, v39
	v_div_fmas_f32 v80, v80, v98, v92
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v97, v94
	v_div_scale_f32 v98, null, v58, v58, v35
	v_div_fixup_f32 v49, v80, v58, v49
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v96, -v91, v84, 1.0
	v_div_scale_f32 v80, s10, v38, v58, v38
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v84, v96, v84
	v_mul_f32_e32 v82, v81, v87
	v_fma_f32 v96, -v94, v97, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v79, v80, v84
	v_fma_f32 v92, -v86, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v82, v92, v87
	v_div_scale_f32 v92, null, v58, v58, v36
	v_fma_f32 v81, -v86, v82, v81
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v86, v92
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v93, v95, v85
	v_fma_f32 v85, -v91, v79, v80
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v44, v81, v58, v44
	v_fma_f32 v93, -v92, v86, 1.0
	v_fmac_f32_e32 v97, v96, v97
	v_fmac_f32_e32 v79, v85, v84
	v_div_scale_f32 v96, s11, v39, v58, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s8, v36, v58, v36
	v_fma_f32 v80, -v91, v79, v80
	v_div_fmas_f32 v82, v82, v83, v95
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v81, v93, v86
	v_mul_f32_e32 v87, v96, v97
	v_div_fmas_f32 v79, v80, v84, v79
	v_rcp_f32_e32 v83, v98
	v_div_fixup_f32 v45, v82, v58, v45
	v_fma_f32 v84, -v92, v81, v93
	v_fma_f32 v85, -v94, v87, v96
	v_div_fixup_f32 v38, v79, v58, v38
	v_div_scale_f32 v91, s9, v35, v58, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v98, v83, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v92, v81, v93
	v_div_scale_f32 v92, s10, v33, v58, v33
	v_fmac_f32_e32 v87, v85, v97
	v_div_scale_f32 v85, null, v58, v58, v33
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v94, v87, v96
	v_div_scale_f32 v94, null, v58, v58, v34
	v_div_fmas_f32 v80, v80, v97, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v94
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v79, v79, v86, v81
	v_div_fixup_f32 v39, v80, v58, v39
	v_div_scale_f32 v86, s8, v34, v58, v34
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v36, v79, v58, v36
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v39
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v94, v84, 1.0
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v36
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v84, v93, v84 :: v_dual_mul_f32 v87, v91, v83
	v_div_scale_f32 v93, null, v58, v58, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v96, v86, v84
	v_fma_f32 v80, -v98, v87, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v85, v82, 1.0
	v_rcp_f32_e32 v97, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v82, v95, v82 :: v_dual_fmac_f32 v87, v80, v83
	v_div_scale_f32 v95, null, v58, v58, v32
	v_mul_f32_e32 v80, v92, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v79, -v98, v87, v91
	v_rcp_f32_e32 v81, v95
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v91, -v85, v80, v92
	v_fmac_f32_e32 v80, v91, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v79, v79, v83, v87
	v_fma_f32 v83, -v94, v96, v86
	v_fma_f32 v91, -v93, v97, 1.0
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v98, -v95, v81, 1.0
	v_div_fixup_f32 v35, v79, v58, v35
	v_fma_f32 v79, -v85, v80, v92
	v_fmac_f32_e32 v96, v83, v84
	v_fmac_f32_e32 v97, v91, v97
	v_div_scale_f32 v91, null, v58, v58, v29
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v94, v96, v86
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v91
	v_div_scale_f32 v87, s9, v32, v58, v32
	v_div_fmas_f32 v80, v80, v84, v96
	v_div_scale_f32 v85, s11, v31, v58, v31
	v_div_scale_f32 v94, null, v58, v58, v30
	v_div_fixup_f32 v33, v79, v58, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v92, v85, v97
	v_fma_f32 v96, -v91, v86, 1.0
	v_fmac_f32_e32 v81, v98, v81
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v34, v80, v58, v34
	v_fma_f32 v84, -v93, v92, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v86, v96, v86 :: v_dual_mul_f32 v83, v87, v81
	v_div_scale_f32 v80, s8, v29, v58, v29
	v_fmac_f32_e32 v92, v84, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v35, v35
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v82, -v95, v83, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v83, v82, v81
	v_rcp_f32_e32 v82, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v95, v83, v87
	v_div_scale_f32 v95, null, v37, v37, v26
	v_div_fmas_f32 v79, v79, v81, v83
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v94, v82, 1.0
	v_fma_f32 v81, -v93, v92, v85
	v_div_scale_f32 v85, s9, v30, v58, v30
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v37, v37, v28
	v_div_fixup_f32 v32, v79, v58, v32
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v93, v85, v82
	v_div_fmas_f32 v81, v81, v97, v92
	v_rcp_f32_e32 v87, v84
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v97, null, v37, v37, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v31, v81, v58, v31
	v_rcp_f32_e32 v81, v95
	v_fma_f32 v79, -v94, v93, v85
	v_rcp_f32_e32 v99, v97
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v93, v79, v82
	v_div_scale_f32 v79, s10, v28, v37, v28
	v_fma_f32 v96, -v95, v81, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v96, v81
	v_mul_f32_e32 v83, v80, v86
	v_fma_f32 v92, -v91, v83, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v83, v92, v86
	v_fma_f32 v92, -v84, v87, 1.0
	v_fma_f32 v80, -v91, v83, v80
	v_div_scale_f32 v91, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v80, v80, v86, v83
	v_div_scale_f32 v86, s8, v26, v37, v26
	v_fma_f32 v83, -v94, v93, v85
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v29, v80, v58, v29
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v98, v86, v81
	v_fma_f32 v80, -v97, v99, 1.0
	v_div_fmas_f32 v82, v83, v82, v93
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v29, v29
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v95, v98, v86
	v_fmac_f32_e32 v87, v92, v87
	v_div_fixup_f32 v30, v82, v58, v30
	v_rcp_f32_e32 v92, v91
	v_div_scale_f32 v82, null, v37, v37, v24
	v_fmac_f32_e32 v98, v83, v81
	v_mul_f32_e32 v85, v79, v87
	v_fmac_f32_e32 v99, v80, v99
	v_div_scale_f32 v80, s9, v25, v37, v25
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v95, v98, v86
	v_fma_f32 v96, -v84, v85, v79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v94, -v91, v92, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v85, v96, v87 :: v_dual_fmac_f32 v92, v94, v92
	v_div_scale_f32 v94, s11, v27, v37, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v58, -v84, v85, v79
	v_mul_f32_e32 v84, v80, v99
	v_div_fmas_f32 v58, v58, v87, v85
	v_div_scale_f32 v85, null, v37, v37, v23
	s_mov_b32 vcc_lo, s8
	v_div_fmas_f32 v81, v83, v81, v98
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v28, v58, v37, v28
	s_mov_b32 vcc_lo, s11
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v26, v81, v37, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rndne_f32_e32 v26, v26
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v85, v87, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s10, v23, v37, v23
	v_mul_f32_e32 v93, v94, v92
	v_fma_f32 v79, -v91, v93, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v79, v92
	v_rcp_f32_e32 v79, v82
	v_fma_f32 v83, -v91, v93, v94
	v_fma_f32 v91, -v97, v84, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v83, v83, v92, v93
	v_fma_f32 v86, -v82, v79, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v84, v91, v99
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v27, v83, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s8, v24, v37, v24
	v_fma_f32 v80, -v97, v84, v80
	v_div_scale_f32 v83, null, v37, v37, v19
	v_mul_f32_e32 v58, v86, v79
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v27, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v99, v84
	v_rcp_f32_e32 v92, v83
	v_mul_f32_e32 v84, v81, v87
	v_fma_f32 v91, -v82, v58, v86
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v80, v37, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v58, v91, v79
	v_div_scale_f32 v91, null, v37, v37, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v82, v58, v86
	v_fma_f32 v82, -v85, v84, v81
	v_fma_f32 v86, -v83, v92, 1.0
	v_rcp_f32_e32 v93, v91
	v_div_fmas_f32 v58, v80, v79, v58
	v_div_scale_f32 v79, null, v37, v37, v21
	v_fmac_f32_e32 v84, v82, v87
	v_fmac_f32_e32 v92, v86, v92
	v_div_scale_f32 v86, null, v37, v37, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s8, v19, v37, v19
	v_div_fixup_f32 v24, v58, v37, v24
	v_fma_f32 v58, -v91, v93, 1.0
	v_rcp_f32_e32 v95, v86
	v_fma_f32 v81, -v85, v84, v81
	v_mul_f32_e32 v85, v80, v92
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v93, v58, v93
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v79, v82, 1.0
	v_div_scale_f32 v58, s9, v20, v37, v20
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v94, null, v37, v37, v18
	v_mul_f32_e32 v87, v58, v93
	v_div_scale_f32 v96, s10, v21, v37, v21
	v_fma_f32 v97, -v86, v95, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v98, v94
	v_fmac_f32_e32 v85, v84, v92
	v_fma_f32 v84, -v91, v87, v58
	v_mul_f32_e32 v99, v96, v82
	v_fmac_f32_e32 v95, v97, v95
	v_div_scale_f32 v97, s11, v22, v37, v22
	v_div_fixup_f32 v23, v81, v37, v23
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v93
	v_fma_f32 v81, -v79, v99, v96
	v_mul_f32_e32 v83, v97, v95
	v_fma_f32 v84, -v94, v98, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v58, -v91, v87, v58
	v_fmac_f32_e32 v99, v81, v82
	v_fma_f32 v81, -v86, v83, v97
	v_fmac_f32_e32 v98, v84, v98
	v_div_scale_f32 v84, s8, v18, v37, v18
	v_div_fmas_f32 v80, v80, v92, v85
	v_fma_f32 v79, -v79, v99, v96
	v_fmac_f32_e32 v83, v81, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v98
	v_div_scale_f32 v85, null, v37, v37, v13
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v19, v80, v37, v19
	v_div_fmas_f32 v58, v58, v93, v87
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v79, v79, v82, v99
	v_fma_f32 v82, -v86, v83, v97
	v_fma_f32 v86, -v94, v81, v84
	v_div_fixup_f32 v20, v58, v37, v20
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v21, v79, v37, v21
	v_div_fmas_f32 v82, v82, v95, v83
	v_fmac_f32_e32 v81, v86, v98
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_scale_f32 v79, null, v37, v37, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v94, v81, v84
	v_div_fixup_f32 v22, v82, v37, v22
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v37, v37, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v58, v58, v98, v81
	v_div_scale_f32 v83, vcc_lo, v13, v37, v13
	v_rcp_f32_e32 v81, v79
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v58, v37, v18
	v_mul_f32_e32 v91, v83, v87
	v_div_scale_f32 v82, null, v37, v37, v16
	v_div_scale_f32 v92, null, v37, v37, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v85, v91, v83
	v_rcp_f32_e32 v86, v82
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v58, -v79, v81, 1.0
	v_fma_f32 v93, -v80, v84, 1.0
	v_rcp_f32_e32 v94, v92
	v_fmac_f32_e32 v91, v95, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v58, v81
	v_div_scale_f32 v58, s8, v14, v37, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v85, v91, v83
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v93, s9, v15, v37, v15
	v_fma_f32 v96, -v82, v86, 1.0
	v_div_fmas_f32 v83, v83, v87, v91
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fma_f32 v98, -v92, v94, 1.0
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v96, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v70, v70
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v58, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v62, v62
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v99, v93, v84
	v_div_scale_f32 v96, s10, v16, v37, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v95, -v79, v97, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v56, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v99, v93
	v_fmac_f32_e32 v94, v98, v94
	v_div_scale_f32 v98, s11, v17, v37, v17
	v_fmac_f32_e32 v97, v95, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v99, v85, v84 :: v_dual_mul_f32 v100, v96, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v79, v97, v58
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v53, v53
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v101, v98, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v80, -v80, v99, v93
	v_fma_f32 v95, -v82, v100, v96
	v_div_fmas_f32 v58, v58, v81, v97
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v92, v101, v98
	v_div_fmas_f32 v80, v80, v84, v99
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v95, v86
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v13, v83, v37, v13
	v_div_fixup_f32 v15, v80, v37, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v80, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v101, v79, v94
	v_fma_f32 v79, -v82, v100, v96
	v_div_fixup_f32 v14, v58, v37, v14
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v60
	v_rndne_f32_e32 v60, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v92, v101, v98
	v_div_fmas_f32 v79, v79, v86, v100
	s_mov_b32 vcc_lo, s11
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v68
	v_rndne_f32_e32 v68, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v94, v101
	v_div_fixup_f32 v16, v79, v37, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v76, v77
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v48, v48, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v81, v37, v17
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v43
	v_rndne_f32_e32 v43, v46
	v_rndne_f32_e32 v46, v47
	v_rndne_f32_e32 v47, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v54
	v_rndne_f32_e32 v54, v55
	v_rndne_f32_e32 v55, v59
	v_rndne_f32_e32 v59, v63
	v_rndne_f32_e32 v63, v67
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v71, v75
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v77, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v78
	v_rndne_f32_e32 v20, v20
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v86, v31
	v_cvt_i32_f32_e32 v98, v19
	v_and_b32_e32 v19, 15, v47
	v_and_b32_e32 v31, 15, v71
	v_and_b32_e32 v47, 15, v48
	v_and_b32_e32 v48, 15, v49
	v_and_b32_e32 v49, 15, v77
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v71, 10, v0
	v_and_b32_e32 v77, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	v_rndne_f32_e32 v17, v17
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v78, v45
	v_cvt_i32_f32_e32 v81, v36
	v_cvt_i32_f32_e32 v82, v35
	v_cvt_i32_f32_e32 v84, v34
	v_and_b32_e32 v34, 15, v76
	v_and_b32_e32 v35, 15, v73
	v_and_b32_e32 v36, 15, v74
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v73, 0x1800, v71
	v_lshlrev_b32_e32 v74, 6, v77
	v_lshlrev_b32_e32 v76, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v60, v60, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_cvt_i32_f32_e32 v37, v37
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v43, v43
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v92, v28
	v_cvt_i32_f32_e32 v93, v26
	v_cvt_i32_f32_e32 v94, v27
	v_cvt_i32_f32_e32 v95, v25
	v_cvt_i32_f32_e32 v99, v20
	v_and_b32_e32 v20, 15, v50
	v_and_b32_e32 v50, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v78, 0, v73, v74
	v_and_or_b32 v7, 0x1b00, v76, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v100, v21
	v_cvt_i32_f32_e32 v101, v22
	v_cvt_i32_f32_e32 v102, v18
	v_cvt_i32_f32_e32 v103, v13
	v_cvt_i32_f32_e32 v85, v32
	v_cvt_i32_f32_e32 v87, v29
	v_cvt_i32_f32_e32 v91, v30
	v_cvt_i32_f32_e32 v104, v14
	v_cvt_i32_f32_e32 v105, v15
	v_cvt_i32_f32_e32 v106, v16
	v_cvt_i32_f32_e32 v107, v17
	v_and_b32_e32 v13, 15, v37
	v_and_b32_e32 v14, 15, v40
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v16, 15, v42
	v_and_b32_e32 v18, 15, v46
	v_and_b32_e32 v27, 15, v63
	v_and_b32_e32 v28, 15, v64
	v_and_b32_e32 v29, 15, v67
	v_and_b32_e32 v30, 15, v68
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v33, 15, v75
	v_and_b32_e32 v41, 15, v61
	v_and_b32_e32 v42, 15, v62
	v_and_b32_e32 v45, 15, v52
	v_and_b32_e32 v46, 15, v53
	v_and_b32_e32 v61, 15, v92
	v_and_b32_e32 v62, 15, v93
	v_and_b32_e32 v63, 15, v94
	v_and_b32_e32 v64, 15, v95
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v6, v78, v8, v6
	v_xad_u32 v7, v7, v89, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v17, 15, v43
	v_cvt_i32_f32_e32 v79, v38
	v_cvt_i32_f32_e32 v96, v24
	v_cvt_i32_f32_e32 v97, v23
	v_and_b32_e32 v21, 15, v51
	v_and_b32_e32 v22, 15, v54
	v_and_b32_e32 v23, 15, v55
	v_and_b32_e32 v24, 15, v58
	v_and_b32_e32 v25, 15, v59
	v_and_b32_e32 v26, 15, v60
	v_and_b32_e32 v37, 15, v69
	v_and_b32_e32 v38, 15, v70
	v_and_b32_e32 v39, 15, v65
	v_and_b32_e32 v40, 15, v66
	v_and_b32_e32 v43, 15, v57
	v_and_b32_e32 v44, 15, v56
	v_and_b32_e32 v53, 15, v81
	v_and_b32_e32 v54, 15, v82
	v_and_b32_e32 v55, 15, v83
	v_and_b32_e32 v56, 15, v84
	v_and_b32_e32 v69, 15, v100
	v_and_b32_e32 v70, 15, v101
	v_and_b32_e32 v71, 15, v102
	v_and_b32_e32 v72, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v6, v[13:16]
	ds_store_b128 v6, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v7
	ds_load_b128 v[21:24], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[29:32]
	ds_store_b128 v6, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v7
	ds_load_b128 v[37:40], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[45:48]
	ds_store_b128 v6, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v7
	ds_load_b128 v[53:56], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[61:64]
	ds_store_b128 v6, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v7
	ds_load_b128 v[69:72], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[17:20]
	ds_store_b128 v6, v[25:28] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v7
	ds_load_b128 v[25:28], v7 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[33:36]
	ds_store_b128 v6, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v7
	ds_load_b128 v[41:44], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v60, 15, v91
	v_and_b32_e32 v65, 15, v96
	v_and_b32_e32 v66, 15, v97
	v_and_b32_e32 v67, 15, v98
	v_and_b32_e32 v68, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[49:52]
	ds_store_b128 v6, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v7
	ds_load_b128 v[57:60], v7 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v73, 15, v104
	v_and_b32_e32 v74, 15, v105
	v_and_b32_e32 v75, 15, v106
	v_and_b32_e32 v76, 15, v107
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v22, 4, v14
	v_lshl_or_b32 v22, v24, 4, v16
	v_lshl_or_b32 v24, v37, 4, v29
	v_lshl_or_b32 v29, v42, 4, v34
	v_lshl_or_b32 v34, v55, 4, v47
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v47, 3, v88
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v6, v[65:68]
	ds_store_b128 v6, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v7
	ds_load_b128 v[73:76], v7 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s28, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v6, s33, 7, v47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v23, 4, v15
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s28, s8
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 16, v10
	v_add_nc_u32_e32 v16, 32, v10
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v23, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v20, v28, 4, v20
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 48, v10
	v_mad_u64_u32 v[13:14], null, v10, s8, v[6:7]
	v_mad_u64_u32 v[14:15], null, v15, s8, v[6:7]
	v_mad_u64_u32 v[15:16], null, v16, s8, v[6:7]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v25, v38, 4, v30
	v_lshl_or_b32 v26, v39, 4, v31
	v_lshl_or_b32 v28, v41, 4, v33
	v_lshl_or_b32 v30, v43, 4, v35
	v_lshl_or_b32 v31, v44, 4, v36
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[16:17], null, v17, s8, v[6:7]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v22.l
	v_and_b16 v4.l, 0xff, v21.l
	v_lshlrev_b16 v6.l, 8, v8.l
	v_and_b16 v6.h, 0xff, v7.l
	v_lshlrev_b16 v7.l, 8, v20.l
	v_and_b16 v7.h, 0xff, v19.l
	v_lshlrev_b16 v8.l, 8, v18.l
	v_and_b16 v8.h, 0xff, v23.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v40, 4, v32
	v_lshl_or_b32 v36, v57, 4, v49
	v_lshl_or_b32 v37, v58, 4, v50
	v_lshl_or_b32 v38, v59, 4, v51
	v_lshl_or_b32 v39, v60, 4, v52
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v17.h, v4.l, v3.l
	v_or_b16 v17.l, v6.h, v6.l
	v_or_b16 v18.h, v7.h, v7.l
	v_or_b16 v18.l, v8.h, v8.l
	v_cndmask_b32_e32 v10, 0x80000000, v13, vcc_lo
	v_lshlrev_b16 v7.l, 8, v31.l
	v_and_b16 v7.h, 0xff, v30.l
	v_lshlrev_b16 v8.l, 8, v29.l
	v_and_b16 v8.h, 0xff, v28.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v32, v53, 4, v45
	v_lshl_or_b32 v33, v54, 4, v46
	v_lshl_or_b32 v35, v56, 4, v48
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v44, v73, 4, v65
	v_lshl_or_b32 v45, v74, 4, v66
	v_lshl_or_b32 v46, v75, 4, v67
	v_lshl_or_b32 v48, v76, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v3.l, 8, v27.l
	v_and_b16 v4.l, 0xff, v26.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v24.l
	buffer_store_b64 v[17:18], v10, s[12:15], 0 offen
	v_or_b16 v18.h, v7.h, v7.l
	v_or_b16 v18.l, v8.h, v8.l
	v_lshlrev_b16 v7.l, 8, v39.l
	v_and_b16 v7.h, 0xff, v38.l
	v_lshlrev_b16 v8.l, 8, v37.l
	v_and_b16 v8.h, 0xff, v36.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v40, v69, 4, v61
	v_lshl_or_b32 v41, v70, 4, v62
	v_lshl_or_b32 v42, v71, 4, v63
	v_lshl_or_b32 v43, v72, 4, v64
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v17.h, v4.l, v3.l
	v_or_b16 v17.l, v6.h, v6.l
	v_cndmask_b32_e32 v10, 0x80000000, v14, vcc_lo
	v_lshlrev_b16 v3.l, 8, v35.l
	v_and_b16 v4.l, 0xff, v34.l
	v_lshlrev_b16 v6.l, 8, v33.l
	v_and_b16 v6.h, 0xff, v32.l
	v_or_b16 v14.h, v7.h, v7.l
	v_or_b16 v14.l, v8.h, v8.l
	v_lshlrev_b16 v7.l, 8, v48.l
	v_and_b16 v7.h, 0xff, v46.l
	v_lshlrev_b16 v8.l, 8, v45.l
	v_and_b16 v8.h, 0xff, v44.l
	buffer_store_b64 v[17:18], v10, s[12:15], 0 offen
	v_or_b16 v13.h, v4.l, v3.l
	v_or_b16 v13.l, v6.h, v6.l
	v_lshlrev_b16 v3.l, 8, v43.l
	v_and_b16 v4.l, 0xff, v42.l
	v_lshlrev_b16 v6.l, 8, v41.l
	v_and_b16 v6.h, 0xff, v40.l
	v_or_b16 v18.h, v7.h, v7.l
	v_or_b16 v18.l, v8.h, v8.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v7, 4, v0
	v_lshrrev_b32_e32 v8, 2, v77
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v17.h, v4.l, v3.l
	v_cndmask_b32_e32 v10, 0x80000000, v15, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v17.l, v6.h, v6.l
	v_dual_cndmask_b32 v6, 0x80000000, v16 :: v_dual_and_b32 v7, 2, v7
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v8, 0, v8
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s2, s28, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[13:14], v10, s[12:15], 0 offen
	buffer_store_b64 v[17:18], v6, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v6, 0, v47
	v_mov_b16_e32 v4.l, v12.h
	v_mov_b16_e32 v3.l, v11.h
	v_add3_u32 v7, v8, v7, v47
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s2, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s28, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v6, v[3:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v3, v7
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v4, v5, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[30:31], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[34:35], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s33, 1
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s0, vcc_lo, s0
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_and_b32 vcc_lo, s1, s0
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v3, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp51:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 136
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 136
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 42
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15196
; TotalNumSgprs: 44
; NumVgprs: 136
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 44
; NumVGPRsForWavesPerEU: 136
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     136
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
