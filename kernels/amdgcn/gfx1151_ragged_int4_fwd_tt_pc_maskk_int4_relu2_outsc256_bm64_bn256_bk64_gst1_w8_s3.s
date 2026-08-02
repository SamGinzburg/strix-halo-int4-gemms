	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[24:25], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v2, 0 :: v_dual_and_b32 v7, 63, v0
	v_lshlrev_b32_e32 v67, 1, v0
	v_and_b32_e32 v68, 0x80, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s24, 0xff
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
	s_ashr_i32 s15, s4, 31
	s_mul_i32 s5, s14, s13
	s_add_i32 s17, s14, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s14, s17, s14
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s14, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s13, s13, s15
	s_sub_i32 s33, s13, s15
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
	s_load_b64 s[30:31], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[28:29], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[26:27], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[6:7], s[4:5], 0x0
	s_mov_b32 s4, 0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s25, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v3, s2, s30, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s31, 0, s2
	v_add_nc_u32_e32 v65, s30, v7
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s36, s6, s24
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[3:4]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	v_dual_mov_b32 v5, s36 :: v_dual_lshlrev_b32 v6, 1, v0
	v_dual_mov_b32 v4, s30 :: v_dual_and_b32 v1, 0x80, v0
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s30, v7
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 13 is_stmt 0                ; ragged.py:0:13
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr6
                                        ; implicit-def: $vgpr1
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr5
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	v_dual_mov_b32 v9, 0 :: v_dual_and_b32 v66, 15, v0
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
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	s_lshl_b32 s35, s33, 8
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_and_b32 s34, s2, s3
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	v_lshrrev_b32_e32 v1, 5, v0
	v_lshl_add_u32 v50, v7, 5, 0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v2, 3, v0
	v_lshrrev_b32_e32 v34, 1, v0
	v_and_b32_e32 v37, 24, v67
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v1, s35, v1
	.loc	1 1045 36 is_stmt 0             ; ragged.py:1045:36
	v_and_b32_e32 v3, 0xe0, v0
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_and_b32_e32 v69, 24, v2
	v_xor3_b32 v2, v67, v34, v2
	v_bfe_i32 v34, v0, 7, 1
	.loc	1 1045 18                       ; ragged.py:1045:18
	v_or_b32_e32 v31, 40, v1
	v_or_b32_e32 v10, 0xd0, v1
	v_or_b32_e32 v26, 0x50, v1
	v_or_b32_e32 v4, 0xf8, v1
	v_or_b32_e32 v5, 0xf0, v1
	v_add_nc_u32_e32 v7, s36, v31
	v_or_b32_e32 v6, 0xe8, v1
	v_or_b32_e32 v8, 0xe0, v1
	v_or_b32_e32 v9, 0xd8, v1
	v_or_b32_e32 v11, 0xc8, v1
	v_or_b32_e32 v12, 0xc0, v1
	v_or_b32_e32 v13, 0xb8, v1
	v_or_b32_e32 v14, 0xb0, v1
	v_or_b32_e32 v15, 0xa8, v1
	v_or_b32_e32 v16, 0xa0, v1
	v_or_b32_e32 v17, 0x98, v1
	v_or_b32_e32 v18, 0x90, v1
	v_or_b32_e32 v19, 0x88, v1
	v_or_b32_e32 v20, 0x80, v1
	v_or_b32_e32 v21, 0x78, v1
	v_or_b32_e32 v22, 0x70, v1
	v_or_b32_e32 v23, 0x68, v1
	v_or_b32_e32 v24, 0x60, v1
	v_or_b32_e32 v25, 0x58, v1
	v_or_b32_e32 v27, 0x48, v1
	v_or_b32_e32 v28, 64, v1
	v_or_b32_e32 v29, 56, v1
	v_or_b32_e32 v30, 48, v1
	v_or_b32_e32 v32, 32, v1
	v_or_b32_e32 v33, 24, v1
	v_or_b32_e32 v35, 16, v1
	v_or_b32_e32 v36, 8, v1
	v_add_nc_u32_e32 v1, s36, v1
	v_mul_lo_u32 v78, v7, s25
	v_add_nc_u32_e32 v7, s36, v26
	v_add_nc_u32_e32 v10, s36, v10
	v_mov_b32_e32 v26, 0
	v_add_nc_u32_e32 v30, s36, v30
	v_and_b32_e32 v49, 24, v2
	v_mul_lo_u32 v83, v7, s25
	v_add_nc_u32_e32 v7, s36, v21
	v_mov_b32_e32 v21, 0
	v_mul_lo_u32 v99, v10, s25
	v_mov_b32_e32 v10, 0
	v_mul_lo_u32 v73, v1, s25
	v_add_nc_u32_e32 v1, s36, v35
	v_and_b32_e32 v2, 0x7f, v0
	v_and_b32_e32 v34, 0x88, v34
	v_add_nc_u32_e32 v36, s36, v36
	v_add_nc_u32_e32 v5, s36, v5
	v_mul_lo_u32 v75, v1, s25
	v_dual_mov_b32 v40, 0 :: v_dual_add_nc_u32 v1, s36, v29
	v_mov_b32_e32 v46, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v103, v5, s25
	v_mov_b32_e32 v5, 0
	v_mul_lo_u32 v80, v1, s25
	v_add_nc_u32_e32 v1, s36, v24
	v_mul_lo_u32 v74, v36, s25
	v_mov_b32_e32 v36, 0
	v_mov_b32_e32 v44, 0
	v_lshl_or_b32 v70, v66, 5, v37
	v_mul_lo_u32 v85, v1, s25
	v_add_nc_u32_e32 v1, s36, v19
	v_dual_mov_b32 v19, 0 :: v_dual_add_nc_u32 v20, s36, v20
	v_dual_mov_b32 v38, 0 :: v_dual_add_nc_u32 v15, s36, v15
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_lo_u32 v90, v1, s25
	v_add_nc_u32_e32 v1, s36, v14
	s_clause 0x1
	s_load_b128 s[4:7], s[0:1], 0x0
	s_load_b32 s37, s[0:1], 0x50
	v_mul_lo_u32 v94, v15, s25
	v_mov_b32_e32 v15, 0
	v_mul_lo_u32 v89, v20, s25
	v_mul_lo_u32 v95, v1, s25
	v_add_nc_u32_e32 v1, s36, v9
	v_mov_b32_e32 v9, 0
	v_mul_lo_u32 v79, v30, s25
	v_mov_b32_e32 v30, 0
	v_mul_lo_u32 v88, v7, s25
	v_add_nc_u32_e32 v7, s36, v16
	v_mul_lo_u32 v100, v1, s25
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v71, v34, v2
	v_add_nc_u32_e32 v2, s36, v33
	v_mul_lo_u32 v93, v7, s25
	v_add_nc_u32_e32 v7, s36, v11
	v_dual_mov_b32 v11, 0 :: v_dual_mov_b32 v14, 0
	v_mov_b32_e32 v20, 0
	v_mov_b32_e32 v34, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_lo_u32 v98, v7, s25
	v_mov_b32_e32 v7, 0
	v_mul_lo_u32 v76, v2, s25
	v_add_nc_u32_e32 v2, s36, v28
	v_dual_mov_b32 v28, 0 :: v_dual_add_nc_u32 v25, s36, v25
	v_mov_b32_e32 v24, 0
	v_add_nc_u32_e32 v4, s36, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v81, v2, s25
	v_add_nc_u32_e32 v2, s36, v23
	v_dual_mov_b32 v23, 0 :: v_dual_mov_b32 v42, 0
	v_xor_b32_e32 v106, 8, v70
	v_xor_b32_e32 v107, 16, v70
	v_mul_lo_u32 v86, v2, s25
	v_add_nc_u32_e32 v2, s36, v18
	v_xor_b32_e32 v108, 24, v70
	v_xor_b32_e32 v109, 0x208, v70
	v_xor_b32_e32 v110, 0x218, v70
	v_xor_b32_e32 v111, 0x210, v70
	v_mul_lo_u32 v91, v2, s25
	v_add_nc_u32_e32 v2, s36, v13
	v_xor_b32_e32 v112, 0x410, v70
	v_xor_b32_e32 v113, 0x418, v70
	v_xor_b32_e32 v114, 0x408, v70
	v_xor_b32_e32 v115, 0x618, v70
	v_mul_lo_u32 v96, v2, s25
	v_add_nc_u32_e32 v2, s36, v8
	v_xor_b32_e32 v116, 0x610, v70
	v_xor_b32_e32 v117, 0x608, v70
	v_xor_b32_e32 v118, 0x110, v71
	v_mul_lo_u32 v84, v25, s25
	v_mul_lo_u32 v101, v2, s25
	v_mov_b32_e32 v2, 0
	v_lshl_or_b32 v72, v3, 4, v70
	v_add_nc_u32_e32 v3, s36, v32
	v_mov_b32_e32 v25, 0
	v_mul_lo_u32 v104, v4, s25
	v_mov_b32_e32 v48, 0
	v_xor_b32_e32 v119, 8, v72
	v_mul_lo_u32 v77, v3, s25
	v_add_nc_u32_e32 v3, s36, v27
	v_xor_b32_e32 v120, 16, v72
	v_xor_b32_e32 v121, 24, v72
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v8, 0
	v_mul_lo_u32 v82, v3, s25
	v_add_nc_u32_e32 v3, s36, v22
	v_dual_mov_b32 v13, 0 :: v_dual_mov_b32 v16, 0
	v_mov_b32_e32 v18, 0
	v_mov_b32_e32 v22, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v87, v3, s25
	v_add_nc_u32_e32 v3, s36, v17
	v_mov_b32_e32 v17, 0
	v_dual_mov_b32 v27, 0 :: v_dual_mov_b32 v52, 0
	v_dual_mov_b32 v29, 0 :: v_dual_mov_b32 v54, 0
	v_mul_lo_u32 v92, v3, s25
	v_add_nc_u32_e32 v3, s36, v12
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v31, 0
	v_mov_b32_e32 v56, 0
	v_mov_b32_e32 v32, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_mul_lo_u32 v97, v3, s25
	v_add_nc_u32_e32 v3, s36, v6
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v35, 0
	v_mov_b32_e32 v60, 0
	v_mul_lo_u32 v102, v3, s25
	v_mov_b32_e32 v3, 0
	v_dual_mov_b32 v37, 0 :: v_dual_mov_b32 v62, 0
	v_dual_mov_b32 v39, 0 :: v_dual_mov_b32 v64, 0
	v_dual_mov_b32 v41, 0 :: v_dual_add_nc_u32 v106, 0, v106
	v_dual_mov_b32 v43, 0 :: v_dual_add_nc_u32 v108, 0, v108
	v_dual_mov_b32 v45, 0 :: v_dual_add_nc_u32 v110, 0, v110
	v_dual_mov_b32 v47, 0 :: v_dual_add_nc_u32 v112, 0, v112
	v_add_nc_u32_e32 v105, v50, v49
	v_dual_mov_b32 v49, 0 :: v_dual_add_nc_u32 v114, 0, v114
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v51, 0
	v_dual_mov_b32 v53, 0 :: v_dual_add_nc_u32 v116, 0, v116
	v_dual_mov_b32 v55, 0 :: v_dual_add_nc_u32 v118, 0, v118
	v_dual_mov_b32 v57, 0 :: v_dual_add_nc_u32 v120, 0, v120
	v_dual_mov_b32 v59, 0 :: v_dual_and_b32 v122, 31, v0
	v_mov_b32_e32 v61, 0
	v_mov_b32_e32 v63, 0
	v_add_nc_u32_e32 v107, 0, v107
	v_add_nc_u32_e32 v109, 0, v109
	v_add_nc_u32_e32 v111, 0, v111
	v_add_nc_u32_e32 v113, 0, v113
	v_add_nc_u32_e32 v115, 0, v115
	v_add_nc_u32_e32 v117, 0, v117
	v_add_nc_u32_e32 v119, 0, v119
	v_add_nc_u32_e32 v121, 0, v121
	s_waitcnt lgkmcnt(0)
	s_and_b32 s5, s5, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	s_and_b32 s21, s7, 0xffff
	s_mov_b32 s38, 0
	s_mov_b32 s12, s4
	s_mov_b32 s13, s5
	s_mov_b32 s20, s6
	s_mov_b32 s22, s14
	s_mov_b32 s23, s15
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v123, s38, v69
	v_or_b32_e32 v125, s38, v122
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_add_nc_u32_e32 v189, 0, v72
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v187, 0, v70
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s38, s38, 32
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v129, 4, v123
	v_or_b32_e32 v130, 5, v123
	v_or_b32_e32 v135, 7, v123
	v_or_b32_e32 v131, 6, v123
	v_or_b32_e32 v128, 3, v123
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e32 vcc_lo, s25, v123
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v127, 2, v123
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[132:133], null, v129, s37, v[65:66]
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v126, 1, v123
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[123:124], null, v123, s37, v[65:66]
	v_mad_u64_u32 v[133:134], null, v130, s37, v[65:66]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s3, s25, v135
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[134:135], null, v135, s37, v[65:66]
	v_mad_u64_u32 v[135:136], null, v131, s37, v[65:66]
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v140, v73, v125
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s0, s25, v125
	.loc	1 1070 38                       ; ragged.py:1070:38
	v_add_nc_u32_e32 v124, v74, v125
	v_add_nc_u32_e32 v142, v76, v125
	v_add_nc_u32_e32 v143, v77, v125
	v_add_nc_u32_e32 v144, v78, v125
	v_add_nc_u32_e32 v145, v79, v125
	v_add_nc_u32_e32 v146, v80, v125
	v_add_nc_u32_e32 v147, v81, v125
	v_add_nc_u32_e32 v148, v82, v125
	v_add_nc_u32_e32 v149, v83, v125
	v_add_nc_u32_e32 v150, v84, v125
	v_add_nc_u32_e32 v151, v85, v125
	v_add_nc_u32_e32 v152, v86, v125
	v_add_nc_u32_e32 v153, v87, v125
	v_add_nc_u32_e32 v154, v88, v125
	v_add_nc_u32_e32 v155, v89, v125
	v_add_nc_u32_e32 v156, v90, v125
	v_add_nc_u32_e32 v157, v91, v125
	v_add_nc_u32_e32 v158, v92, v125
	v_add_nc_u32_e32 v159, v93, v125
	v_add_nc_u32_e32 v160, v94, v125
	v_add_nc_u32_e32 v161, v95, v125
	v_add_nc_u32_e32 v162, v96, v125
	v_add_nc_u32_e32 v163, v97, v125
	v_add_nc_u32_e32 v164, v98, v125
	v_add_nc_u32_e32 v165, v99, v125
	v_add_nc_u32_e32 v166, v100, v125
	v_add_nc_u32_e32 v167, v101, v125
	v_add_nc_u32_e32 v168, v102, v125
	v_add_nc_u32_e32 v169, v103, v125
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[136:137], null, v128, s37, v[65:66]
	.loc	1 1069 62 is_stmt 0             ; ragged.py:1069:62
	s_and_b32 vcc_lo, s34, vcc_lo
	.loc	1 1070 38 is_stmt 1             ; ragged.py:1070:38
	v_add_nc_u32_e32 v141, v75, v125
	v_add_nc_u32_e32 v125, v104, v125
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s2, s25, v130
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[137:138], null, v127, s37, v[65:66]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s5, s25, v128
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[138:139], null, v126, s37, v[65:66]
	.loc	1 1060 27                       ; ragged.py:1060:27
	v_cmp_gt_i32_e64 s4, s25, v131
	v_cmp_gt_i32_e64 s6, s25, v127
	v_cmp_gt_i32_e64 s7, s25, v126
	v_cmp_gt_i32_e64 s1, s25, v129
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v126, 0x80000000, v140, s0
	v_cndmask_b32_e64 v127, 0x80000000, v124, s0
	v_cndmask_b32_e64 v128, 0x80000000, v142, s0
	v_cndmask_b32_e64 v129, 0x80000000, v143, s0
	v_cndmask_b32_e64 v130, 0x80000000, v144, s0
	v_cndmask_b32_e64 v131, 0x80000000, v145, s0
	v_cndmask_b32_e64 v139, 0x80000000, v146, s0
	v_cndmask_b32_e64 v140, 0x80000000, v147, s0
	v_cndmask_b32_e64 v142, 0x80000000, v149, s0
	v_cndmask_b32_e64 v143, 0x80000000, v150, s0
	v_cndmask_b32_e64 v144, 0x80000000, v151, s0
	v_cndmask_b32_e64 v145, 0x80000000, v152, s0
	v_cndmask_b32_e64 v146, 0x80000000, v153, s0
	v_cndmask_b32_e64 v147, 0x80000000, v154, s0
	v_cndmask_b32_e64 v149, 0x80000000, v156, s0
	v_cndmask_b32_e64 v150, 0x80000000, v157, s0
	v_cndmask_b32_e64 v151, 0x80000000, v158, s0
	v_cndmask_b32_e64 v152, 0x80000000, v159, s0
	v_cndmask_b32_e64 v153, 0x80000000, v160, s0
	v_cndmask_b32_e64 v154, 0x80000000, v161, s0
	v_cndmask_b32_e64 v156, 0x80000000, v163, s0
	v_cndmask_b32_e64 v157, 0x80000000, v164, s0
	v_cndmask_b32_e64 v158, 0x80000000, v165, s0
	v_cndmask_b32_e64 v159, 0x80000000, v166, s0
	v_cndmask_b32_e64 v160, 0x80000000, v167, s0
	v_cndmask_b32_e64 v161, 0x80000000, v168, s0
	v_cndmask_b32_e64 v163, 0x80000000, v125, s0
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v164, 0x80000000, v123, vcc_lo
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_cndmask_b32_e64 v124, 0x80000000, v141, s0
	v_cndmask_b32_e64 v141, 0x80000000, v148, s0
	v_cndmask_b32_e64 v148, 0x80000000, v155, s0
	v_cndmask_b32_e64 v155, 0x80000000, v162, s0
	v_cndmask_b32_e64 v162, 0x80000000, v169, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s0, s34, s3
	s_and_b32 vcc_lo, s34, s2
	s_and_b32 s3, s34, s5
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v134, 0x80000000, v134, s0
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s2, s34, s4
	s_and_b32 s4, s34, s6
	s_and_b32 s5, s34, s7
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_dual_cndmask_b32 v133, 0x80000000, v133 :: v_dual_add_nc_u32 v188, 0, v71
	.loc	1 1069 62                       ; ragged.py:1069:62
	s_and_b32 s1, s34, s1
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v136, 0x80000000, v136, s3
	v_cndmask_b32_e64 v135, 0x80000000, v135, s2
	v_cndmask_b32_e64 v137, 0x80000000, v137, s4
	v_cndmask_b32_e64 v138, 0x80000000, v138, s5
	.loc	1 1070 30 is_stmt 1             ; ragged.py:1070:30
	s_clause 0x1e
	buffer_load_u8 v172, v126, s[20:23], 0 offen
	buffer_load_u8 v173, v124, s[20:23], 0 offen
	buffer_load_u8 v174, v129, s[20:23], 0 offen
	buffer_load_u8 v175, v131, s[20:23], 0 offen
	buffer_load_u8 v123, v139, s[20:23], 0 offen
	buffer_load_u8 v124, v130, s[20:23], 0 offen
	buffer_load_u8 v126, v128, s[20:23], 0 offen
	buffer_load_u8 v128, v127, s[20:23], 0 offen
	buffer_load_u8 v140, v140, s[20:23], 0 offen
	buffer_load_u8 v142, v142, s[20:23], 0 offen
	buffer_load_u8 v144, v144, s[20:23], 0 offen
	buffer_load_u8 v146, v146, s[20:23], 0 offen
	buffer_load_u8 v125, v147, s[20:23], 0 offen
	buffer_load_u8 v127, v145, s[20:23], 0 offen
	buffer_load_u8 v129, v143, s[20:23], 0 offen
	buffer_load_u8 v141, v141, s[20:23], 0 offen
	buffer_load_u8 v143, v148, s[20:23], 0 offen
	buffer_load_u8 v145, v150, s[20:23], 0 offen
	buffer_load_u8 v147, v152, s[20:23], 0 offen
	buffer_load_u8 v176, v154, s[20:23], 0 offen
	buffer_load_u8 v130, v155, s[20:23], 0 offen
	buffer_load_u8 v131, v153, s[20:23], 0 offen
	buffer_load_u8 v177, v151, s[20:23], 0 offen
	buffer_load_u8 v178, v149, s[20:23], 0 offen
	buffer_load_u8 v179, v156, s[20:23], 0 offen
	buffer_load_u8 v180, v158, s[20:23], 0 offen
	buffer_load_u8 v181, v160, s[20:23], 0 offen
	buffer_load_u8 v182, v162, s[20:23], 0 offen
	buffer_load_u8 v183, v163, s[20:23], 0 offen
	buffer_load_u8 v184, v161, s[20:23], 0 offen
	buffer_load_u8 v185, v159, s[20:23], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v132, 0x80000000, v132, s1
	s_clause 0x7
	buffer_load_u8 v139, v164, s[12:15], 0 offen
	buffer_load_u8 v134, v134, s[12:15], 0 offen
	buffer_load_u8 v133, v133, s[12:15], 0 offen
	buffer_load_u8 v136, v136, s[12:15], 0 offen
	buffer_load_u8 v138, v138, s[12:15], 0 offen
	buffer_load_u8 v135, v135, s[12:15], 0 offen
	buffer_load_u8 v148, v132, s[12:15], 0 offen
	buffer_load_u8 v137, v137, s[12:15], 0 offen
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v186, v157, s[20:23], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s38, s25
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(7)
	v_lshlrev_b16 v132.l, 8, v134.l
	s_waitcnt vmcnt(6)
	v_lshlrev_b16 v132.h, 8, v133.l
	s_waitcnt vmcnt(5)
	v_lshlrev_b16 v133.l, 8, v136.l
	s_waitcnt vmcnt(4)
	v_lshlrev_b16 v133.h, 8, v138.l
	s_waitcnt vmcnt(3)
	v_or_b16 v135.h, v135.l, v132.l
	s_waitcnt vmcnt(2)
	v_or_b16 v135.l, v148.l, v132.h
	s_waitcnt vmcnt(1)
	v_or_b16 v134.h, v137.l, v133.l
	v_or_b16 v134.l, v139.l, v133.h
	ds_store_b64 v105, v[134:135]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b64 v[148:149], v106
	ds_load_b64 v[150:151], v107
	ds_load_b64 v[152:153], v108
	ds_load_b64 v[154:155], v109
	ds_load_b64 v[156:157], v110
	ds_load_b64 v[158:159], v111
	ds_load_b64 v[160:161], v112
	ds_load_b64 v[162:163], v113
	ds_load_b64 v[164:165], v114
	ds_load_b64 v[166:167], v115
	ds_load_b64 v[168:169], v116
	ds_load_b64 v[170:171], v117
	ds_load_2addr_stride64_b64 v[132:135], v187 offset1:1
	ds_load_2addr_stride64_b64 v[136:139], v187 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v188, v172
	ds_store_b8 v188, v173 offset:512
	ds_store_b8 v188, v174 offset:1024
	ds_store_b8 v188, v175 offset:1536
	ds_store_b8 v188, v140 offset:2048
	ds_store_b8 v188, v142 offset:2560
	ds_store_b8 v188, v144 offset:3072
	ds_store_b8 v188, v146 offset:3584
	ds_store_b8 v188, v143 offset:4096
	ds_store_b8 v188, v145 offset:4608
	ds_store_b8 v188, v147 offset:5120
	ds_store_b8 v188, v176 offset:5632
	ds_store_b8 v188, v179 offset:6144
	ds_store_b8 v188, v180 offset:6656
	ds_store_b8 v188, v181 offset:7168
	ds_store_b8 v188, v182 offset:7680
	ds_store_b8 v118, v128
	ds_store_b8 v118, v126 offset:512
	ds_store_b8 v118, v124 offset:1024
	ds_store_b8 v118, v123 offset:1536
	ds_store_b8 v118, v141 offset:2048
	ds_store_b8 v118, v129 offset:2560
	ds_store_b8 v118, v127 offset:3072
	ds_store_b8 v118, v125 offset:3584
	ds_store_b8 v118, v178 offset:4096
	ds_store_b8 v118, v177 offset:4608
	ds_store_b8 v118, v131 offset:5120
	ds_store_b8 v118, v130 offset:5632
	s_waitcnt vmcnt(0)
	ds_store_b8 v118, v186 offset:6144
	ds_store_b8 v118, v185 offset:6656
	ds_store_b8 v118, v184 offset:7168
	ds_store_b8 v118, v183 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[123:126], v189 offset1:8
	ds_load_2addr_stride64_b64 v[127:130], v119 offset1:8
	ds_load_2addr_stride64_b64 v[140:143], v120 offset1:8
	ds_load_2addr_stride64_b64 v[144:147], v121 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[123:124], v[154:155], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[125:126], v[154:155], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[123:124], v[160:161], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[125:126], v[160:161], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[123:124], v[166:167], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[123:124], v[132:133], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[125:126], v[132:133], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[125:126], v[166:167], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[17:24], v[127:128], v[134:135], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[129:130], v[134:135], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[1:8], v[127:128], v[148:149], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[129:130], v[148:149], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[127:128], v[162:163], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[129:130], v[162:163], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[127:128], v[168:169], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[129:130], v[168:169], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[140:141], v[150:151], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[142:143], v[150:151], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[140:141], v[156:157], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[142:143], v[156:157], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[140:141], v[136:137], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[142:143], v[136:137], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[140:141], v[170:171], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[142:143], v[170:171], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[144:145], v[152:153], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[146:147], v[152:153], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[144:145], v[158:159], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[146:147], v[158:159], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[144:145], v[164:165], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[146:147], v[164:165], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[144:145], v[138:139], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[146:147], v[138:139], v[57:64] neg_lo:[1,1,0]
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
	v_cvt_f32_i32_e32 v92, v12
	v_cvt_f32_i32_e32 v91, v13
	v_cvt_f32_i32_e32 v90, v14
	v_cvt_f32_i32_e32 v89, v15
	v_cvt_f32_i32_e32 v88, v16
	v_cvt_f32_i32_e32 v87, v17
	v_cvt_f32_i32_e32 v86, v18
	v_cvt_f32_i32_e32 v85, v19
	v_cvt_f32_i32_e32 v84, v20
	v_cvt_f32_i32_e32 v83, v21
	v_cvt_f32_i32_e32 v82, v22
	v_cvt_f32_i32_e32 v81, v23
	v_cvt_f32_i32_e32 v80, v24
	v_cvt_f32_i32_e32 v79, v25
	v_cvt_f32_i32_e32 v78, v26
	v_cvt_f32_i32_e32 v77, v27
	v_cvt_f32_i32_e32 v76, v28
	v_cvt_f32_i32_e32 v75, v29
	v_cvt_f32_i32_e32 v74, v30
	v_cvt_f32_i32_e32 v73, v31
	v_cvt_f32_i32_e32 v72, v32
	v_cvt_f32_i32_e32 v71, v33
	v_cvt_f32_i32_e32 v70, v34
	v_cvt_f32_i32_e32 v69, v35
	v_cvt_f32_i32_e32 v36, v36
	v_cvt_f32_i32_e32 v35, v37
	v_cvt_f32_i32_e32 v34, v38
	v_cvt_f32_i32_e32 v33, v39
	v_cvt_f32_i32_e32 v32, v40
	v_cvt_f32_i32_e32 v31, v41
	v_cvt_f32_i32_e32 v30, v42
	v_cvt_f32_i32_e32 v29, v43
	v_cvt_f32_i32_e32 v28, v44
	v_cvt_f32_i32_e32 v27, v45
	v_cvt_f32_i32_e32 v26, v46
	v_cvt_f32_i32_e32 v25, v47
	v_cvt_f32_i32_e32 v24, v48
	v_cvt_f32_i32_e32 v23, v49
	v_cvt_f32_i32_e32 v22, v50
	v_cvt_f32_i32_e32 v21, v51
	v_cvt_f32_i32_e32 v20, v52
	v_cvt_f32_i32_e32 v19, v53
	v_cvt_f32_i32_e32 v18, v54
	v_cvt_f32_i32_e32 v17, v55
	v_cvt_f32_i32_e32 v16, v56
	v_cvt_f32_i32_e32 v15, v57
	v_cvt_f32_i32_e32 v14, v58
	v_cvt_f32_i32_e32 v13, v59
	v_cvt_f32_i32_e32 v12, v60
	v_cvt_f32_i32_e32 v11, v61
	v_cvt_f32_i32_e32 v10, v62
	v_cvt_f32_i32_e32 v9, v63
	v_cvt_f32_i32_e32 v2, v64
	v_dual_mov_b32 v5, s36 :: v_dual_mov_b32 v4, s30
	v_dual_mov_b32 v6, v67 :: v_dual_mov_b32 v1, v68
	v_mov_b32_e32 v3, v65
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v37, 32, v66
	v_or_b32_e32 v7, 48, v66
	v_or_b32_e32 v39, 16, v66
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s15, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v37, s1, s30, v37
	v_add_co_u32 v7, s0, s30, v7
	v_add_co_ci_u32_e64 v38, null, s31, 0, s1
	v_add_co_u32 v39, s1, s30, v39
	v_add_co_ci_u32_e64 v8, null, s31, 0, s0
	v_add_co_ci_u32_e64 v40, null, s31, 0, s1
	v_add_co_u32 v41, s1, s30, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v42, null, s31, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[28:29], v[7:8]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[26:27], v[7:8]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[28:29], v[39:40]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[28:29], v[41:42]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[26:27], v[41:42]
	v_cmp_gt_i64_e64 s4, s[26:27], v[39:40]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[28:29], v[37:38]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[26:27], v[37:38]
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v7, 1, v7
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v8, 1, v41
	v_lshlrev_b32_e32 v38, 1, v39
	v_lshlrev_b32_e32 v37, 1, v37
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s5, s5, s6
	s_and_b32 s3, s3, s4
	s_and_b32 s1, s1, s2
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_cndmask_b32_e64 v8, 0x80000000, v8, s5
	v_cndmask_b32_e64 v38, 0x80000000, v38, s3
	v_cndmask_b32_e64 v37, 0x80000000, v37, s1
	s_mov_b32 s14, 0x7ffffffe
	s_mov_b32 s12, s8
	s_clause 0x3
	buffer_load_u16 v39, v8, s[12:15], 0 offen
	buffer_load_u16 v38, v38, s[12:15], 0 offen
	buffer_load_u16 v37, v37, s[12:15], 0 offen
	buffer_load_u16 v40, v7, s[12:15], 0 offen
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_or_b32_e32 v7, s35, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	s_mov_b32 s0, 0x76543210
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v107, 3, v1
.Ltmp4:
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v5, v7, v5, 1
	buffer_load_u16 v41, v5, s[12:15], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s13, s17, 0xffff
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(3)
	v_lshlrev_b32_e32 v38, 16, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v64, v83, v38 :: v_dual_lshlrev_b32 v39, 16, v39
	v_dual_mul_f32 v48, v99, v39 :: v_dual_and_b32 v5, 0xf0, v0
	v_dual_mul_f32 v50, v97, v39 :: v_dual_lshlrev_b32 v7, 5, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_and_b32_e32 v42, 28, v6
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v56, 3, v0
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp6:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v44, v5, 2, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v55, v92, v39
	v_dual_mul_f32 v62, v85, v38 :: v_dual_and_b32 v43, 32, v7
	v_dual_mul_f32 v49, v98, v39 :: v_dual_and_b32 v104, 4, v0
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v45, v56, 9, 0
.Ltmp8:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v46, v5, 1, 0
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v42, v44, v43, v42
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v58, v90, v39 :: v_dual_lshlrev_b32 v37, 16, v37
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v57, v91, v39 :: v_dual_lshlrev_b32 v40, 16, v40
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v76, v76, v38 :: v_dual_lshlrev_b32 v41, 16, v41
	v_dual_mul_f32 v47, v100, v39 :: v_dual_and_b32 v8, 0x60, v0
	v_dual_mul_f32 v52, v95, v39 :: v_dual_and_b32 v105, 8, v0
	v_dual_mul_f32 v51, v96, v39 :: v_dual_lshlrev_b32 v6, 1, v1
	v_dual_mul_f32 v53, v94, v39 :: v_dual_lshlrev_b32 v106, 4, v0
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v110, v104, 2, v45
.Ltmp10:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v43, v103, v39
	v_mul_f32_e32 v44, v102, v39
	v_mul_f32_e32 v45, v101, v39
	v_dual_mul_f32 v54, v93, v39 :: v_dual_lshlrev_b32 v7, 5, v56
	v_dual_mul_f32 v59, v89, v39 :: v_dual_mul_f32 v68, v80, v38
	v_dual_mul_f32 v39, v88, v39 :: v_dual_mul_f32 v78, v78, v38
	v_mul_f32_e32 v60, v87, v38
	v_dual_mul_f32 v61, v86, v38 :: v_dual_mul_f32 v36, v36, v37
	v_dual_mul_f32 v63, v84, v38 :: v_dual_mul_f32 v70, v70, v37
	v_mul_f32_e32 v65, v82, v38
	v_dual_mul_f32 v67, v81, v38 :: v_dual_mul_f32 v80, v34, v37
	v_dual_mul_f32 v79, v79, v38 :: v_dual_mul_f32 v82, v32, v37
	v_dual_mul_f32 v77, v77, v38 :: v_dual_mul_f32 v84, v30, v37
	v_dual_mul_f32 v75, v75, v38 :: v_dual_mul_f32 v86, v28, v37
	v_dual_mul_f32 v74, v74, v38 :: v_dual_mul_f32 v69, v69, v37
	v_dual_mul_f32 v73, v73, v38 :: v_dual_mul_f32 v88, v26, v37
	v_dual_mul_f32 v38, v72, v38 :: v_dual_mul_f32 v81, v33, v37
	v_mul_f32_e32 v71, v71, v37
	v_mul_f32_e32 v72, v35, v37
	v_dual_mul_f32 v83, v31, v37 :: v_dual_mul_f32 v22, v22, v40
	v_mul_f32_e32 v85, v29, v37
	v_dual_mul_f32 v87, v27, v37 :: v_dual_mul_f32 v16, v16, v40
	v_dual_mul_f32 v89, v25, v37 :: v_dual_mul_f32 v90, v19, v40
	v_dual_mul_f32 v37, v24, v37 :: v_dual_mul_f32 v14, v14, v40
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v42, v41
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[24:27], v46
	ds_load_b128 v[28:31], v46 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v41, v21, v40
	v_mul_f32_e32 v42, v20, v40
	v_mul_f32_e32 v91, v18, v40
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[18:21], v46 offset:512
	ds_load_b128 v[32:35], v46 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v23, v23, v40
	v_mul_f32_e32 v17, v17, v40
	v_mul_f32_e32 v15, v15, v40
	v_mul_f32_e32 v13, v13, v40
	v_mul_f32_e32 v12, v12, v40
	v_mul_f32_e32 v11, v11, v40
	v_mul_f32_e32 v10, v10, v40
	v_mul_f32_e32 v9, v9, v40
	v_mul_f32_e32 v2, v2, v40
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v108, v104, 6, 0
	v_xor_b32_e32 v109, v7, v8
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp12:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v40, v43, v24 :: v_dual_mul_f32 v43, v44, v25
	v_dual_mul_f32 v44, v45, v26 :: v_dual_mul_f32 v45, v47, v27
	v_dual_mul_f32 v46, v48, v28 :: v_dual_mul_f32 v47, v49, v29
	v_dual_mul_f32 v48, v50, v30 :: v_dual_mul_f32 v49, v51, v31
	v_dual_mul_f32 v50, v52, v18 :: v_dual_mul_f32 v51, v53, v19
	v_dual_mul_f32 v52, v54, v20 :: v_dual_mul_f32 v53, v55, v21
	v_dual_mul_f32 v54, v57, v32 :: v_dual_mul_f32 v55, v58, v33
	v_dual_mul_f32 v57, v59, v34 :: v_dual_mul_f32 v58, v60, v24
	v_mul_f32_e32 v39, v39, v35
	v_dual_mul_f32 v59, v61, v25 :: v_dual_mul_f32 v38, v38, v35
	v_dual_mul_f32 v60, v62, v26 :: v_dual_mul_f32 v61, v63, v27
	v_mul_f32_e32 v70, v70, v25
	v_dual_mul_f32 v62, v64, v28 :: v_dual_mul_f32 v63, v65, v29
	v_mul_f32_e32 v36, v36, v27
	v_dual_mul_f32 v64, v67, v30 :: v_dual_mul_f32 v65, v68, v31
	v_dual_mul_f32 v67, v79, v18 :: v_dual_mul_f32 v72, v72, v28
	v_dual_mul_f32 v68, v78, v19 :: v_dual_mul_f32 v77, v77, v20
	v_mul_f32_e32 v78, v80, v29
	v_dual_mul_f32 v76, v76, v21 :: v_dual_mul_f32 v75, v75, v32
	v_mul_f32_e32 v80, v82, v31
	v_dual_mul_f32 v74, v74, v33 :: v_dual_mul_f32 v73, v73, v34
	v_dual_mul_f32 v82, v84, v19 :: v_dual_mul_f32 v71, v71, v24
	v_dual_mul_f32 v69, v69, v26 :: v_dual_mul_f32 v22, v22, v25
	v_mul_f32_e32 v79, v81, v30
	v_dual_mul_f32 v81, v83, v18 :: v_dual_mul_f32 v16, v16, v31
	v_dual_mul_f32 v83, v85, v20 :: v_dual_mul_f32 v14, v14, v19
	v_dual_mul_f32 v84, v86, v21 :: v_dual_mul_f32 v85, v87, v32
	v_dual_mul_f32 v87, v89, v34 :: v_dual_mul_f32 v12, v12, v21
	v_dual_mul_f32 v37, v37, v35 :: v_dual_mul_f32 v10, v10, v33
	v_dual_mul_f32 v23, v23, v24 :: v_dual_mul_f32 v2, v2, v35
	v_dual_mul_f32 v24, v41, v26 :: v_dual_mul_f32 v25, v42, v27
	v_dual_mul_f32 v26, v90, v28 :: v_dual_mul_f32 v27, v91, v29
	v_dual_mul_f32 v17, v17, v30 :: v_dual_max_f32 v30, 0, v48
	v_mul_f32_e32 v15, v15, v18
	v_dual_mul_f32 v13, v13, v20 :: v_dual_max_f32 v28, 0, v46
	v_dual_mul_f32 v11, v11, v32 :: v_dual_max_f32 v32, 0, v50
	v_dual_mul_f32 v9, v9, v34 :: v_dual_mul_f32 v86, v88, v33
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v18, 0, v40 :: v_dual_max_f32 v19, 0, v43
	v_dual_max_f32 v20, 0, v44 :: v_dual_max_f32 v21, 0, v45
	v_max_f32_e32 v48, 0, v39
	v_dual_max_f32 v29, 0, v47 :: v_dual_max_f32 v64, 0, v64
	v_max_f32_e32 v31, 0, v49
	v_dual_max_f32 v33, 0, v51 :: v_dual_max_f32 v90, 0, v77
	v_dual_max_f32 v34, 0, v52 :: v_dual_max_f32 v35, 0, v53
	v_dual_max_f32 v88, 0, v67 :: v_dual_max_f32 v43, 0, v54
	v_max_f32_e32 v92, 0, v75
	v_dual_max_f32 v44, 0, v55 :: v_dual_max_f32 v47, 0, v57
	v_max_f32_e32 v38, 0, v38
	v_dual_max_f32 v51, 0, v58 :: v_dual_max_f32 v94, 0, v73
	v_dual_max_f32 v52, 0, v59 :: v_dual_max_f32 v55, 0, v60
	v_dual_max_f32 v96, 0, v70 :: v_dual_max_f32 v57, 0, v61
	v_max_f32_e32 v36, 0, v36
	v_dual_max_f32 v60, 0, v62 :: v_dual_max_f32 v61, 0, v63
	v_dual_max_f32 v98, 0, v72 :: v_dual_max_f32 v65, 0, v65
	v_max_f32_e32 v80, 0, v80
	v_dual_max_f32 v89, 0, v68 :: v_dual_max_f32 v82, 0, v82
	v_dual_max_f32 v91, 0, v76 :: v_dual_max_f32 v86, 0, v86
	v_dual_max_f32 v93, 0, v74 :: v_dual_max_f32 v84, 0, v84
	v_dual_max_f32 v95, 0, v71 :: v_dual_max_f32 v100, 0, v37
	v_dual_max_f32 v97, 0, v69 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v99, 0, v78 :: v_dual_max_f32 v24, 0, v24
	v_dual_max_f32 v79, 0, v79 :: v_dual_max_f32 v102, 0, v26
	v_dual_max_f32 v81, 0, v81 :: v_dual_max_f32 v16, 0, v16
	v_dual_max_f32 v83, 0, v83 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v85, 0, v85 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v87, 0, v87 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v101, 0, v25 :: v_dual_mul_f32 v40, v19, v19
	v_dual_max_f32 v103, 0, v27 :: v_dual_mul_f32 v42, v21, v21
	v_dual_max_f32 v17, 0, v17 :: v_dual_mul_f32 v50, v31, v31
	v_dual_max_f32 v15, 0, v15 :: v_dual_mul_f32 v46, v29, v29
	v_dual_max_f32 v13, 0, v13 :: v_dual_mul_f32 v58, v34, v34
	v_dual_max_f32 v11, 0, v11 :: v_dual_mul_f32 v54, v33, v33
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v62, v43, v43
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v39, v18, v18 :: v_dual_mul_f32 v68, v48, v48
	v_dual_mul_f32 v41, v20, v20 :: v_dual_mul_f32 v76, v57, v57
	v_dual_mul_f32 v45, v28, v28 :: v_dual_mul_f32 v74, v65, v65
	v_dual_mul_f32 v49, v30, v30 :: v_dual_mul_f32 v72, v52, v52
	v_dual_mul_f32 v53, v32, v32 :: v_dual_mul_f32 v70, v89, v89
	v_dual_mul_f32 v59, v35, v35 :: v_dual_mul_f32 v78, v60, v60
	v_mul_f32_e32 v63, v44, v44
	v_dual_mul_f32 v67, v47, v47 :: v_dual_mul_f32 v60, v92, v92
	v_dual_mul_f32 v71, v51, v51 :: v_dual_mul_f32 v52, v96, v96
	v_dual_mul_f32 v75, v55, v55 :: v_dual_mul_f32 v48, v36, v36
	v_dual_mul_f32 v77, v61, v61 :: v_dual_mul_f32 v44, v99, v99
	v_dual_mul_f32 v73, v64, v64 :: v_dual_mul_f32 v34, v82, v82
	v_dual_mul_f32 v64, v90, v90 :: v_dual_mul_f32 v65, v91, v91
	v_dual_mul_f32 v61, v93, v93 :: v_dual_mul_f32 v30, v86, v86
	v_dual_mul_f32 v57, v94, v94 :: v_dual_mul_f32 v28, v87, v87
	v_dual_mul_f32 v55, v38, v38 :: v_dual_mul_f32 v26, v24, v24
	v_dual_mul_f32 v51, v95, v95 :: v_dual_mul_f32 v24, v101, v101
	v_mul_f32_e32 v47, v97, v97
	v_dual_mul_f32 v43, v98, v98 :: v_dual_mul_f32 v18, v17, v17
	v_dual_mul_f32 v37, v79, v79 :: v_dual_mul_f32 v12, v12, v12
	v_dual_mul_f32 v35, v81, v81 :: v_dual_mul_f32 v20, v15, v15
	v_mul_f32_e32 v33, v84, v84
	v_mul_f32_e32 v27, v23, v23
	v_mul_f32_e32 v25, v22, v22
	v_dual_mul_f32 v23, v102, v102 :: v_dual_max_f32 v84, v51, v52
	v_dual_mul_f32 v22, v103, v103 :: v_dual_mul_f32 v21, v14, v14
	v_mul_f32_e32 v17, v13, v13
	v_dual_mul_f32 v13, v11, v11 :: v_dual_mul_f32 v14, v10, v10
	v_mul_f32_e32 v15, v9, v9
	v_dual_mul_f32 v69, v88, v88 :: v_dual_mul_f32 v32, v83, v83
	v_dual_mul_f32 v38, v80, v80 :: v_dual_mul_f32 v31, v85, v85
	v_dual_mul_f32 v19, v16, v16 :: v_dual_mul_f32 v16, v2, v2
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v39, v40
	v_max3_f32 v9, v42, v45, v46
	v_max3_f32 v11, v54, v58, v59
	v_max3_f32 v36, v62, v63, v67
	v_max_f32_e32 v79, v71, v72
	v_max3_f32 v80, v76, v78, v77
	v_max3_f32 v82, v70, v64, v65
	v_max3_f32 v83, v60, v61, v57
	v_max_f32_e32 v89, v27, v25
	v_max3_f32 v90, v24, v23, v22
	v_max3_f32 v92, v21, v17, v12
	v_max3_f32 v93, v13, v14, v15
	v_max3_f32 v10, v49, v50, v53
	v_max3_f32 v81, v73, v74, v69
	v_max3_f32 v91, v18, v19, v20
	v_max3_f32 v2, v2, v41, v9
	v_max3_f32 v9, v11, v36, v68
	v_max3_f32 v11, v79, v75, v80
	v_max3_f32 v36, v82, v83, v55
	v_max3_f32 v82, v89, v26, v90
	v_max3_f32 v83, v92, v93, v16
	v_max3_f32 v2, v2, v10, v9
	v_max3_f32 v85, v48, v43, v44
	v_max3_f32 v9, v11, v81, v36
	v_max3_f32 v87, v34, v32, v33
	v_max3_f32 v11, v82, v91, v83
	v_max3_f32 v88, v31, v30, v28
	v_max3_f32 v86, v37, v38, v35
	v_max3_f32 v79, v84, v47, v85
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v84, 0x680, v106, v7
	v_permlanex16_b32 v82, v11, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v29, v100, v100
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v36, v105, 4, v110
	v_lshl_add_u32 v56, v56, 4, 0
	v_xor_b32_e32 v83, v84, v8
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v82, v82
	v_max3_f32 v80, v87, v88, v29
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v36, v36, v6, v109
	v_lshlrev_b32_e32 v84, 5, v104
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v82, v11, v82
	v_max3_f32 v10, v79, v86, v80
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v79, v2, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v80, v9, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v81, v10, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v80, v80, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v81, v81, v81
	v_dual_max_f32 v79, v2, v79 :: v_dual_max_f32 v80, v9, v80
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v108, v107, v83
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v10, v81
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v36, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v2, v79
	v_mov_b32_e32 v10, v80
	v_dual_mov_b32 v36, v81 :: v_dual_max_f32 v9, v79, v79
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v80, v80
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v2, v2 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v36, v36 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v81, v81
	v_max_f32_e32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v10, v10, v10
	v_max_f32_e32 v36, v36, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v9, v2
	v_dual_max_f32 v9, v11, v10 :: v_dual_max_f32 v10, v80, v36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v36, v2
	v_mov_b32_e32 v80, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v36, v36 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v82, v82
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v82, v82 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v80, v80 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v36, v36, v36 :: v_dual_max_f32 v81, v82, v82
	v_max_f32_e32 v80, v80, v80
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v82, 1, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v2, v2, v36 :: v_dual_add_nc_u32 v1, 0, v1
	v_max_f32_e32 v79, v79, v81
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v81, v10 :: v_dual_lshlrev_b32 v36, 3, v105
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v11, v79
	v_mov_b32_dpp v81, v81 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v81, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_max_f32 v10, v10, v81 :: v_dual_max_f32 v9, v9, v80
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v80, v2
	v_add3_u32 v1, v1, v82, v36
	v_mov_b32_e32 v83, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_e32 v81, v9
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v83, v83 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v81, v81 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v80, v80, v80 :: v_dual_max_f32 v83, v83, v83
	v_max_f32_e32 v81, v81, v81
	v_max_f32_e32 v11, v79, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v79, v11
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v79, v79, v79
	v_dual_max_f32 v82, v11, v79 :: v_dual_max_f32 v79, v2, v80
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v2, v56, v84, v36
.Ltmp43:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v36.h, 0
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v9, v81
.Ltmp45:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 4, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.h, v36.h
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v81, v10, v83
.Ltmp47:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v10, 48, v9
	v_or_b32_e32 v56, 32, v9
	v_or_b32_e32 v83, 16, v9
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.h, v36.h
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v1, v[79:82]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v2
.Ltmp49:
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s30, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v2, null, s31, 0, s0
	v_add_co_u32 v10, s0, s30, v10
	v_add_co_ci_u32_e64 v11, null, s31, 0, s0
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[28:29], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[26:27], v[1:2]
	.loc	1 1245 22 is_stmt 1             ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v81, v81, v81 :: v_dual_max_f32 v80, v80, v80
	v_max_f32_e32 v82, v82, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v88, 0x2b8cbccc, v81 :: v_dual_max_f32 v87, 0x2b8cbccc, v80
	v_max_f32_e32 v89, 0x2b8cbccc, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_scale_f32 v91, null, 0x40e00000, 0x40e00000, v88
	v_div_scale_f32 v92, null, 0x40e00000, 0x40e00000, v87
	v_div_scale_f32 v98, s1, v88, 0x40e00000, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v94, v91
	v_rcp_f32_e32 v95, v92
	v_div_scale_f32 v93, null, 0x40e00000, 0x40e00000, v89
	v_div_scale_f32 v99, s2, v87, 0x40e00000, v87
	v_div_scale_f32 v102, s3, v89, 0x40e00000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v96, v93
	v_fma_f32 v82, -v91, v94, 1.0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v100, -v92, v95, 1.0
	v_dual_fmac_f32 v94, v82, v94 :: v_dual_max_f32 v79, v79, v79
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v95, v100, v95
	v_fma_f32 v101, -v93, v96, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v100, v98, v94
	v_max_f32_e32 v86, 0x2b8cbccc, v79
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s0, s30, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v80, null, s31, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v86
	v_div_scale_f32 v97, vcc_lo, v86, 0x40e00000, v86
	v_fmac_f32_e32 v96, v101, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v56, v90
	v_mul_f32_e32 v101, v99, v95
	v_fma_f32 v105, -v91, v100, v98
	v_mul_f32_e32 v103, v102, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v106, -v92, v101, v99
	v_fmac_f32_e32 v100, v105, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v107, -v93, v103, v102
	v_fma_f32 v81, -v90, v56, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v101, v106, v95
	v_fma_f32 v2, -v91, v100, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v103, v107, v96
	v_fmac_f32_e32 v56, v81, v56
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s0, s30, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v82, null, s31, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v83, v97, v56
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[28:29], v[10:11]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v91, -v93, v103, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[28:29], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[26:27], v[81:82]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v104, -v90, v83, v97
	v_fmac_f32_e32 v83, v104, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v1, -v90, v83, v97
	v_fma_f32 v90, -v92, v101, v99
	v_div_fmas_f32 v1, v1, v56, v83
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[26:27], v[10:11]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v2, v2, v94, v100
	s_mov_b32 vcc_lo, s2
	v_div_fixup_f32 v1, v1, 0x40e00000, v86
	v_div_fmas_f32 v56, v90, v95, v101
	s_mov_b32 vcc_lo, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[28:29], v[79:80]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[26:27], v[79:80]
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v1.h
	.loc	1 1238 24 is_stmt 0             ; ragged.py:1238:24
	v_div_fmas_f32 v83, v91, v96, v103
	v_div_fixup_f32 v2, v2, 0x40e00000, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v10, 1, v84
	v_mov_b16_e32 v36.l, v2.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v10, v1, v10, 0x7fff
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v80, v80, v39
	v_div_scale_f32 v86, s9, v41, v80, v41
	v_div_scale_f32 v82, vcc_lo, v39, v80, v39
	v_rcp_f32_e32 v94, v81
	v_div_scale_f32 v90, s11, v45, v80, v45
	v_div_scale_f32 v84, s8, v40, v80, v40
	v_div_scale_f32 v93, null, v80, v80, v49
	v_div_scale_f32 v88, s10, v42, v80, v42
	v_div_scale_f32 v91, null, v80, v80, v46
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v102, -v81, v94, 1.0
	v_rcp_f32_e32 v101, v93
	v_div_scale_f32 v100, null, v80, v80, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v99, v91
	v_fmac_f32_e32 v94, v102, v94
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fixup_f32 v11, v56, 0x40e00000, v87
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v87, null, v80, v80, v42
	v_div_scale_f32 v92, s12, v46, v80, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v11.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v102, v82, v94
	v_rcp_f32_e32 v97, v87
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v107, -v91, v99, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v80, v80, v41
	v_fma_f32 v108, -v81, v102, v82
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v96, v85
	v_fma_f32 v105, -v87, v97, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v102, v108, v94 :: v_dual_fmac_f32 v97, v105, v97
	v_fma_f32 v81, -v81, v102, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v104, -v85, v96, 1.0
	v_mul_f32_e32 v105, v88, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v81, v81, v94, v102
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v96, v104, v96
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v56, v83, 0x40e00000, v89
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v89, null, v80, v80, v45
	v_div_fixup_f32 v39, v81, v80, v39
	v_div_scale_f32 v81, s8, v49, v80, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v98, v89
	v_mul_f32_e32 v104, v86, v96
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v11, v11, v79, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v111, -v87, v105, v88
	v_fma_f32 v110, -v85, v104, v86
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v11
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v105, v111, v97
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v106, -v89, v98, 1.0
	v_fmac_f32_e32 v104, v110, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_fmac_f32 v98, v106, v98 :: v_dual_and_b32 v83, 1, v36
	.loc	1 1238 23 is_stmt 1             ; ragged.py:1238:23
	v_mov_b16_e32 v36.l, v56.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v106, v90, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v1, v2, v83, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v80, v80, v40
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v36, 1, v36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v112, -v89, v106, v90
	v_rcp_f32_e32 v95, v83
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v56, v36, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v106, v112, v98
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v56, 0xffff0000, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v36, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v103, -v83, v95, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v103, v95
	v_mul_f32_e32 v103, v84, v95
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v83, v103, v84
	v_fmac_f32_e32 v103, v109, v95
	s_delay_alu instid0(VALU_DEP_1)
	v_fma_f32 v82, -v83, v103, v84
	v_fma_f32 v83, -v85, v104, v86
	v_fma_f32 v86, -v93, v101, 1.0
	v_fma_f32 v84, -v87, v105, v88
	v_rcp_f32_e32 v87, v100
	v_fma_f32 v88, -v89, v106, v90
	v_div_scale_f32 v89, null, v80, v80, v54
	v_fmac_f32_e32 v101, v86, v101
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v94, v89
	v_mul_f32_e32 v86, v81, v101
	v_div_fmas_f32 v82, v82, v95, v103
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v83, v83, v96, v104
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v90, -v93, v86, v81
	v_fmac_f32_e32 v99, v107, v99
	v_div_fixup_f32 v40, v82, v80, v40
	v_fma_f32 v82, -v100, v87, 1.0
	v_div_fixup_f32 v41, v83, v80, v41
	v_div_scale_f32 v83, null, v80, v80, v53
	v_dual_fmac_f32 v86, v90, v101 :: v_dual_mul_f32 v107, v92, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v87, v82, v87
	v_rcp_f32_e32 v82, v83
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v90, null, v80, v80, v58
	v_fma_f32 v85, -v91, v107, v92
	v_fma_f32 v81, -v93, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v93, v90
	v_fmac_f32_e32 v107, v85, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v91, v107, v92
	v_fma_f32 v92, -v83, v82, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v96, -v90, v93, 1.0
	v_fmac_f32_e32 v82, v92, v82
	v_div_fmas_f32 v84, v84, v97, v105
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v92, -v89, v94, 1.0
	v_div_scale_f32 v97, null, v80, v80, v59
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v42, v84, v80, v42
	v_div_fmas_f32 v84, v88, v98, v106
	v_div_scale_f32 v88, s9, v50, v80, v50
	s_mov_b32 vcc_lo, s12
	v_fmac_f32_e32 v94, v92, v94
	v_div_fmas_f32 v85, v85, v99, v107
	v_mul_f32_e32 v91, v88, v87
	v_div_fixup_f32 v45, v84, v80, v45
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v92, s11, v54, v80, v54
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v84, -v100, v91, v88
	v_div_fixup_f32 v46, v85, v80, v46
	v_div_scale_f32 v85, s10, v53, v80, v53
	v_div_fmas_f32 v81, v81, v101, v86
	v_fmac_f32_e32 v91, v84, v87
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v85, v82
	v_mul_f32_e32 v95, v92, v94
	v_fmac_f32_e32 v93, v96, v93
	v_fma_f32 v86, -v100, v91, v88
	v_div_fixup_f32 v49, v81, v80, v49
	v_fma_f32 v88, -v83, v84, v85
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_mov_b32 s12, s16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v86, v86, v87, v91
	v_rcp_f32_e32 v87, v97
	v_fmac_f32_e32 v84, v88, v82
	v_fma_f32 v88, -v89, v95, v92
	v_div_scale_f32 v91, s8, v58, v80, v58
	v_div_fixup_f32 v50, v86, v80, v50
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v83, v84, v85
	v_fmac_f32_e32 v95, v88, v94
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v91, v93
	v_div_scale_f32 v86, null, v80, v80, v62
	v_fma_f32 v85, -v97, v87, 1.0
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s9, v59, v80, v59
	v_div_fmas_f32 v81, v81, v82, v84
	v_fma_f32 v82, -v89, v95, v92
	v_fma_f32 v84, -v90, v83, v91
	v_fmac_f32_e32 v87, v85, v87
	v_rcp_f32_e32 v85, v86
	v_div_scale_f32 v89, null, v80, v80, v63
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v84, v93
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v88, v87
	v_rcp_f32_e32 v84, v89
	v_div_fmas_f32 v82, v82, v94, v95
	v_div_fixup_f32 v53, v81, v80, v53
	v_fma_f32 v81, -v90, v83, v91
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v86, v85, 1.0
	v_div_scale_f32 v90, s10, v62, v80, v62
	v_div_fixup_f32 v54, v82, v80, v54
	v_fma_f32 v82, -v97, v92, v88
	v_fmac_f32_e32 v85, v94, v85
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v91, -v89, v84, 1.0
	v_div_scale_f32 v94, null, v80, v80, v67
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v92, v82, v87
	v_div_fmas_f32 v81, v81, v93, v83
	v_mul_f32_e32 v82, v90, v85
	v_fmac_f32_e32 v84, v91, v84
	v_rcp_f32_e32 v83, v94
	v_div_scale_f32 v91, s8, v63, v80, v63
	v_div_scale_f32 v93, null, v80, v80, v68
	v_div_fixup_f32 v58, v81, v80, v58
	v_fma_f32 v81, -v97, v92, v88
	v_fma_f32 v88, -v86, v82, v90
	v_mul_f32_e32 v95, v91, v84
	v_rcp_f32_e32 v96, v93
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v94, v83, 1.0
	v_div_fmas_f32 v81, v81, v87, v92
	v_fmac_f32_e32 v82, v88, v85
	v_fma_f32 v87, -v89, v95, v91
	v_div_scale_f32 v88, s9, v67, v80, v67
	v_fmac_f32_e32 v83, v97, v83
	v_div_fixup_f32 v59, v81, v80, v59
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v92, -v93, v96, 1.0
	v_fma_f32 v81, -v86, v82, v90
	v_fmac_f32_e32 v95, v87, v84
	v_div_scale_f32 v90, null, v79, v79, v71
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v86, v88, v83
	v_fmac_f32_e32 v96, v92, v96
	v_div_scale_f32 v87, s11, v68, v80, v68
	v_div_fmas_f32 v81, v81, v85, v82
	v_fma_f32 v82, -v89, v95, v91
	v_rcp_f32_e32 v89, v90
	v_div_scale_f32 v92, null, v79, v79, v72
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v85, -v94, v86, v88
	v_mul_f32_e32 v91, v87, v96
	v_div_fmas_f32 v82, v82, v84, v95
	v_rcp_f32_e32 v84, v92
	v_div_fixup_f32 v62, v81, v80, v62
	v_fmac_f32_e32 v86, v85, v83
	v_fma_f32 v85, -v93, v91, v87
	v_fma_f32 v95, -v90, v89, 1.0
	v_div_fixup_f32 v63, v82, v80, v63
	v_div_scale_f32 v82, s8, v71, v79, v71
	v_fma_f32 v81, -v94, v86, v88
	v_fmac_f32_e32 v91, v85, v96
	v_fmac_f32_e32 v89, v95, v89
	v_fma_f32 v85, -v92, v84, 1.0
	v_div_scale_f32 v88, null, v79, v79, v75
	s_mov_b32 vcc_lo, s9
	v_div_fmas_f32 v81, v81, v83, v86
	v_fma_f32 v83, -v93, v91, v87
	v_mul_f32_e32 v86, v82, v89
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v93, null, v79, v79, v76
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v87, s9, v72, v79, v72
	v_div_fmas_f32 v83, v83, v96, v91
	v_fma_f32 v91, -v90, v86, v82
	v_rcp_f32_e32 v96, v93
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v94, v87, v84
	v_fma_f32 v95, -v88, v85, 1.0
	v_div_fixup_f32 v68, v83, v80, v68
	v_fmac_f32_e32 v86, v91, v89
	v_div_scale_f32 v83, null, v79, v79, v78
	v_div_fixup_f32 v67, v81, v80, v67
	v_fma_f32 v80, -v92, v94, v87
	v_fmac_f32_e32 v85, v95, v85
	v_div_scale_f32 v81, s10, v75, v79, v75
	v_fma_f32 v91, -v93, v96, 1.0
	v_fma_f32 v82, -v90, v86, v82
	v_rcp_f32_e32 v90, v83
	v_fmac_f32_e32 v94, v80, v84
	v_mul_f32_e32 v80, v81, v85
	v_fmac_f32_e32 v96, v91, v96
	v_div_scale_f32 v91, s11, v76, v79, v76
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v95, null, v79, v79, v77
	v_div_fmas_f32 v82, v82, v89, v86
	v_fma_f32 v86, -v92, v94, v87
	v_fma_f32 v87, -v88, v80, v81
	v_mul_f32_e32 v89, v91, v96
	v_fma_f32 v92, -v83, v90, 1.0
	v_div_fixup_f32 v71, v82, v79, v71
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v87, v85
	v_fma_f32 v87, -v93, v89, v91
	v_fmac_f32_e32 v90, v92, v90
	v_div_scale_f32 v92, s8, v78, v79, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v88, v80, v81
	v_fmac_f32_e32 v89, v87, v96
	v_div_fmas_f32 v84, v86, v84, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v82, v92, v90
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v86, v95
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v93, v89, v91
	v_fma_f32 v85, -v83, v82, v92
	v_div_scale_f32 v91, null, v79, v79, v74
	v_div_fixup_f32 v72, v84, v79, v72
	v_div_fixup_f32 v75, v80, v79, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v85, v90
	v_rcp_f32_e32 v85, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v84, -v95, v86, 1.0
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v88, s9, v77, v79, v77
	v_fma_f32 v80, -v83, v82, v92
	v_div_fmas_f32 v81, v81, v96, v89
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v86, v84, v86
	v_div_scale_f32 v87, null, v79, v79, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v92, -v91, v85, 1.0
	v_div_fmas_f32 v80, v80, v90, v82
	v_div_scale_f32 v90, s8, v74, v79, v74
	v_rcp_f32_e32 v84, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v85, v92, v85
	v_div_fixup_f32 v76, v81, v79, v76
	v_div_scale_f32 v92, null, v79, v79, v70
	v_div_fixup_f32 v78, v80, v79, v78
	v_dual_mul_f32 v94, v90, v85 :: v_dual_mul_f32 v89, v88, v86
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v83, s10, v73, v79, v73
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v93, -v87, v84, 1.0
	v_fma_f32 v81, -v95, v89, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v84, v93, v84
	v_fmac_f32_e32 v89, v81, v86
	v_div_scale_f32 v93, null, v79, v79, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v95, v89, v88
	v_rcp_f32_e32 v95, v92
	v_rcp_f32_e32 v82, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v86, v89
	v_fma_f32 v86, -v91, v94, v90
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v77, v80, v79, v77
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v89, -v92, v95, 1.0
	v_fma_f32 v96, -v93, v82, 1.0
	v_fmac_f32_e32 v94, v86, v85
	v_div_scale_f32 v86, s11, v70, v79, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v95, v89, v95
	v_dual_mul_f32 v81, v83, v84 :: v_dual_fmac_f32 v82, v96, v82
	v_div_scale_f32 v96, null, v79, v79, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v87, v81, v83
	v_fmac_f32_e32 v81, v88, v84
	v_div_scale_f32 v88, s9, v69, v79, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v80, -v87, v81, v83
	v_mul_f32_e32 v83, v88, v82
	v_div_scale_f32 v87, null, v79, v79, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v84, v81
	v_fma_f32 v81, -v91, v94, v90
	v_fma_f32 v84, -v93, v83, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v89, v87
	v_div_scale_f32 v91, null, v79, v79, v65
	v_dual_mul_f32 v90, v86, v95 :: v_dual_fmac_f32 v83, v84, v82
	s_mov_b32 vcc_lo, s8
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v81, v81, v85, v94
	v_fma_f32 v85, -v92, v90, v86
	v_div_fixup_f32 v73, v80, v79, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v87, v89, 1.0
	v_fma_f32 v80, -v93, v83, v88
	v_div_fixup_f32 v74, v81, v79, v74
	v_fmac_f32_e32 v90, v85, v95
	v_div_scale_f32 v81, s8, v64, v79, v64
	v_fmac_f32_e32 v89, v94, v89
	v_fma_f32 v85, -v91, v84, 1.0
	v_div_scale_f32 v88, null, v79, v79, v60
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v80, v80, v82, v83
	v_fma_f32 v82, -v92, v90, v86
	v_mul_f32_e32 v83, v81, v89
	v_fmac_f32_e32 v84, v85, v84
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v86, s9, v65, v79, v65
	v_div_scale_f32 v92, null, v79, v79, v61
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v93, v86, v84
	v_div_fmas_f32 v82, v82, v95, v90
	v_fma_f32 v90, -v87, v83, v81
	v_rcp_f32_e32 v95, v92
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v88, v85, 1.0
	v_div_fixup_f32 v69, v80, v79, v69
	v_fma_f32 v80, -v91, v93, v86
	v_fmac_f32_e32 v83, v90, v89
	v_div_fixup_f32 v70, v82, v79, v70
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v82, s10, v60, v79, v60
	v_div_scale_f32 v90, null, v79, v79, v57
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v92, v95, 1.0
	v_fma_f32 v81, -v87, v83, v81
	v_fmac_f32_e32 v93, v80, v84
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v80, v82, v85
	v_rcp_f32_e32 v87, v90
	v_fmac_f32_e32 v95, v94, v95
	v_div_scale_f32 v94, s11, v61, v79, v61
	v_div_fmas_f32 v81, v81, v89, v83
	v_fma_f32 v83, -v91, v93, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v88, v80, v82
	v_mul_f32_e32 v89, v94, v95
	v_div_fixup_f32 v64, v81, v79, v64
	v_div_fmas_f32 v83, v83, v84, v93
	v_rcp_f32_e32 v84, v96
	v_fma_f32 v91, -v90, v87, 1.0
	v_fmac_f32_e32 v80, v86, v85
	v_fma_f32 v86, -v92, v89, v94
	v_div_fixup_f32 v65, v83, v79, v65
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, s8, v57, v79, v57
	v_fmac_f32_e32 v89, v86, v95
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v96, v84, 1.0
	v_div_scale_f32 v86, null, v56, v56, v51
	v_fma_f32 v81, -v88, v80, v82
	v_mul_f32_e32 v82, v91, v87
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v88, s9, v55, v79, v55
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v81, -v92, v89, v94
	v_fma_f32 v85, -v90, v82, v91
	v_div_scale_f32 v92, null, v56, v56, v52
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v60, v80, v79, v60
	v_fmac_f32_e32 v82, v85, v87
	v_rcp_f32_e32 v85, v92
	v_fma_f32 v93, -v86, v83, 1.0
	v_div_fmas_f32 v81, v81, v95, v89
	v_mul_f32_e32 v89, v88, v84
	v_fma_f32 v80, -v90, v82, v91
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v93, v83
	v_div_scale_f32 v93, null, v56, v56, v47
	v_div_fixup_f32 v61, v81, v79, v61
	v_fma_f32 v81, -v96, v89, v88
	v_div_scale_f32 v90, s10, v51, v56, v51
	v_fma_f32 v91, -v92, v85, 1.0
	v_div_fmas_f32 v80, v80, v87, v82
	v_rcp_f32_e32 v82, v93
	v_fmac_f32_e32 v89, v81, v84
	v_mul_f32_e32 v81, v90, v83
	v_fmac_f32_e32 v85, v91, v85
	v_div_scale_f32 v87, s8, v52, v56, v52
	v_div_scale_f32 v91, null, v56, v56, v48
	v_div_fixup_f32 v57, v80, v79, v57
	v_fma_f32 v80, -v96, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v94, v87, v85
	v_rcp_f32_e32 v95, v91
	v_fma_f32 v96, -v93, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v80, v80, v84, v89
	v_fma_f32 v84, -v92, v94, v87
	v_fmac_f32_e32 v82, v96, v82
	v_div_scale_f32 v88, s9, v47, v56, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v55, v80, v79, v55
	v_fma_f32 v89, -v91, v95, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v94, v84, v85
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v56, v56, v43
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v84, s11, v48, v56, v48
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v92, v94, v87
	v_fma_f32 v83, -v93, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v56, v56, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_mul_f32 v89, v84, v95 :: v_dual_fmac_f32 v80, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v85, v94
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_fma_f32 v85, -v91, v89, v84
	v_div_fixup_f32 v51, v79, v56, v51
	v_fma_f32 v92, -v86, v87, 1.0
	v_fma_f32 v79, -v93, v80, v88
	v_div_fixup_f32 v52, v81, v56, v52
	v_fmac_f32_e32 v89, v85, v95
	v_div_scale_f32 v81, s8, v43, v56, v43
	v_fmac_f32_e32 v87, v92, v87
	v_fma_f32 v85, -v90, v83, 1.0
	v_div_scale_f32 v88, null, v56, v56, v37
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v89, v84
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v85, s9, v44, v56, v44
	v_div_scale_f32 v91, null, v56, v56, v38
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v92, v85, v83
	v_div_fmas_f32 v80, v80, v95, v89
	v_fma_f32 v89, -v86, v82, v81
	v_rcp_f32_e32 v94, v91
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v84, 1.0
	v_div_fixup_f32 v47, v79, v56, v47
	v_fma_f32 v79, -v90, v92, v85
	v_fmac_f32_e32 v82, v89, v87
	v_div_scale_f32 v89, null, v56, v56, v35
	v_div_fixup_f32 v48, v80, v56, v48
	v_fmac_f32_e32 v84, v93, v84
	v_div_scale_f32 v80, s10, v37, v56, v37
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v93, -v91, v94, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v92, v79, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s8
	v_dual_mul_f32 v79, v80, v84 :: v_dual_fmac_f32 v94, v93, v94
	v_div_scale_f32 v93, s11, v38, v56, v38
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v90, v92, v85
	v_div_scale_f32 v95, null, v56, v56, v34
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v88, v79, v80
	v_mul_f32_e32 v87, v93, v94
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v92
	v_rcp_f32_e32 v83, v95
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v91, v87, v93
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v35, v56, v35
	v_div_fixup_f32 v43, v81, v56, v43
	v_div_fixup_f32 v44, v82, v56, v44
	v_fma_f32 v80, -v88, v79, v80
	v_fmac_f32_e32 v87, v85, v94
	v_mul_f32_e32 v81, v90, v86
	v_fma_f32 v82, -v95, v83, 1.0
	v_div_scale_f32 v85, null, v56, v56, v32
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s9, v34, v56, v34
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v91, v87, v93
	v_fma_f32 v84, -v89, v81, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v91, null, v56, v56, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v37, v79, v56, v37
	v_rcp_f32_e32 v84, v91
	v_div_fmas_f32 v80, v80, v94, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v79, -v89, v81, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v92, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v38, v80, v56, v38
	v_fma_f32 v80, -v95, v87, v88
	v_div_scale_f32 v89, s10, v32, v56, v32
	v_fmac_f32_e32 v82, v92, v82
	v_fma_f32 v90, -v91, v84, 1.0
	v_div_scale_f32 v92, null, v56, v56, v31
	v_div_fmas_f32 v79, v79, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v81, v92
	v_div_scale_f32 v90, null, v56, v56, v30
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s8, v33, v56, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v94, v90
	v_div_fixup_f32 v35, v79, v56, v35
	v_fma_f32 v79, -v95, v87, v88
	v_fma_f32 v88, -v85, v80, v89
	v_mul_f32_e32 v93, v86, v84
	v_fma_f32 v95, -v92, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v87
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v83, -v91, v93, v86
	v_fmac_f32_e32 v81, v95, v81
	v_div_scale_f32 v87, s9, v31, v56, v31
	v_fma_f32 v88, -v90, v94, 1.0
	v_div_fixup_f32 v34, v79, v56, v34
	v_fma_f32 v79, -v85, v80, v89
	v_fmac_f32_e32 v93, v83, v84
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mul_f32 v83, v87, v81 :: v_dual_fmac_f32 v94, v88, v94
	v_div_scale_f32 v88, null, v56, v56, v28
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v30, v56, v30
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v91, v93, v86
	v_fma_f32 v82, -v92, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v91, null, v56, v56, v29
	v_mul_f32_e32 v89, v85, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v91
	v_div_fmas_f32 v80, v80, v84, v93
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v32, v79, v56, v32
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v93, -v88, v86, 1.0
	v_fma_f32 v79, -v92, v83, v87
	v_div_fixup_f32 v33, v80, v56, v33
	v_fmac_f32_e32 v89, v84, v94
	v_div_scale_f32 v80, s8, v28, v56, v28
	v_fmac_f32_e32 v86, v93, v86
	v_fma_f32 v84, -v91, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v92, null, v36, v36, v25
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v36, v36, v27
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s9, v29, v56, v29
	v_div_fmas_f32 v81, v81, v94, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v31, v79, v56, v31
	v_div_fixup_f32 v30, v81, v56, v30
	v_rcp_f32_e32 v81, v92
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v79, -v91, v90, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v36, v36, v24
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v36, v36, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v79, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_div_scale_f32 v79, s10, v27, v36, v27
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v93, -v92, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v91, v90, v85
	v_mul_f32_e32 v85, v79, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v93, v81
	v_div_scale_f32 v86, s8, v25, v36, v25
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v93, -v84, v85, v79
	v_fma_f32 v91, -v88, v89, 1.0
	v_rcp_f32_e32 v96, v94
	v_div_fmas_f32 v82, v83, v82, v90
	v_mul_f32_e32 v95, v86, v81
	v_fmac_f32_e32 v85, v93, v87
	v_fmac_f32_e32 v89, v91, v89
	v_div_scale_f32 v91, s11, v26, v36, v26
	v_div_fixup_f32 v28, v80, v56, v28
	v_div_fixup_f32 v29, v82, v56, v29
	v_fma_f32 v56, -v84, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v91, v89
	v_div_scale_f32 v82, null, v36, v36, v23
	v_fma_f32 v83, -v92, v95, v86
	v_fma_f32 v80, -v94, v96, 1.0
	v_fma_f32 v79, -v88, v90, v91
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v51, v51
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v95, v83, v81 :: v_dual_fmac_f32 v96, v80, v96
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v80, s9, v24, v36, v24
	v_div_fmas_f32 v56, v56, v87, v85
	v_fma_f32 v83, -v92, v95, v86
	v_div_scale_f32 v85, null, v36, v36, v22
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v96
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v27, v56, v36, v27
	v_fma_f32 v86, -v82, v79, 1.0
	v_div_fmas_f32 v81, v83, v81, v95
	v_fma_f32 v83, -v88, v90, v91
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v94, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s8, v23, v36, v23
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v84, v88, v96
	v_div_fmas_f32 v83, v83, v89, v90
	v_mul_f32_e32 v56, v86, v79
	v_div_fixup_f32 v25, v81, v36, v25
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v94, v84, v80
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v82, v56, v86
	v_div_fixup_f32 v26, v83, v36, v26
	v_div_scale_f32 v83, null, v36, v36, v18
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s10, v22, v36, v22
	v_div_fmas_f32 v80, v80, v96, v84
	v_fmac_f32_e32 v56, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v24, v80, v36, v24
	v_fma_f32 v80, -v82, v56, v86
	v_div_scale_f32 v88, null, v36, v36, v19
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v56, v80, v79, v56
	v_div_scale_f32 v79, null, v36, v36, v20
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s8, v18, v36, v18
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v36, v36, v21
	v_div_fixup_f32 v23, v56, v36, v23
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v88, v90, 1.0
	v_rcp_f32_e32 v92, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v91, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v56, v90
	v_div_scale_f32 v56, s9, v19, v36, v19
	v_fmac_f32_e32 v82, v91, v82
	v_div_scale_f32 v91, null, v36, v36, v17
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v56, v90
	v_div_scale_f32 v93, s10, v20, v36, v20
	v_fma_f32 v94, -v86, v92, 1.0
	v_rcp_f32_e32 v95, v91
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v56
	v_mul_f32_e32 v96, v93, v82
	v_fmac_f32_e32 v92, v94, v92
	v_div_scale_f32 v94, s11, v21, v36, v21
	v_div_fixup_f32 v22, v81, v36, v22
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v96, v93
	v_mul_f32_e32 v83, v94, v92
	v_fma_f32 v84, -v91, v95, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v56, -v88, v87, v56
	v_fmac_f32_e32 v96, v81, v82
	v_fma_f32 v81, -v86, v83, v94
	v_fmac_f32_e32 v95, v84, v95
	v_div_scale_f32 v84, s8, v17, v36, v17
	v_div_fmas_f32 v80, v80, v89, v85
	v_fma_f32 v79, -v79, v96, v93
	v_fmac_f32_e32 v83, v81, v92
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v95
	v_div_scale_f32 v85, null, v36, v36, v12
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v18, v80, v36, v18
	v_div_fmas_f32 v56, v56, v90, v87
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v79, v79, v82, v96
	v_fma_f32 v82, -v86, v83, v94
	v_fma_f32 v86, -v91, v81, v84
	v_div_fixup_f32 v19, v56, v36, v19
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v20, v79, v36, v20
	v_div_fmas_f32 v82, v82, v92, v83
	v_fmac_f32_e32 v81, v86, v95
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_scale_f32 v79, null, v36, v36, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v56, -v91, v81, v84
	v_div_fixup_f32 v21, v82, v36, v21
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v36, v36, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v56, v56, v95, v81
	v_div_scale_f32 v83, vcc_lo, v12, v36, v12
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v82, null, v36, v36, v15
	v_mul_f32_e32 v88, v83, v87
	v_div_scale_f32 v89, null, v36, v36, v16
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v92, -v85, v88, v83
	v_div_fixup_f32 v17, v56, v36, v17
	s_delay_alu instid0(TRANS32_DEP_3)
	v_fma_f32 v56, -v79, v81, 1.0
	v_rcp_f32_e32 v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v92, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v56, v81
	v_div_scale_f32 v56, s8, v13, v36, v13
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v90, -v80, v84, 1.0
	v_fma_f32 v93, -v82, v86, 1.0
	v_mul_f32_e32 v94, v56, v81
	v_fma_f32 v95, -v89, v91, 1.0
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v84, v90, v84
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v57, v57, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, s9, v14, v36, v14
	v_fmac_f32_e32 v86, v93, v86
	v_div_scale_f32 v93, s10, v15, v36, v15
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v79, v94, v56
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v57, v57
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, s11, v16, v36, v16
	v_mul_f32_e32 v96, v90, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v97, v93, v86 :: v_dual_fmac_f32 v94, v92, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v98, v95, v91
	v_fma_f32 v85, -v80, v96, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v92, -v82, v97, v93
	v_fma_f32 v56, -v79, v94, v56
	v_fma_f32 v79, -v89, v98, v95
	v_fmac_f32_e32 v96, v85, v84
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v51, v51
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v97, v92, v86
	v_div_fmas_f32 v56, v56, v81, v94
	v_fmac_f32_e32 v98, v79, v91
	v_fma_f32 v80, -v80, v96, v90
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v79, -v82, v97, v93
	v_div_fixup_f32 v12, v83, v36, v12
	v_fma_f32 v81, -v89, v98, v95
	v_div_fmas_f32 v80, v80, v84, v96
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v13, v56, v36, v13
	v_div_fmas_f32 v79, v79, v86, v97
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v14, v80, v36, v14
	v_div_fmas_f32 v81, v81, v91, v98
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v56, v59
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v79, v36, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v63
	v_rndne_f32_e32 v63, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v16, v81, v36, v16
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v36, v39
	v_rndne_f32_e32 v39, v40
	v_rndne_f32_e32 v40, v41
	v_rndne_f32_e32 v41, v42
	v_rndne_f32_e32 v42, v45
	v_rndne_f32_e32 v45, v46
	v_rndne_f32_e32 v46, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v53
	v_rndne_f32_e32 v53, v54
	v_rndne_f32_e32 v54, v58
	v_rndne_f32_e32 v58, v62
	v_rndne_f32_e32 v62, v67
	v_rndne_f32_e32 v67, v71
	v_rndne_f32_e32 v68, v72
	v_rndne_f32_e32 v71, v75
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v75, v78
	v_rndne_f32_e32 v76, v77
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v13, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	v_cvt_i32_f32_e32 v64, v64
	v_cvt_i32_f32_e32 v65, v65
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v74, v74
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v47, v47
	v_rndne_f32_e32 v48, v48
	v_rndne_f32_e32 v37, v37
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v25, v25
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v24, v24
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v78, v44
	v_cvt_i32_f32_e32 v80, v38
	v_cvt_i32_f32_e32 v101, v13
	v_and_b32_e32 v13, 15, v39
	v_and_b32_e32 v38, 15, v64
	v_and_b32_e32 v39, 15, v65
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v64, 10, v0
	v_and_b32_e32 v65, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v55, v55
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v17, v17
	v_rndne_f32_e32 v12, v12
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v29, v29
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v14, v14
	v_rndne_f32_e32 v15, v15
	v_rndne_f32_e32 v16, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v36, v36, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	v_med3_f32 v46, v46, s8, 0x40e00000
	v_med3_f32 v50, v50, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_cvt_i32_f32_e32 v83, v32
	v_cvt_i32_f32_e32 v84, v33
	v_cvt_i32_f32_e32 v96, v19
	v_and_b32_e32 v19, 15, v49
	v_and_b32_e32 v32, 15, v75
	v_and_b32_e32 v33, 15, v76
	v_and_b32_e32 v49, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v75, 4, v66
	v_and_b32_e32 v64, 0x1800, v64
	v_lshlrev_b32_e32 v76, 6, v65
	v_lshlrev_b32_e32 v78, 6, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v23, v23
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v34, v34, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v17, v17, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_cvt_i32_f32_e32 v36, v36
	v_cvt_i32_f32_e32 v40, v40
	v_cvt_i32_f32_e32 v41, v41
	v_cvt_i32_f32_e32 v42, v42
	v_cvt_i32_f32_e32 v45, v45
	v_cvt_i32_f32_e32 v46, v46
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v73, v73
	v_cvt_i32_f32_e32 v74, v74
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v79, v37
	v_cvt_i32_f32_e32 v89, v27
	v_cvt_i32_f32_e32 v90, v25
	v_cvt_i32_f32_e32 v91, v26
	v_cvt_i32_f32_e32 v92, v24
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v75, v8
	v_add3_u32 v64, 0, v64, v76
	v_and_or_b32 v7, 0x1b00, v78, v7
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v43, v43, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v81, v35
	v_cvt_i32_f32_e32 v82, v34
	v_cvt_i32_f32_e32 v97, v20
	v_cvt_i32_f32_e32 v98, v21
	v_cvt_i32_f32_e32 v99, v17
	v_cvt_i32_f32_e32 v100, v12
	v_cvt_i32_f32_e32 v85, v31
	v_cvt_i32_f32_e32 v86, v30
	v_cvt_i32_f32_e32 v87, v28
	v_cvt_i32_f32_e32 v88, v29
	v_cvt_i32_f32_e32 v95, v18
	v_cvt_i32_f32_e32 v102, v14
	v_cvt_i32_f32_e32 v103, v15
	v_cvt_i32_f32_e32 v104, v16
	v_and_b32_e32 v12, 15, v36
	v_and_b32_e32 v14, 15, v40
	v_and_b32_e32 v15, 15, v41
	v_and_b32_e32 v16, 15, v42
	v_and_b32_e32 v17, 15, v45
	v_and_b32_e32 v18, 15, v46
	v_and_b32_e32 v20, 15, v50
	v_and_b32_e32 v26, 15, v62
	v_and_b32_e32 v27, 15, v63
	v_and_b32_e32 v28, 15, v67
	v_and_b32_e32 v29, 15, v68
	v_and_b32_e32 v30, 15, v71
	v_and_b32_e32 v31, 15, v72
	v_and_b32_e32 v34, 15, v73
	v_and_b32_e32 v35, 15, v74
	v_and_b32_e32 v40, 15, v60
	v_and_b32_e32 v41, 15, v61
	v_and_b32_e32 v44, 15, v51
	v_and_b32_e32 v45, 15, v52
	v_and_b32_e32 v46, 15, v47
	v_and_b32_e32 v47, 15, v48
	v_and_b32_e32 v50, 15, v79
	v_and_b32_e32 v60, 15, v89
	v_and_b32_e32 v61, 15, v90
	v_and_b32_e32 v62, 15, v91
	v_and_b32_e32 v63, 15, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v64, v64, v8, v6
	v_xad_u32 v79, v7, v5, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v77, v43
	v_cvt_i32_f32_e32 v93, v23
	v_cvt_i32_f32_e32 v94, v22
	v_and_b32_e32 v21, 15, v53
	v_and_b32_e32 v22, 15, v54
	v_and_b32_e32 v23, 15, v56
	v_and_b32_e32 v24, 15, v58
	v_and_b32_e32 v25, 15, v59
	v_and_b32_e32 v36, 15, v69
	v_and_b32_e32 v37, 15, v70
	v_and_b32_e32 v42, 15, v57
	v_and_b32_e32 v43, 15, v55
	v_and_b32_e32 v52, 15, v81
	v_and_b32_e32 v53, 15, v82
	v_and_b32_e32 v54, 15, v83
	v_and_b32_e32 v55, 15, v84
	v_and_b32_e32 v71, 15, v97
	v_and_b32_e32 v72, 15, v98
	v_and_b32_e32 v73, 15, v99
	v_and_b32_e32 v74, 15, v100
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v64, v[12:15]
	ds_store_b128 v64, v[20:23] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[5:8], v79
	ds_load_b128 v[12:15], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[28:31]
	ds_store_b128 v64, v[36:39] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[20:23], v79
	ds_load_b128 v[28:31], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[44:47]
	ds_store_b128 v64, v[52:55] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[36:39], v79
	ds_load_b128 v[44:47], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[60:63]
	ds_store_b128 v64, v[71:74] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[52:55], v79
	ds_load_b128 v[60:63], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[16:19]
	ds_store_b128 v64, v[24:27] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[16:19], v79
	ds_load_b128 v[24:27], v79 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[32:35]
	ds_store_b128 v64, v[40:43] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[32:35], v79
	ds_load_b128 v[40:43], v79 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v80
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v48, 15, v77
	v_and_b32_e32 v56, 15, v85
	v_and_b32_e32 v57, 15, v86
	v_and_b32_e32 v58, 15, v87
	v_and_b32_e32 v59, 15, v88
	v_and_b32_e32 v67, 15, v93
	v_and_b32_e32 v68, 15, v94
	v_and_b32_e32 v69, 15, v95
	v_and_b32_e32 v70, 15, v96
	v_and_b32_e32 v75, 15, v101
	v_and_b32_e32 v76, 15, v102
	v_and_b32_e32 v77, 15, v103
	v_and_b32_e32 v78, 15, v104
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[48:51]
	ds_store_b128 v64, v[56:59] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[48:51], v79
	ds_load_b128 v[56:59], v79 offset:1024
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v27, v43, 4, v35
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v43, 3, v66
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v64, v[67:70]
	ds_store_b128 v64, v[75:78] offset:512
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v64, v14, 4, v7
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v7, v9, v4
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[67:70], v79
	ds_load_b128 v[71:74], v79 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s24, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v5, v12, 4, v5
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v4, s33, 7, v43
	.loc	1 1249 38 is_stmt 0             ; ragged.py:1249:38
	s_add_i32 s8, s24, s8
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v7
	v_add_nc_u32_e32 v14, 32, v7
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v6, v13, 4, v6
	v_lshl_or_b32 v75, v15, 4, v8
	v_lshl_or_b32 v16, v24, 4, v16
	v_lshl_or_b32 v17, v25, 4, v17
	v_lshl_or_b32 v18, v26, 4, v18
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 48, v7
	v_mad_u64_u32 v[7:8], null, v7, s8, v[4:5]
	v_mad_u64_u32 v[12:13], null, v12, s8, v[4:5]
	v_mad_u64_u32 v[13:14], null, v14, s8, v[4:5]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	v_lshl_or_b32 v22, v30, 4, v22
	v_lshl_or_b32 v23, v31, 4, v23
	v_lshl_or_b32 v24, v40, 4, v32
	v_lshl_or_b32 v25, v41, 4, v33
	v_lshl_or_b32 v26, v42, 4, v34
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[14:15], null, v15, s8, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v75.l
	v_and_b16 v2.l, 0xff, v64.l
	v_lshlrev_b16 v4.l, 8, v6.l
	v_and_b16 v4.h, 0xff, v5.l
	v_lshlrev_b16 v5.l, 8, v19.l
	v_and_b16 v5.h, 0xff, v18.l
	v_lshlrev_b16 v6.l, 8, v17.l
	v_and_b16 v6.h, 0xff, v16.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v34, v58, 4, v50
	v_lshl_or_b32 v35, v59, 4, v51
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v15.h, v2.l, v1.l
	v_or_b16 v15.l, v4.h, v4.l
	v_or_b16 v16.h, v5.h, v5.l
	v_or_b16 v16.l, v6.h, v6.l
	v_cndmask_b32_e32 v7, 0x80000000, v7, vcc_lo
	v_lshlrev_b16 v1.l, 8, v23.l
	v_and_b16 v2.l, 0xff, v22.l
	v_lshlrev_b16 v4.l, 8, v21.l
	v_and_b16 v4.h, 0xff, v20.l
	v_lshlrev_b16 v5.l, 8, v27.l
	v_and_b16 v5.h, 0xff, v26.l
	v_lshlrev_b16 v6.l, 8, v25.l
	v_and_b16 v6.h, 0xff, v24.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s6, s7
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v44, 4, v36
	v_lshl_or_b32 v29, v45, 4, v37
	v_lshl_or_b32 v30, v46, 4, v38
	v_lshl_or_b32 v31, v47, 4, v39
	v_lshl_or_b32 v32, v56, 4, v48
	v_lshl_or_b32 v33, v57, 4, v49
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v42, v73, 4, v69
	v_lshl_or_b32 v44, v74, 4, v70
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b64 v[15:16], v7, s[12:15], 0 offen
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.h, v5.h, v5.l
	v_or_b16 v8.l, v6.h, v6.l
	v_cndmask_b32_e32 v12, 0x80000000, v12, vcc_lo
	v_lshlrev_b16 v5.l, 8, v35.l
	v_and_b16 v5.h, 0xff, v34.l
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v36, v60, 4, v52
	v_lshl_or_b32 v37, v61, 4, v53
	v_lshl_or_b32 v38, v62, 4, v54
	v_lshl_or_b32 v39, v63, 4, v55
	v_lshl_or_b32 v40, v71, 4, v67
	v_lshl_or_b32 v41, v72, 4, v68
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_lshlrev_b16 v1.l, 8, v31.l
	v_and_b16 v2.l, 0xff, v30.l
	v_lshlrev_b16 v4.l, 8, v29.l
	v_and_b16 v4.h, 0xff, v28.l
	v_lshlrev_b16 v6.l, 8, v33.l
	v_and_b16 v6.h, 0xff, v32.l
	buffer_store_b64 v[7:8], v12, s[12:15], 0 offen
	v_or_b16 v8.h, v5.h, v5.l
	v_lshlrev_b16 v5.l, 8, v44.l
	v_and_b16 v5.h, 0xff, v42.l
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s2, s3
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v7.h, v2.l, v1.l
	v_or_b16 v7.l, v4.h, v4.l
	v_or_b16 v8.l, v6.h, v6.l
	v_lshlrev_b16 v1.l, 8, v39.l
	v_and_b16 v2.l, 0xff, v38.l
	v_lshlrev_b16 v4.l, 8, v37.l
	v_and_b16 v4.h, 0xff, v36.l
	v_lshlrev_b16 v6.l, 8, v41.l
	v_and_b16 v6.h, 0xff, v40.l
	v_cndmask_b32_e32 v15, 0x80000000, v13, vcc_lo
	v_or_b16 v13.h, v5.h, v5.l
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 2, v65
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s0, s1
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_or_b16 v12.h, v2.l, v1.l
	v_or_b16 v12.l, v4.h, v4.l
	v_or_b16 v13.l, v6.h, v6.l
	v_cndmask_b32_e32 v4, 0x80000000, v14, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v6, 2, v9
	v_add_nc_u32_e32 v5, 0, v5
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s0, s24, 31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b64 v[7:8], v15, s[12:15], 0 offen
	buffer_store_b64 v[12:13], v4, s[12:15], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v4, 0, v43
	v_mov_b16_e32 v2.l, v11.h
	v_mov_b16_e32 v1.l, v10.h
	v_add3_u32 v5, v5, v6, v43
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s0, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s24, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v4, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v1, v5
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v2, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v0, 0xc0, v0
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v0
	v_add_lshl_u32 v0, v2, s33, 1
	s_and_b32 vcc_lo, vcc_lo, s34
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v1, v0, s[12:15], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp50:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 190
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 190
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 39
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 15672
; TotalNumSgprs: 41
; NumVgprs: 190
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 41
; NumVGPRsForWavesPerEU: 190
; Occupancy: 8
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     41
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_maskk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     190
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
