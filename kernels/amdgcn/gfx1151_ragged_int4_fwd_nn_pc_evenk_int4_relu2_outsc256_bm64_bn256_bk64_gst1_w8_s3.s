	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[20:21], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v91, 15, v0
	v_lshlrev_b32_e32 v95, 1, v0
	v_lshlrev_b32_e32 v96, 4, v0
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s20, 0xff
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
	s_mul_hi_u32 s15, s6, s5
	s_ashr_i32 s14, s4, 31
	s_mul_i32 s5, s15, s13
	s_add_i32 s17, s15, 1
	s_sub_i32 s16, s6, s5
	s_load_b256 s[4:11], s[0:1], 0x20
	s_sub_i32 s18, s16, s13
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s15, s17, s15
	s_cselect_b32 s16, s18, s16
	s_add_i32 s17, s15, 1
	s_cmp_ge_u32 s16, s13
	s_cselect_b32 s13, s17, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s15, s13, s14
	s_sub_i32 s28, s15, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s28, s3
	s_sub_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 20 is_stmt 0             ; ragged.py:1037:20
	s_add_i32 s2, s2, s12
	.loc	1 1040 20 is_stmt 1             ; ragged.py:1040:20
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	s_lshl_b64 s[16:17], s[2:3], 3
	s_waitcnt lgkmcnt(0)
	s_add_u32 s2, s4, s16
	s_addc_u32 s3, s5, s17
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_add_u32 s4, s6, s16
	s_addc_u32 s5, s7, s17
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[12:13], s[2:3], 0x0
	.loc	1 1041 23                       ; ragged.py:1041:23
	s_load_b64 s[26:27], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s16
	s_addc_u32 s3, s9, s17
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s16
	s_addc_u32 s5, s11, s17
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s21, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v6, s12 :: v_dual_lshlrev_b32 v7, 1, v0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v35, 4, v0
	v_mov_b32_e32 v5, s26
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr35
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[22:23], s[2:3], 0x0
	s_load_b64 s[24:25], s[4:5], 0x0
	v_dual_mov_b32 v1, 0 :: v_dual_and_b32 v92, 0xf0, v0
	v_dual_mov_b32 v2, 0 :: v_dual_lshlrev_b32 v93, 4, v91
	v_dual_mov_b32 v3, 0 :: v_dual_and_b32 v94, 3, v0
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
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
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
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v103, 0
	v_mov_b32_e32 v104, 0
	s_and_not1_b32 vcc_lo, exec_lo, s6
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_lshrrev_b32_e32 v6, 2, v0
	s_load_b128 s[4:7], s[0:1], 0x0
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_dual_mov_b32 v1, 0 :: v_dual_lshlrev_b32 v8, 3, v0
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_lshrrev_b32_e32 v4, 3, v92
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v2, s0, s26, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s27, 0, s0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshlrev_b32_e32 v5, 3, v94
	v_lshrrev_b32_e32 v7, 1, v0
	v_lshlrev_b32_e32 v9, 5, v91
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[24:25], v[2:3]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[2:3], null, s21, s12, v[4:5]
	v_and_b32_e32 v7, 24, v7
	v_xor_b32_e32 v3, v95, v6
	v_add_nc_u32_e32 v6, s26, v6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s0, s15, 8
	v_mov_b32_e32 v21, v1
	v_mul_lo_u32 v2, s20, v2
	v_and_b32_e32 v3, 24, v3
	v_mov_b32_e32 v23, v1
	v_mov_b32_e32 v24, v1
	v_mov_b32_e32 v25, v1
	v_mov_b32_e32 v26, v1
	v_mov_b32_e32 v27, v1
	v_mov_b32_e32 v28, v1
	v_add3_u32 v2, v2, s0, v93
	s_lshl_b32 s0, s14, 8
	v_mov_b32_e32 v29, v1
	v_mov_b32_e32 v30, v1
	v_mov_b32_e32 v31, v1
	v_add_nc_u32_e32 v17, s20, v2
	v_subrev_nc_u32_e32 v97, s0, v2
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v10, v5, v4
	v_mad_u64_u32 v[89:90], null, v6, s21, v[5:6]
	v_mov_b32_e32 v6, v1
	v_xor_b32_e32 v4, v8, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_lshl_or_b32 v8, v91, 9, v10
	v_dual_mov_b32 v5, v1 :: v_dual_and_b32 v10, 0xe00, v96
	v_mov_b32_e32 v22, v1
	v_add_nc_u32_e32 v98, 0, v4
	v_mov_b32_e32 v4, v1
	v_and_or_b32 v7, v95, 24, v9
	v_or3_b32 v3, v10, v3, v9
	v_xor_b32_e32 v14, 0x88, v8
	v_xor_b32_e32 v9, 0x110, v8
	v_xor_b32_e32 v10, 0x198, v8
	v_xor_b32_e32 v11, 8, v7
	v_xor_b32_e32 v12, 16, v7
	v_xor_b32_e32 v13, 24, v7
	v_xor_b32_e32 v15, 8, v3
	v_xor_b32_e32 v16, 16, v3
	v_xor_b32_e32 v18, 24, v3
	v_add_nc_u32_e32 v99, 0, v11
	v_add_nc_u32_e32 v100, 0, v12
	v_add_nc_u32_e32 v101, 0, v13
	v_dual_mov_b32 v11, v1 :: v_dual_add_nc_u32 v102, 0, v14
	v_add_nc_u32_e32 v103, 0, v9
	v_dual_mov_b32 v13, v1 :: v_dual_add_nc_u32 v104, 0, v10
	v_add_nc_u32_e32 v105, 0, v15
	v_dual_mov_b32 v15, v1 :: v_dual_add_nc_u32 v106, 0, v16
	v_dual_mov_b32 v20, v1 :: v_dual_add_nc_u32 v107, 0, v18
	v_add_nc_u32_e32 v108, 0, v7
	v_add_nc_u32_e32 v109, 0, v8
	v_dual_mov_b32 v19, v1 :: v_dual_add_nc_u32 v110, 0, v3
	v_mov_b32_e32 v3, v1
	v_mov_b32_e32 v7, v1
	v_mov_b32_e32 v8, v1
	v_mov_b32_e32 v9, v1
	v_mov_b32_e32 v10, v1
	v_subrev_nc_u32_e32 v90, s0, v17
	v_mov_b32_e32 v12, v1
	v_mov_b32_e32 v14, v1
	v_mov_b32_e32 v16, v1
	v_mov_b32_e32 v17, v1
	v_mov_b32_e32 v18, v1
	v_mov_b32_e32 v32, v1
	v_mov_b32_e32 v33, v1
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
	s_mov_b32 s3, 0x31027000
	s_mov_b32 s2, 0x7ffffffe
	s_and_b32 s5, s5, 0xffff
	s_and_b32 s7, s7, 0xffff
	s_lshl_b32 s13, s20, 5
	s_mov_b32 s14, 0
	s_mov_b32 s0, s4
	s_mov_b32 s1, s5
	s_mov_b32 s4, s6
	s_mov_b32 s5, s7
	s_mov_b32 s6, s2
	s_mov_b32 s7, s3
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_clause 0x1
	buffer_load_b128 v[65:68], v97, s[4:7], 0 offen
	buffer_load_b128 v[69:72], v90, s[4:7], 0 offen
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_add_nc_u32_e32 v73, s14, v89
	.loc	1 1058 19                       ; ragged.py:1058:19
	v_add_nc_u32_e32 v90, s13, v90
	v_add_nc_u32_e32 v97, s13, v97
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s14, s14, 32
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e32 v73, 0x80000000, v73, vcc_lo
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s14, s21
	.loc	1 1069 30                       ; ragged.py:1069:30
	buffer_load_b64 v[73:74], v73, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt vmcnt(1)
	v_perm_b32 v75, v69, v65, 0x5010400
	v_perm_b32 v69, v69, v65, 0x7030602
	v_perm_b32 v76, v70, v66, 0x5010400
	v_perm_b32 v70, v70, v66, 0x7030602
	v_perm_b32 v77, v71, v67, 0x5010400
	v_perm_b32 v71, v71, v67, 0x7030602
	v_lshrrev_b32_e32 v79, 8, v75
	v_perm_b32 v78, v72, v68, 0x5010400
	v_perm_b32 v72, v72, v68, 0x7030602
	v_and_b16 v65.l, 0xff, v75.l
	v_lshrrev_b32_e32 v80, 24, v75
	v_and_b16 v65.h, 0xff, v75.h
	v_lshrrev_b32_e32 v75, 8, v69
	v_and_b16 v66.l, 0xff, v69.l
	v_lshrrev_b32_e32 v81, 24, v69
	v_and_b16 v66.h, 0xff, v69.h
	v_lshrrev_b32_e32 v82, 8, v76
	v_and_b16 v67.l, 0xff, v76.l
	v_lshrrev_b32_e32 v83, 24, v76
	v_and_b16 v67.h, 0xff, v76.h
	v_lshrrev_b32_e32 v76, 8, v70
	v_lshrrev_b32_e32 v84, 24, v70
	v_and_b16 v68.h, 0xff, v70.h
	v_lshrrev_b32_e32 v85, 8, v77
	v_and_b16 v69.l, 0xff, v77.l
	v_lshrrev_b32_e32 v86, 24, v77
	v_and_b16 v69.h, 0xff, v77.h
	v_lshrrev_b32_e32 v77, 8, v71
	v_lshrrev_b32_e32 v87, 24, v71
	v_and_b16 v70.h, 0xff, v71.h
	v_lshlrev_b16 v71.h, 8, v79.l
	v_and_b16 v68.l, 0xff, v70.l
	v_and_b16 v70.l, 0xff, v71.l
	v_lshrrev_b32_e32 v88, 8, v78
	v_and_b16 v71.l, 0xff, v78.l
	v_or_b16 v119.l, v65.l, v71.h
	v_lshlrev_b16 v71.h, 8, v80.l
	v_lshrrev_b32_e32 v79, 24, v78
	v_and_b16 v65.l, 0xff, v78.h
	v_lshrrev_b32_e32 v78, 8, v72
	v_lshrrev_b32_e32 v80, 24, v72
	v_or_b16 v119.h, v65.h, v71.h
	v_lshlrev_b16 v65.h, 8, v75.l
	v_lshlrev_b16 v71.h, 8, v83.l
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt vmcnt(0)
	ds_store_b64 v98, v[73:74]
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_lshlrev_b16 v73.l, 8, v85.l
	v_lshlrev_b16 v73.h, 8, v86.l
	v_or_b16 v120.l, v66.l, v65.h
	v_lshlrev_b16 v66.l, 8, v81.l
	v_and_b16 v65.h, 0xff, v72.l
	v_lshlrev_b16 v72.l, 8, v76.l
	v_lshlrev_b16 v74.l, 8, v77.l
	v_lshlrev_b16 v74.h, 8, v87.l
	v_or_b16 v120.h, v66.h, v66.l
	v_and_b16 v66.l, 0xff, v72.h
	v_lshlrev_b16 v66.h, 8, v82.l
	v_lshlrev_b16 v72.h, 8, v84.l
	v_lshlrev_b16 v75.l, 8, v88.l
	v_lshlrev_b16 v75.h, 8, v79.l
	v_lshlrev_b16 v76.l, 8, v78.l
	v_lshlrev_b16 v76.h, 8, v80.l
	v_or_b16 v121.l, v67.l, v66.h
	v_or_b16 v121.h, v67.h, v71.h
	v_or_b16 v122.l, v68.l, v72.l
	v_or_b16 v122.h, v68.h, v72.h
	.loc	1 1069 30                       ; ragged.py:1069:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[81:84], v108 offset1:1
	ds_load_2addr_stride64_b64 v[85:88], v108 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	v_or_b16 v123.l, v69.l, v73.l
	v_or_b16 v123.h, v69.h, v73.h
	v_or_b16 v124.l, v70.l, v74.l
	v_or_b16 v124.h, v70.h, v74.h
	v_or_b16 v125.l, v71.l, v75.l
	v_or_b16 v125.h, v65.l, v75.h
	v_or_b16 v126.l, v65.h, v76.l
	v_or_b16 v126.h, v66.l, v76.h
	.loc	1 1069 30                       ; ragged.py:1069:30
	ds_load_2addr_stride64_b64 v[111:114], v99 offset1:1
	ds_load_2addr_stride64_b64 v[115:118], v99 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[77:80], v100 offset1:1
	ds_load_2addr_stride64_b64 v[73:76], v100 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[69:72], v101 offset1:1
	ds_load_2addr_stride64_b64 v[65:68], v101 offset0:2 offset1:3
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b16 v109, v119
	ds_store_b16_d16_hi v109, v119 offset:32
	ds_store_b16 v109, v120 offset:64
	ds_store_b16_d16_hi v109, v120 offset:96
	ds_store_b16 v102, v121
	ds_store_b16_d16_hi v102, v121 offset:32
	ds_store_b16 v102, v122 offset:64
	ds_store_b16_d16_hi v102, v122 offset:96
	ds_store_b16 v103, v123
	ds_store_b16_d16_hi v103, v123 offset:32
	ds_store_b16 v103, v124 offset:64
	ds_store_b16_d16_hi v103, v124 offset:96
	ds_store_b16 v104, v125
	ds_store_b16_d16_hi v104, v125 offset:32
	ds_store_b16 v104, v126 offset:64
	ds_store_b16_d16_hi v104, v126 offset:96
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[119:122], v110 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[119:120], v[81:82], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[121:122], v[81:82], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[119:120], v[83:84], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[121:122], v[83:84], v[25:32] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[81:84], v105 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[33:40], v[119:120], v[85:86], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[121:122], v[85:86], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[119:120], v[87:88], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[121:122], v[87:88], v[57:64] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[85:88], v106 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[111:112], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[111:112], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[113:114], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[113:114], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[115:116], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[115:116], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[117:118], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[117:118], v[57:64] neg_lo:[1,1,0]
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[81:84], v107 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[85:86], v[77:78], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[87:88], v[77:78], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[85:86], v[79:80], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[87:88], v[79:80], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[85:86], v[73:74], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[87:88], v[73:74], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[85:86], v[75:76], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[87:88], v[75:76], v[57:64] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[1:8], v[81:82], v[69:70], v[1:8] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[9:16], v[83:84], v[69:70], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[81:82], v[71:72], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[25:32], v[83:84], v[71:72], v[25:32] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[81:82], v[65:66], v[33:40] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[41:48], v[83:84], v[65:66], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[49:56], v[81:82], v[67:68], v[49:56] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[57:64], v[83:84], v[67:68], v[57:64] neg_lo:[1,1,0]
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 1111 19                       ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v104, v1
	v_cvt_f32_i32_e32 v103, v2
	v_cvt_f32_i32_e32 v102, v3
	v_cvt_f32_i32_e32 v101, v4
	v_cvt_f32_i32_e32 v100, v5
	v_cvt_f32_i32_e32 v99, v6
	v_cvt_f32_i32_e32 v98, v7
	v_cvt_f32_i32_e32 v97, v8
	v_cvt_f32_i32_e32 v90, v9
	v_cvt_f32_i32_e32 v89, v10
	v_cvt_f32_i32_e32 v88, v11
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
	v_cvt_f32_i32_e32 v34, v35
	v_cvt_f32_i32_e32 v33, v36
	v_cvt_f32_i32_e32 v32, v37
	v_cvt_f32_i32_e32 v31, v38
	v_cvt_f32_i32_e32 v30, v39
	v_cvt_f32_i32_e32 v29, v40
	v_cvt_f32_i32_e32 v28, v41
	v_cvt_f32_i32_e32 v27, v42
	v_cvt_f32_i32_e32 v26, v43
	v_cvt_f32_i32_e32 v25, v44
	v_cvt_f32_i32_e32 v24, v45
	v_cvt_f32_i32_e32 v23, v46
	v_cvt_f32_i32_e32 v22, v47
	v_cvt_f32_i32_e32 v21, v48
	v_cvt_f32_i32_e32 v20, v49
	v_cvt_f32_i32_e32 v19, v50
	v_cvt_f32_i32_e32 v18, v51
	v_cvt_f32_i32_e32 v17, v52
	v_cvt_f32_i32_e32 v16, v53
	v_cvt_f32_i32_e32 v15, v54
	v_cvt_f32_i32_e32 v14, v55
	v_cvt_f32_i32_e32 v13, v56
	v_cvt_f32_i32_e32 v12, v57
	v_cvt_f32_i32_e32 v11, v58
	v_cvt_f32_i32_e32 v10, v59
	v_cvt_f32_i32_e32 v9, v60
	v_cvt_f32_i32_e32 v4, v61
	v_cvt_f32_i32_e32 v3, v62
	v_cvt_f32_i32_e32 v2, v63
	v_cvt_f32_i32_e32 v1, v64
	v_dual_mov_b32 v6, s12 :: v_dual_mov_b32 v5, s26
	v_mov_b32_e32 v7, v95
	v_mov_b32_e32 v35, v96
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 48, v91
	v_or_b32_e32 v39, 16, v91
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, s9, 0xffff
	s_mov_b32 s15, 0x31027000
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v36, s0, s26, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v37, null, s27, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v8, 32, v91
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_mov_b32 s12, s8
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_mul_lo_u32 v6, s20, v6
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[36:37]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[24:25], v[36:37]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v37, s1, s26, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v38, null, s27, 0, s1
	v_add_co_u32 v39, s1, s26, v39
	v_add_co_ci_u32_e64 v40, null, s27, 0, s1
	v_add_co_u32 v41, s1, s26, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v42, null, s27, 0, s1
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s3, s[22:23], v[39:40]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[24:25], v[39:40]
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[22:23], v[37:38]
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_le_i64_e64 s5, s[22:23], v[41:42]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[24:25], v[41:42]
	v_cmp_gt_i64_e64 s2, s[24:25], v[37:38]
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
	v_lshl_or_b32 v8, s28, 8, v0
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s13, s11, 0xffff
	s_mov_b32 s12, s10
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v42, v92, 2, 0
	v_lshl_add_u32 v43, v92, 1, 0
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v6, v8, v6, 1
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v44, v94, 9, 0
	s_mov_b32 s0, 0x76543210
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
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v64, v76, v38 :: v_dual_lshlrev_b32 v39, 16, v39
	v_mul_f32_e32 v55, v85, v39
	v_dual_mul_f32 v60, v80, v38 :: v_dual_and_b32 v41, 28, v7
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v7, 5, v0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v47, v99, v39 :: v_dual_lshlrev_b32 v6, 5, v94
	v_dual_mul_f32 v51, v89, v39 :: v_dual_and_b32 v58, 0x80, v0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v62, v78, v38 :: v_dual_and_b32 v45, 32, v7
.Ltmp7:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v95, 4, v0
	v_and_or_b32 v108, 0x680, v35, v6
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v48, v98, v39 :: v_dual_lshlrev_b32 v37, 16, v37
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v35, v42, v45, v41
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(1)
	v_lshlrev_b32_e32 v36, 16, v36
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v75, v75, v38 :: v_dual_lshlrev_b32 v40, 16, v40
	v_dual_mul_f32 v49, v97, v39 :: v_dual_and_b32 v8, 0x60, v0
	v_dual_mul_f32 v53, v87, v39 :: v_dual_and_b32 v96, 8, v0
	v_dual_mul_f32 v46, v100, v39 :: v_dual_lshlrev_b32 v7, 1, v58
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v106, v95, 2, v44
.Ltmp10:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v41, v104, v39
	v_mul_f32_e32 v42, v103, v39
	v_mul_f32_e32 v44, v102, v39
	v_mul_f32_e32 v45, v101, v39
	v_dual_mul_f32 v50, v90, v39 :: v_dual_mul_f32 v59, v81, v38
	v_dual_mul_f32 v52, v88, v39 :: v_dual_mul_f32 v57, v82, v38
	v_dual_mul_f32 v54, v86, v39 :: v_dual_mul_f32 v61, v79, v38
	v_dual_mul_f32 v56, v84, v39 :: v_dual_mul_f32 v63, v77, v38
	v_dual_mul_f32 v39, v83, v39 :: v_dual_mul_f32 v74, v74, v38
	v_mul_f32_e32 v33, v33, v37
	v_dual_mul_f32 v73, v73, v38 :: v_dual_mul_f32 v66, v66, v37
	v_dual_mul_f32 v72, v72, v38 :: v_dual_mul_f32 v77, v30, v37
	v_dual_mul_f32 v71, v71, v38 :: v_dual_mul_f32 v34, v34, v37
	v_mul_f32_e32 v70, v70, v38
	v_dual_mul_f32 v69, v69, v38 :: v_dual_mul_f32 v76, v31, v37
	v_dual_mul_f32 v68, v68, v38 :: v_dual_mul_f32 v81, v26, v37
	v_dual_mul_f32 v38, v67, v38 :: v_dual_mul_f32 v79, v28, v37
	v_mul_f32_e32 v65, v65, v37
	v_mul_f32_e32 v67, v32, v37
	v_dual_mul_f32 v78, v29, v37 :: v_dual_mul_f32 v19, v19, v36
	v_mul_f32_e32 v80, v27, v37
	v_dual_mul_f32 v82, v25, v37 :: v_dual_mul_f32 v87, v15, v36
	v_mul_f32_e32 v83, v24, v37
	v_dual_mul_f32 v84, v23, v37 :: v_dual_mul_f32 v13, v13, v36
	v_dual_mul_f32 v85, v22, v37 :: v_dual_mul_f32 v20, v20, v36
	v_dual_mul_f32 v37, v21, v37 :: v_dual_mul_f32 v86, v16, v36
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v35, v40
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[21:24], v43
	ds_load_b128 v[25:28], v43 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v35, v18, v36
	v_mul_f32_e32 v40, v17, v36
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[15:18], v43 offset:512
	ds_load_b128 v[29:32], v43 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v14, v14, v36
	v_mul_f32_e32 v12, v12, v36
	v_mul_f32_e32 v11, v11, v36
	v_mul_f32_e32 v10, v10, v36
	v_mul_f32_e32 v9, v9, v36
	v_mul_f32_e32 v4, v4, v36
	v_mul_f32_e32 v3, v3, v36
	v_mul_f32_e32 v2, v2, v36
	v_mul_f32_e32 v1, v1, v36
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v105, v6, v8
	v_lshrrev_b32_e32 v107, 3, v58
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_add_nc_u32_e32 v58, 0, v58
.Ltmp12:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v36, v41, v21 :: v_dual_mul_f32 v41, v42, v22
	v_dual_mul_f32 v42, v44, v23 :: v_dual_mul_f32 v43, v45, v24
	v_dual_mul_f32 v44, v46, v25 :: v_dual_mul_f32 v45, v47, v26
	v_dual_mul_f32 v46, v48, v27 :: v_dual_mul_f32 v47, v49, v28
	v_dual_mul_f32 v48, v50, v15 :: v_dual_mul_f32 v49, v51, v16
	v_dual_mul_f32 v50, v52, v17 :: v_dual_mul_f32 v51, v53, v18
	v_dual_mul_f32 v52, v54, v29 :: v_dual_mul_f32 v53, v55, v30
	v_dual_mul_f32 v54, v56, v31 :: v_dual_mul_f32 v39, v39, v32
	v_dual_mul_f32 v55, v57, v21 :: v_dual_mul_f32 v56, v59, v22
	v_mul_f32_e32 v57, v60, v23
	v_dual_mul_f32 v59, v61, v24 :: v_dual_mul_f32 v60, v62, v25
	v_dual_mul_f32 v61, v63, v26 :: v_dual_mul_f32 v62, v64, v27
	v_dual_mul_f32 v63, v75, v28 :: v_dual_mul_f32 v64, v74, v15
	v_dual_mul_f32 v73, v73, v16 :: v_dual_mul_f32 v72, v72, v17
	v_dual_mul_f32 v71, v71, v18 :: v_dual_mul_f32 v70, v70, v29
	v_dual_mul_f32 v69, v69, v30 :: v_dual_mul_f32 v68, v68, v31
	v_dual_mul_f32 v38, v38, v32 :: v_dual_mul_f32 v65, v65, v22
	v_dual_mul_f32 v66, v66, v21 :: v_dual_mul_f32 v33, v33, v24
	v_dual_mul_f32 v34, v34, v23 :: v_dual_mul_f32 v67, v67, v25
	v_dual_mul_f32 v74, v76, v26 :: v_dual_mul_f32 v75, v77, v27
	v_dual_mul_f32 v76, v78, v28 :: v_dual_mul_f32 v77, v79, v15
	v_dual_mul_f32 v78, v80, v16 :: v_dual_mul_f32 v79, v81, v17
	v_dual_mul_f32 v80, v82, v18 :: v_dual_mul_f32 v81, v83, v29
	v_dual_mul_f32 v82, v84, v30 :: v_dual_mul_f32 v83, v85, v31
	v_dual_mul_f32 v37, v37, v32 :: v_dual_mul_f32 v20, v20, v21
	v_dual_mul_f32 v19, v19, v22 :: v_dual_mul_f32 v22, v40, v24
	v_dual_mul_f32 v21, v35, v23 :: v_dual_mul_f32 v10, v10, v17
	v_dual_mul_f32 v23, v86, v25 :: v_dual_mul_f32 v24, v87, v26
	v_dual_mul_f32 v14, v14, v27 :: v_dual_mul_f32 v13, v13, v28
	v_dual_mul_f32 v12, v12, v15 :: v_dual_mul_f32 v11, v11, v16
	v_dual_mul_f32 v9, v9, v18 :: v_dual_mul_f32 v4, v4, v29
	v_dual_mul_f32 v3, v3, v30 :: v_dual_mul_f32 v2, v2, v31
	v_dual_mul_f32 v1, v1, v32 :: v_dual_max_f32 v16, 0, v41
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v15, 0, v36 :: v_dual_max_f32 v18, 0, v43
	v_dual_max_f32 v17, 0, v42 :: v_dual_max_f32 v26, 0, v45
	v_dual_max_f32 v25, 0, v44 :: v_dual_max_f32 v28, 0, v47
	v_dual_max_f32 v27, 0, v46 :: v_dual_max_f32 v30, 0, v49
	v_dual_max_f32 v29, 0, v48 :: v_dual_max_f32 v32, 0, v51
	v_dual_max_f32 v31, 0, v50 :: v_dual_max_f32 v36, 0, v53
	v_dual_max_f32 v35, 0, v52 :: v_dual_max_f32 v44, 0, v54
	v_dual_max_f32 v39, 0, v39 :: v_dual_max_f32 v48, 0, v56
	v_dual_max_f32 v45, 0, v55 :: v_dual_max_f32 v56, 0, v61
	v_dual_max_f32 v49, 0, v57 :: v_dual_max_f32 v52, 0, v59
	v_dual_max_f32 v53, 0, v60 :: v_dual_max_f32 v84, 0, v73
	v_dual_max_f32 v57, 0, v62 :: v_dual_max_f32 v62, 0, v64
	v_dual_max_f32 v61, 0, v63 :: v_dual_max_f32 v88, 0, v69
	v_dual_max_f32 v87, 0, v70 :: v_dual_max_f32 v98, 0, v67
	v_dual_max_f32 v89, 0, v68 :: v_dual_max_f32 v38, 0, v38
	v_dual_max_f32 v90, 0, v66 :: v_dual_max_f32 v97, 0, v65
	v_dual_max_f32 v34, 0, v34 :: v_dual_max_f32 v33, 0, v33
	v_dual_max_f32 v99, 0, v74 :: v_dual_max_f32 v100, 0, v75
	v_dual_max_f32 v101, 0, v76 :: v_dual_max_f32 v102, 0, v77
	v_dual_max_f32 v103, 0, v78 :: v_dual_max_f32 v80, 0, v80
	v_dual_max_f32 v79, 0, v79 :: v_dual_max_f32 v82, 0, v82
	v_dual_max_f32 v81, 0, v81 :: v_dual_max_f32 v20, 0, v20
	v_dual_max_f32 v83, 0, v83 :: v_dual_max_f32 v22, 0, v22
	v_dual_max_f32 v19, 0, v19 :: v_dual_max_f32 v14, 0, v14
	v_dual_max_f32 v21, 0, v21 :: v_dual_max_f32 v12, 0, v12
	v_dual_max_f32 v13, 0, v13 :: v_dual_max_f32 v4, 0, v4
	v_dual_max_f32 v11, 0, v11 :: v_dual_max_f32 v2, 0, v2
	v_dual_max_f32 v9, 0, v9 :: v_dual_mul_f32 v40, v15, v15
	v_dual_max_f32 v1, 0, v1 :: v_dual_mul_f32 v50, v27, v27
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v41, v16, v16 :: v_dual_mul_f32 v46, v25, v25
	v_dual_mul_f32 v43, v18, v18 :: v_dual_mul_f32 v54, v29, v29
	v_dual_mul_f32 v47, v26, v26 :: v_dual_mul_f32 v60, v32, v32
	v_dual_mul_f32 v55, v30, v30 :: v_dual_mul_f32 v64, v36, v36
	v_mul_f32_e32 v59, v31, v31
	v_dual_mul_f32 v63, v35, v35 :: v_dual_mul_f32 v76, v52, v52
	v_dual_mul_f32 v67, v44, v44 :: v_dual_mul_f32 v78, v53, v53
	.loc	1 1234 19                       ; ragged.py:1234:19
	v_dual_max_f32 v85, 0, v72 :: v_dual_max_f32 v86, 0, v71
	v_dual_max_f32 v37, 0, v37 :: v_dual_max_f32 v104, 0, v24
	v_dual_max_f32 v23, 0, v23 :: v_dual_max_f32 v10, 0, v10
	v_dual_max_f32 v3, 0, v3 :: v_dual_mul_f32 v42, v17, v17
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_dual_mul_f32 v51, v28, v28 :: v_dual_mul_f32 v68, v39, v39
	v_dual_mul_f32 v71, v45, v45 :: v_dual_mul_f32 v70, v84, v84
	v_dual_mul_f32 v72, v48, v48 :: v_dual_mul_f32 v75, v49, v49
	v_dual_mul_f32 v66, v86, v86 :: v_dual_mul_f32 v77, v56, v56
	v_mul_f32_e32 v74, v61, v61
	v_mul_f32_e32 v73, v57, v57
	v_dual_mul_f32 v61, v87, v87 :: v_dual_mul_f32 v52, v90, v90
	v_dual_mul_f32 v57, v89, v89 :: v_dual_mul_f32 v48, v34, v34
	v_dual_mul_f32 v53, v97, v97 :: v_dual_mul_f32 v44, v98, v98
	v_dual_mul_f32 v49, v33, v33 :: v_dual_mul_f32 v36, v102, v102
	v_dual_mul_f32 v45, v99, v99 :: v_dual_mul_f32 v34, v80, v80
	v_dual_mul_f32 v39, v101, v101 :: v_dual_mul_f32 v28, v20, v20
	v_dual_mul_f32 v35, v103, v103 :: v_dual_mul_f32 v32, v81, v81
	v_dual_mul_f32 v33, v79, v79 :: v_dual_mul_f32 v30, v37, v37
	v_dual_mul_f32 v31, v82, v82 :: v_dual_mul_f32 v26, v19, v19
	v_dual_mul_f32 v29, v83, v83 :: v_dual_mul_f32 v20, v13, v13
	v_dual_mul_f32 v27, v21, v21 :: v_dual_mul_f32 v24, v23, v23
	v_dual_mul_f32 v19, v14, v14 :: v_dual_mul_f32 v14, v4, v4
	v_dual_mul_f32 v21, v12, v12 :: v_dual_mul_f32 v16, v2, v2
	v_mul_f32_e32 v13, v9, v9
	v_mul_f32_e32 v17, v1, v1
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v40, v41
	v_max3_f32 v2, v43, v46, v47
	v_max3_f32 v4, v55, v59, v60
	v_max3_f32 v9, v63, v64, v67
.Ltmp14:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v69, v62, v62
	v_dual_mul_f32 v65, v85, v85 :: v_dual_mul_f32 v56, v38, v38
	v_dual_mul_f32 v38, v100, v100 :: v_dual_mul_f32 v25, v22, v22
	v_dual_mul_f32 v22, v11, v11 :: v_dual_mul_f32 v23, v104, v104
	v_dual_mul_f32 v18, v10, v10 :: v_dual_mul_f32 v15, v3, v3
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v52, v53
	v_max3_f32 v3, v50, v51, v54
	v_max_f32_e32 v10, v71, v72
	v_max3_f32 v11, v76, v78, v77
	v_max3_f32 v81, v49, v44, v45
	v_max3_f32 v83, v35, v33, v34
	v_max3_f32 v84, v32, v31, v29
	v_max3_f32 v1, v1, v42, v2
	v_max3_f32 v2, v4, v9, v68
.Ltmp16:
	.loc	1 1235 13                       ; ragged.py:1235:13
	v_mul_f32_e32 v62, v88, v88
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v82, v38, v39, v36
	v_max3_f32 v4, v10, v75, v11
	v_max3_f32 v10, v80, v48, v81
	v_max3_f32 v11, v83, v84, v30
	v_max3_f32 v1, v1, v3, v2
	v_max3_f32 v37, v70, v65, v66
	v_max3_f32 v79, v61, v62, v57
	v_max_f32_e32 v85, v28, v26
	v_max3_f32 v86, v25, v24, v23
	v_max3_f32 v88, v22, v18, v13
	v_max3_f32 v89, v14, v15, v16
	v_max3_f32 v3, v10, v82, v11
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v1, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v73, v74, v69
	v_max3_f32 v87, v19, v20, v21
	v_max3_f32 v9, v37, v79, v56
	v_max3_f32 v37, v85, v27, v86
	v_max_f32_e32 v10, v10, v10
	v_max3_f32 v79, v88, v89, v17
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v80, v95, 6, 0
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v4, v12, v9
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v12, v3, s0, 0xfedcba98 op_sel:[1,0]
	v_lshl_add_u32 v9, v96, 4, v106
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v37, v87, v79
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v79, v108, v8
	v_permlanex16_b32 v11, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v9, v9, v7, v105
	v_permlanex16_b32 v37, v4, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	v_max_f32_e32 v3, v3, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v37, v37, v37
	v_dual_max_f32 v1, v1, v10 :: v_dual_max_f32 v2, v2, v11
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v10, v80, v107, v79
	v_lshrrev_b32_e32 v79, 1, v8
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v37
.Ltmp30:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v37, v94, 4, 0
.Ltmp31:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v93, v8
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v9, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_dual_mov_b32 v9, v1 :: v_dual_max_f32 v12, v4, v4
	v_mov_b32_e32 v10, v2
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_max_f32 v2, v2, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v4 :: v_dual_mov_b32 v11, v3
	v_max_f32_e32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max_f32_e32 v4, v12, v4
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v2, v2, v10
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v3, v3, v11
	v_max_f32_e32 v9, v9, v9
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v11, v2 :: v_dual_mov_b32 v12, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v9
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v12, v12 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v10, v1 :: v_dual_max_f32 v11, v11, v11
	v_mov_b32_e32 v9, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v12, v12, v12
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v11
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v12 :: v_dual_max_f32 v10, v10, v10
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v12, v2 :: v_dual_max_f32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_mov_b32 v80, v3 :: v_dual_max_f32 v1, v1, v10
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v9
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v80, v80 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v11, v1 :: v_dual_max_f32 v12, v12, v12
	v_dual_mov_b32 v10, v4 :: v_dual_lshlrev_b32 v81, 5, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v80, v80, v80
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v12
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_lshlrev_b32_e32 v9, 3, v96
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v80 :: v_dual_max_f32 v10, v10, v10
	v_max_f32_e32 v11, v11, v11
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v58, v58, v79, v9
	v_add3_u32 v9, v37, v81, v9
.Ltmp55:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.h, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp56:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v4, v4, v10 :: v_dual_max_f32 v1, v1, v11
.Ltmp57:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v10, 4, v92
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v84.h, v37.h
	v_mov_b16_e32 v85.h, v37.h
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v58, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[79:82], v9
.Ltmp59:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v11, 48, v10
	v_or_b32_e32 v58, 32, v10
	v_or_b32_e32 v83, 16, v10
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v80, v80, v80
	v_dual_max_f32 v82, v82, v82 :: v_dual_and_b32 v9, 63, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v86, 0x2b8cbccc, v79 :: v_dual_max_f32 v87, 0x2b8cbccc, v80
	v_max_f32_e32 v89, 0x2b8cbccc, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s26, v9
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v90, null, 0x40e00000, 0x40e00000, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_scale_f32 v95, null, 0x40e00000, 0x40e00000, v87
	v_div_scale_f32 v96, null, 0x40e00000, 0x40e00000, v89
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s27, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v98, v95
	v_rcp_f32_e32 v99, v96
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s26, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v4, null, s27, 0, s0
	v_add_co_u32 v11, s0, s26, v11
	v_add_co_ci_u32_e64 v12, null, s27, 0, s0
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v103, -v95, v98, 1.0
	v_max_f32_e32 v81, v81, v81
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v79, s0, s26, v58
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v58, v90
	v_fmac_f32_e32 v98, v103, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_max_f32_e32 v88, 0x2b8cbccc, v81
	v_fma_f32 v104, -v96, v99, 1.0
	v_div_scale_f32 v102, s2, v87, 0x40e00000, v87
	v_div_scale_f32 v105, s3, v89, 0x40e00000, v89
	v_div_scale_f32 v94, null, 0x40e00000, 0x40e00000, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v81, -v90, v58, 1.0
	v_dual_fmac_f32 v99, v104, v99 :: v_dual_mul_f32 v104, v102, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v97, v94
	v_div_scale_f32 v100, vcc_lo, v86, 0x40e00000, v86
	v_mul_f32_e32 v106, v105, v99
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v80, null, s27, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[22:23], v[3:4]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[24:25], v[3:4]
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v110, -v96, v106, v105
	v_div_scale_f32 v101, s1, v88, 0x40e00000, v88
	v_fma_f32 v82, -v94, v97, 1.0
	v_fmac_f32_e32 v58, v81, v58
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v81, s0, s26, v83
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v106, v110, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v97, v82, v97
	v_mul_f32_e32 v83, v100, v58
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v82, null, s27, 0, s0
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[22:23], v[11:12]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v109, -v95, v104, v102
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v107, -v90, v83, v100
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[22:23], v[81:82]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[24:25], v[81:82]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_add_nc_u32_e32 v10, v10, v5
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v104, v109, v98
	v_fmac_f32_e32 v83, v107, v58
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, v9, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v3, -v90, v83, v100
	v_fma_f32 v90, -v95, v104, v102
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v3, v3, v58, v83
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[24:25], v[11:12]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v3, v3, 0x40e00000, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v84.l, v3.h
	v_and_b32_e32 v11, 1, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add3_u32 v11, v3, v11, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v103, v101, v97
	v_fma_f32 v108, -v94, v103, v101
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, v108, v97
	v_fma_f32 v4, -v94, v103, v101
	v_fma_f32 v94, -v96, v106, v105
	s_delay_alu instid0(VALU_DEP_2)
	v_div_fmas_f32 v4, v4, v97, v103
	s_mov_b32 vcc_lo, s2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[22:23], v[79:80]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v58, v90, v98, v104
	s_mov_b32 vcc_lo, s3
	v_div_fixup_f32 v4, v4, 0x40e00000, v88
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[24:25], v[79:80]
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v80, 0xffff0000, v11
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v83, v94, v99, v106
	v_div_fixup_f32 v12, v58, 0x40e00000, v87
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v37.l, v4.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v94, null, v80, v80, v47
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v58, v83, 0x40e00000, v89
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_and_b32_e32 v83, 1, v37
	.loc	1 1240 33 is_stmt 1             ; ragged.py:1240:33
	v_div_scale_f32 v81, null, v80, v80, v40
	v_rcp_f32_e32 v100, v94
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v85.l, v12.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add3_u32 v3, v4, v83, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, null, v80, v80, v41
	v_rcp_f32_e32 v95, v81
	v_div_scale_f32 v87, null, v80, v80, v43
	v_rcp_f32_e32 v96, v83
	v_div_scale_f32 v89, null, v80, v80, v46
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_fma_f32 v108, -v94, v100, 1.0
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v79, 1, v85
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v85, null, v80, v80, v42
	v_fma_f32 v103, -v81, v95, 1.0
	v_rcp_f32_e32 v98, v87
	v_div_scale_f32 v82, vcc_lo, v40, v80, v40
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v97, v85
	v_fma_f32 v104, -v83, v96, 1.0
	v_div_scale_f32 v101, s12, v47, v80, v47
	v_dual_fmac_f32 v100, v108, v100 :: v_dual_fmac_f32 v95, v103, v95
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v37.l, v58.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v84, s8, v41, v80, v41
	v_rcp_f32_e32 v99, v89
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v105, -v85, v97, 1.0
	v_fmac_f32_e32 v96, v104, v96
	v_dual_mul_f32 v112, v101, v100 :: v_dual_mul_f32 v103, v82, v95
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v37, 1, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v86, s9, v42, v80, v42
	v_fma_f32 v106, -v87, v98, 1.0
	v_dual_fmac_f32 v97, v105, v97 :: v_dual_mul_f32 v104, v84, v96
	v_fma_f32 v108, -v81, v103, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v12, v12, v79, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v88, s10, v43, v80, v43
	v_fma_f32 v107, -v89, v99, 1.0
	v_fmac_f32_e32 v98, v106, v98
	v_mul_f32_e32 v105, v86, v97
	v_fma_f32 v109, -v83, v104, v84
	v_fmac_f32_e32 v103, v108, v95
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v106, v88, v98 :: v_dual_and_b32 v79, 0xffff0000, v12
	v_dual_fmac_f32 v99, v107, v99 :: v_dual_fmac_f32 v104, v109, v96
	v_fma_f32 v110, -v85, v105, v86
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v81, -v81, v103, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v4, v58, v37, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v111, -v87, v106, v88
	v_fma_f32 v82, -v83, v104, v84
	v_fmac_f32_e32 v105, v110, v97
	v_div_fmas_f32 v81, v81, v95, v103
	s_mov_b32 vcc_lo, s8
	v_dual_fmac_f32 v106, v111, v98 :: v_dual_and_b32 v37, 0xffff0000, v4
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v85, v105, v86
	v_div_scale_f32 v86, null, v80, v80, v51
	v_div_fmas_f32 v82, v82, v96, v104
	v_fma_f32 v84, -v87, v106, v88
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v102, null, v80, v80, v50
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fixup_f32 v41, v82, v80, v41
	v_rcp_f32_e32 v82, v86
	v_div_fmas_f32 v83, v83, v97, v105
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v40, v81, v80, v40
	v_div_fmas_f32 v81, v84, v98, v106
	v_fma_f32 v84, -v94, v112, v101
	v_div_scale_f32 v90, s11, v46, v80, v46
	v_rcp_f32_e32 v85, v102
	v_div_fixup_f32 v42, v83, v80, v42
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v112, v84, v100
	v_fma_f32 v84, -v86, v82, 1.0
	v_div_scale_f32 v83, s8, v50, v80, v50
	v_div_fixup_f32 v43, v81, v80, v43
	v_fma_f32 v88, -v94, v112, v101
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v82, v84, v82 :: v_dual_mul_f32 v107, v90, v99
	v_fma_f32 v87, -v102, v85, 1.0
	v_div_scale_f32 v94, null, v80, v80, v55
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v108, -v89, v107, v90
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, null, v80, v80, v54
	v_rcp_f32_e32 v98, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v107, v108, v99
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v58, 0xffff0000, v3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v84, v87
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v81, -v89, v107, v90
	v_mul_f32_e32 v89, v83, v85
	v_div_scale_f32 v90, s9, v51, v80, v51
	v_div_fmas_f32 v81, v81, v99, v107
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v102, v89, v83
	s_mov_b32 vcc_lo, s12
	v_mul_f32_e32 v96, v90, v82
	v_div_fmas_f32 v88, v88, v100, v112
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v87, v84, 1.0
	v_fmac_f32_e32 v89, v95, v85
	v_div_scale_f32 v95, null, v80, v80, v59
	v_div_fixup_f32 v46, v81, v80, v46
	v_div_fixup_f32 v47, v88, v80, v47
	v_fma_f32 v81, -v86, v96, v90
	v_fmac_f32_e32 v84, v97, v84
	v_div_scale_f32 v88, s10, v54, v80, v54
	v_fma_f32 v97, -v94, v98, 1.0
	v_rcp_f32_e32 v99, v95
	v_fma_f32 v83, -v102, v89, v83
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v96, v81, v82 :: v_dual_mul_f32 v81, v88, v84
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s11, v55, v80, v55
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v100, null, v80, v80, v60
	v_div_fmas_f32 v83, v83, v85, v89
	v_fma_f32 v85, -v86, v96, v90
	v_fma_f32 v86, -v87, v81, v88
	v_mul_f32_e32 v89, v97, v98
	v_fma_f32 v90, -v95, v99, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v50, v83, v80, v50
	v_div_fmas_f32 v82, v85, v82, v96
	v_fmac_f32_e32 v81, v86, v84
	v_rcp_f32_e32 v85, v100
	v_fma_f32 v86, -v94, v89, v97
	v_fmac_f32_e32 v99, v90, v99
	v_div_scale_f32 v90, s8, v59, v80, v59
	v_div_fixup_f32 v51, v82, v80, v51
	v_fma_f32 v82, -v87, v81, v88
	v_fmac_f32_e32 v89, v86, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v83, v90, v99
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v86, -v100, v85, 1.0
	v_div_scale_f32 v87, null, v80, v80, v63
	v_div_fmas_f32 v81, v82, v84, v81
	v_fma_f32 v82, -v94, v89, v97
	v_fma_f32 v84, -v95, v83, v90
	v_div_scale_f32 v94, null, v80, v80, v64
	v_fmac_f32_e32 v85, v86, v85
	v_rcp_f32_e32 v86, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v84, v99
	v_rcp_f32_e32 v84, v94
	v_div_scale_f32 v88, s9, v60, v80, v60
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v54, v81, v80, v54
	v_div_fmas_f32 v82, v82, v98, v89
	v_mul_f32_e32 v89, v88, v85
	v_fma_f32 v81, -v95, v83, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v87, v86, 1.0
	v_div_scale_f32 v90, s10, v63, v80, v63
	v_fma_f32 v95, -v94, v84, 1.0
	v_div_fixup_f32 v55, v82, v80, v55
	v_fma_f32 v82, -v100, v89, v88
	v_fmac_f32_e32 v86, v96, v86
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v95, s8, v64, v80, v64
	v_fmac_f32_e32 v89, v82, v85
	v_mul_f32_e32 v82, v90, v86
	v_div_scale_f32 v96, null, v80, v80, v67
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v98, v95, v84
	v_div_fmas_f32 v81, v81, v99, v83
	s_mov_b32 vcc_lo, s9
	v_rcp_f32_e32 v83, v96
	v_div_scale_f32 v97, null, v80, v80, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_div_fixup_f32 v59, v81, v80, v59
	v_fma_f32 v81, -v100, v89, v88
	v_fma_f32 v88, -v87, v82, v90
	v_rcp_f32_e32 v99, v97
	.loc	1 1248 9 is_stmt 1              ; ragged.py:1248:9
	s_mov_b32 s12, s16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v85, v89
	v_fmac_f32_e32 v82, v88, v86
	v_fma_f32 v85, -v94, v98, v95
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v100, -v96, v83, 1.0
	v_div_fixup_f32 v60, v81, v80, v60
	v_fma_f32 v81, -v87, v82, v90
	v_fmac_f32_e32 v98, v85, v84
	v_div_scale_f32 v88, s9, v67, v80, v67
	v_fma_f32 v89, -v97, v99, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v81, v81, v86, v82
	v_fma_f32 v82, -v94, v98, v95
	v_div_scale_f32 v95, null, v79, v79, v72
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v99, v89, v99
	v_div_fmas_f32 v82, v82, v84, v98
	v_rcp_f32_e32 v84, v95
	v_fmac_f32_e32 v83, v100, v83
	v_div_scale_f32 v87, s11, v68, v80, v68
	v_div_scale_f32 v89, null, v79, v79, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v85, v88, v83
	v_mul_f32_e32 v94, v87, v99
	v_div_fixup_f32 v63, v81, v80, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v90, v89
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v96, v85, v88
	v_div_fixup_f32 v64, v82, v80, v64
	v_div_scale_f32 v82, s8, v71, v79, v71
	v_fmac_f32_e32 v85, v86, v83
	v_fma_f32 v86, -v97, v94, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v98, -v89, v90, 1.0
	v_fma_f32 v81, -v96, v85, v88
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v86, v99
	v_fma_f32 v86, -v95, v84, 1.0
	v_fmac_f32_e32 v90, v98, v90
	v_div_scale_f32 v96, null, v79, v79, v76
	v_div_scale_f32 v88, null, v79, v79, v75
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v84, v86, v84
	v_div_fmas_f32 v81, v81, v83, v85
	v_fma_f32 v83, -v97, v94, v87
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v85, v82, v90
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v87, s9, v72, v79, v72
	v_div_fmas_f32 v83, v83, v99, v94
	v_rcp_f32_e32 v99, v96
	v_fma_f32 v94, -v89, v85, v82
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v67, v81, v80, v67
	v_div_fixup_f32 v68, v83, v80, v68
	v_div_scale_f32 v83, null, v79, v79, v78
	v_fmac_f32_e32 v85, v94, v90
	v_fma_f32 v98, -v88, v86, 1.0
	v_div_scale_f32 v81, s10, v75, v79, v75
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v96, v99, 1.0
	v_fma_f32 v82, -v89, v85, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_fmac_f32_e32 v86, v98, v86
	v_rcp_f32_e32 v89, v83
	v_div_scale_f32 v98, null, v79, v79, v77
	v_fmac_f32_e32 v99, v94, v99
	v_div_scale_f32 v94, s11, v76, v79, v76
	v_mul_f32_e32 v97, v87, v84
	v_div_fmas_f32 v82, v82, v90, v85
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v90, v94, v99
	v_fma_f32 v80, -v95, v97, v87
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v71, v82, v79, v71
	v_dual_fmac_f32 v97, v80, v84 :: v_dual_mul_f32 v80, v81, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v85, -v95, v97, v87
	v_fma_f32 v87, -v88, v80, v81
	v_fma_f32 v95, -v83, v89, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v84, v85, v84, v97
	v_fmac_f32_e32 v80, v87, v86
	v_rcp_f32_e32 v85, v98
	v_fma_f32 v87, -v96, v90, v94
	v_fmac_f32_e32 v89, v95, v89
	v_div_scale_f32 v95, s8, v78, v79, v78
	v_fma_f32 v81, -v88, v80, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v90, v87, v99
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v82, v95, v89
	v_div_fixup_f32 v72, v84, v79, v72
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v98, v85, 1.0
	v_div_scale_f32 v87, null, v79, v79, v73
	v_div_fmas_f32 v80, v81, v86, v80
	v_fma_f32 v81, -v96, v90, v94
	v_fma_f32 v86, -v83, v82, v95
	v_div_scale_f32 v94, null, v79, v79, v74
	v_fmac_f32_e32 v85, v84, v85
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v88, s9, v77, v79, v77
	v_fmac_f32_e32 v82, v86, v89
	v_rcp_f32_e32 v86, v94
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v75, v80, v79, v75
	v_div_fmas_f32 v81, v81, v99, v90
	v_mul_f32_e32 v90, v88, v85
	v_fma_f32 v80, -v83, v82, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v87, v84, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v76, v81, v79, v76
	v_fma_f32 v81, -v98, v90, v88
	v_fma_f32 v95, -v94, v86, 1.0
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v83, s10, v73, v79, v73
	v_div_scale_f32 v96, null, v79, v79, v69
	v_div_fmas_f32 v80, v80, v89, v82
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_fmac_f32 v90, v81, v85 :: v_dual_mul_f32 v81, v83, v84
	v_fmac_f32_e32 v86, v95, v86
	v_div_scale_f32 v95, null, v79, v79, v70
	v_rcp_f32_e32 v82, v96
	v_div_scale_f32 v89, s8, v74, v79, v74
	v_div_fixup_f32 v78, v80, v79, v78
	v_fma_f32 v80, -v98, v90, v88
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_mul_f32_e32 v97, v89, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v87, v81, v83
	v_div_fmas_f32 v80, v80, v85, v90
	v_fma_f32 v99, -v96, v82, 1.0
	v_fma_f32 v85, -v94, v97, v89
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v77, v80, v79, v77
	v_fma_f32 v90, -v95, v98, 1.0
	v_fmac_f32_e32 v82, v99, v82
	v_fmac_f32_e32 v97, v85, v86
	v_div_scale_f32 v85, s11, v70, v79, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v98, v90, v98 :: v_dual_fmac_f32 v81, v88, v84
	v_div_scale_f32 v88, s9, v69, v79, v69
	v_div_scale_f32 v99, null, v79, v79, v56
	v_mul_f32_e32 v90, v85, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v80, -v87, v81, v83
	v_mul_f32_e32 v83, v88, v82
	v_div_scale_f32 v87, null, v79, v79, v65
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v80, v80, v84, v81
	v_fma_f32 v81, -v94, v97, v89
	v_fma_f32 v84, -v96, v83, v88
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v89, v87
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v79, v79, v66
	v_div_fmas_f32 v81, v81, v86, v97
	v_fmac_f32_e32 v83, v84, v82
	v_fma_f32 v86, -v95, v90, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v84, v94
	v_div_fixup_f32 v73, v80, v79, v73
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v97, -v87, v89, 1.0
	v_fma_f32 v80, -v96, v83, v88
	v_fmac_f32_e32 v90, v86, v98
	v_div_scale_f32 v88, null, v79, v79, v61
	v_div_fixup_f32 v74, v81, v79, v74
	v_fmac_f32_e32 v89, v97, v89
	v_div_scale_f32 v81, s8, v65, v79, v65
	v_div_fmas_f32 v80, v80, v82, v83
	v_fma_f32 v82, -v95, v90, v85
	v_rcp_f32_e32 v85, v88
	v_div_scale_f32 v95, null, v79, v79, v62
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v86, -v94, v84, 1.0
	v_mul_f32_e32 v83, v81, v89
	v_div_fmas_f32 v82, v82, v98, v90
	v_rcp_f32_e32 v98, v95
	v_div_fixup_f32 v69, v80, v79, v69
	v_fmac_f32_e32 v84, v86, v84
	v_div_scale_f32 v86, s9, v66, v79, v66
	v_fma_f32 v90, -v87, v83, v81
	v_fma_f32 v97, -v88, v85, 1.0
	v_div_fixup_f32 v70, v82, v79, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v96, v86, v84
	v_div_scale_f32 v82, s10, v61, v79, v61
	v_fmac_f32_e32 v85, v97, v85
	v_fma_f32 v97, -v95, v98, 1.0
	v_fmac_f32_e32 v83, v90, v89
	v_div_scale_f32 v90, null, v79, v79, v57
	v_fma_f32 v80, -v94, v96, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v98, v97, v98
	v_fma_f32 v81, -v87, v83, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v87, v90
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v96, v80, v84
	v_mul_f32_e32 v80, v82, v85
	v_div_scale_f32 v97, s11, v62, v79, v62
	v_div_fmas_f32 v81, v81, v89, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v94, v96, v86
	v_fma_f32 v86, -v88, v80, v82
	s_mov_b32 vcc_lo, s9
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v94, -v90, v87, 1.0
	v_mul_f32_e32 v89, v97, v98
	v_div_fmas_f32 v83, v83, v84, v96
	v_fmac_f32_e32 v80, v86, v85
	v_rcp_f32_e32 v84, v99
	v_fmac_f32_e32 v87, v94, v87
	v_div_scale_f32 v94, s8, v57, v79, v57
	v_fma_f32 v86, -v95, v89, v97
	v_div_fixup_f32 v65, v81, v79, v65
	v_fma_f32 v81, -v88, v80, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v82, v94, v87
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v66, v83, v79, v66
	v_fma_f32 v83, -v99, v84, 1.0
	v_div_fmas_f32 v80, v81, v85, v80
	v_fma_f32 v85, -v90, v82, v94
	v_fmac_f32_e32 v89, v86, v98
	v_div_scale_f32 v86, null, v58, v58, v52
	v_fmac_f32_e32 v84, v83, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v85, v87
	v_fma_f32 v81, -v95, v89, v97
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v95, null, v58, v58, v53
	v_div_scale_f32 v88, s9, v56, v79, v56
	s_mov_b32 vcc_lo, s11
	v_rcp_f32_e32 v85, v95
	v_div_fmas_f32 v81, v81, v98, v89
	v_mul_f32_e32 v89, v88, v84
	v_div_fixup_f32 v61, v80, v79, v61
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v86, v83, 1.0
	v_fma_f32 v80, -v90, v82, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v62, v81, v79, v62
	v_fma_f32 v81, -v99, v89, v88
	v_fmac_f32_e32 v83, v96, v83
	v_div_scale_f32 v96, null, v58, v58, v48
	v_div_scale_f32 v90, s10, v52, v58, v52
	v_fma_f32 v94, -v95, v85, 1.0
	v_div_fmas_f32 v80, v80, v87, v82
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v96
	v_fmac_f32_e32 v89, v81, v84
	v_mul_f32_e32 v81, v90, v83
	v_fmac_f32_e32 v85, v94, v85
	v_div_scale_f32 v87, s8, v53, v58, v53
	v_div_scale_f32 v94, null, v58, v58, v49
	v_div_fixup_f32 v57, v80, v79, v57
	v_fma_f32 v80, -v99, v89, v88
	v_fma_f32 v88, -v86, v81, v90
	v_mul_f32_e32 v97, v87, v85
	v_rcp_f32_e32 v98, v94
	v_fma_f32 v99, -v96, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v88, v83
	v_div_fmas_f32 v80, v80, v84, v89
	v_fma_f32 v84, -v95, v97, v87
	v_fmac_f32_e32 v82, v99, v82
	v_div_scale_f32 v88, s9, v48, v58, v48
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v56, v80, v79, v56
	v_fma_f32 v89, -v94, v98, 1.0
	v_fma_f32 v79, -v86, v81, v90
	v_fmac_f32_e32 v97, v84, v85
	v_mul_f32_e32 v80, v88, v82
	v_div_scale_f32 v86, null, v58, v58, v44
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v98, v89, v98
	v_div_scale_f32 v84, s11, v49, v58, v49
	v_div_fmas_f32 v79, v79, v83, v81
	v_fma_f32 v81, -v95, v97, v87
	v_fma_f32 v83, -v96, v80, v88
	v_rcp_f32_e32 v87, v86
	v_div_scale_f32 v90, null, v58, v58, v45
	v_mul_f32_e32 v89, v84, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v80, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v81, v81, v85, v97
	v_fma_f32 v85, -v94, v89, v84
	v_div_fixup_f32 v52, v79, v58, v52
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v86, v87, 1.0
	v_fma_f32 v79, -v96, v80, v88
	v_div_fixup_f32 v53, v81, v58, v53
	v_fmac_f32_e32 v89, v85, v98
	v_div_scale_f32 v81, s8, v44, v58, v44
	v_fmac_f32_e32 v87, v95, v87
	v_fma_f32 v85, -v90, v83, 1.0
	v_div_scale_f32 v88, null, v58, v58, v38
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v94, v89, v84
	v_mul_f32_e32 v82, v81, v87
	v_fmac_f32_e32 v83, v85, v83
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v85, s9, v45, v58, v45
	v_div_scale_f32 v94, null, v58, v58, v39
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v85, v83
	v_div_fmas_f32 v80, v80, v98, v89
	v_fma_f32 v89, -v86, v82, v81
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v88, v84, 1.0
	v_div_fixup_f32 v48, v79, v58, v48
	v_fma_f32 v79, -v90, v95, v85
	v_fmac_f32_e32 v82, v89, v87
	v_div_scale_f32 v89, null, v58, v58, v36
	v_div_fixup_f32 v49, v80, v58, v49
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v80, s10, v38, v58, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v81, -v86, v82, v81
	v_fmac_f32_e32 v95, v79, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v80, v84
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v39, v58, v39
	v_div_fmas_f32 v81, v81, v87, v82
	v_fma_f32 v82, -v90, v95, v85
	v_div_scale_f32 v98, null, v58, v58, v35
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v88, v79, v80
	v_mul_f32_e32 v87, v96, v97
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v95
	v_rcp_f32_e32 v83, v98
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v94, v87, v96
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v36, v58, v36
	v_div_fixup_f32 v44, v81, v58, v44
	v_div_fixup_f32 v45, v82, v58, v45
	v_fma_f32 v80, -v88, v79, v80
	v_fmac_f32_e32 v87, v85, v97
	v_mul_f32_e32 v81, v90, v86
	v_fma_f32 v82, -v98, v83, 1.0
	v_div_scale_f32 v85, null, v58, v58, v33
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v88, s9, v35, v58, v35
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v94, v87, v96
	v_fma_f32 v84, -v89, v81, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v94, null, v58, v58, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v38, v79, v58, v38
	v_rcp_f32_e32 v84, v94
	v_div_fmas_f32 v80, v80, v97, v87
	v_mul_f32_e32 v87, v88, v83
	v_fma_f32 v79, -v89, v81, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v39, v80, v58, v39
	v_fma_f32 v80, -v98, v87, v88
	v_div_scale_f32 v89, s10, v33, v58, v33
	v_fmac_f32_e32 v82, v95, v82
	v_fma_f32 v90, -v94, v84, 1.0
	v_div_scale_f32 v95, null, v58, v58, v32
	v_div_fmas_f32 v79, v79, v86, v81
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v83 :: v_dual_fmac_f32 v84, v90, v84
	v_rcp_f32_e32 v81, v95
	v_div_scale_f32 v90, null, v58, v58, v31
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s8, v34, v58, v34
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v90
	v_div_fixup_f32 v36, v79, v58, v36
	v_fma_f32 v79, -v98, v87, v88
	v_fma_f32 v88, -v85, v80, v89
	v_mul_f32_e32 v96, v86, v84
	v_fma_f32 v98, -v95, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v48
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v87
	v_fmac_f32_e32 v80, v88, v82
	v_fma_f32 v83, -v94, v96, v86
	v_fmac_f32_e32 v81, v98, v81
	v_div_scale_f32 v87, s9, v32, v58, v32
	v_fma_f32 v88, -v90, v97, 1.0
	v_div_fixup_f32 v35, v79, v58, v35
	v_fma_f32 v79, -v85, v80, v89
	v_fmac_f32_e32 v96, v83, v84
	v_mul_f32_e32 v83, v87, v81
	v_fmac_f32_e32 v97, v88, v97
	v_div_scale_f32 v88, null, v58, v58, v29
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v85, s11, v31, v58, v31
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v94, v96, v86
	v_fma_f32 v82, -v95, v83, v87
	v_rcp_f32_e32 v86, v88
	v_div_scale_f32 v94, null, v58, v58, v30
	v_mul_f32_e32 v89, v85, v97
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v82, v81
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v82, v94
	v_div_fmas_f32 v80, v80, v84, v96
	v_fma_f32 v84, -v90, v89, v85
	v_div_fixup_f32 v33, v79, v58, v33
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v88, v86, 1.0
	v_fma_f32 v79, -v95, v83, v87
	v_div_fixup_f32 v34, v80, v58, v34
	v_fmac_f32_e32 v89, v84, v97
	v_div_scale_f32 v80, s8, v29, v58, v29
	v_fmac_f32_e32 v86, v96, v86
	v_fma_f32 v84, -v94, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v95, null, v37, v37, v26
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	v_mul_f32_e32 v83, v80, v86
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v84, null, v37, v37, v28
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v85, s9, v30, v58, v30
	v_div_fmas_f32 v81, v81, v97, v89
	v_rcp_f32_e32 v87, v84
	v_fma_f32 v89, -v88, v83, v80
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v90, v85, v82
	v_div_fixup_f32 v32, v79, v58, v32
	v_div_fixup_f32 v31, v81, v58, v31
	v_rcp_f32_e32 v81, v95
	v_fmac_f32_e32 v83, v89, v86
	v_fma_f32 v79, -v94, v90, v85
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v97, null, v37, v37, v25
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v80, -v88, v83, v80
	v_div_scale_f32 v88, null, v37, v37, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v90, v79, v82 :: v_dual_fmac_f32 v87, v89, v87
	v_div_scale_f32 v79, s10, v28, v37, v28
	v_rcp_f32_e32 v89, v88
	v_fma_f32 v96, -v95, v81, 1.0
	v_div_fmas_f32 v80, v80, v86, v83
	v_fma_f32 v83, -v94, v90, v85
	v_mul_f32_e32 v85, v79, v87
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v81, v96, v81
	v_div_scale_f32 v86, s8, v26, v37, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v96, -v84, v85, v79
	v_fma_f32 v94, -v88, v89, 1.0
	v_rcp_f32_e32 v99, v97
	v_div_fmas_f32 v82, v83, v82, v90
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v98, v86, v81 :: v_dual_fmac_f32 v85, v96, v87
	v_fmac_f32_e32 v89, v94, v89
	v_div_scale_f32 v94, s11, v27, v37, v27
	v_div_fixup_f32 v29, v80, v58, v29
	v_div_fixup_f32 v30, v82, v58, v30
	v_fma_f32 v58, -v84, v85, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v90, v94, v89
	v_div_scale_f32 v82, null, v37, v37, v24
	v_fma_f32 v83, -v95, v98, v86
	v_fma_f32 v80, -v97, v99, 1.0
	v_fma_f32 v79, -v88, v90, v94
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v30, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v98, v83, v81 :: v_dual_fmac_f32 v99, v80, v99
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	v_div_scale_f32 v80, s9, v25, v37, v25
	v_div_fmas_f32 v58, v58, v87, v85
	v_fma_f32 v83, -v95, v98, v86
	v_div_scale_f32 v85, null, v37, v37, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_mul_f32_e32 v84, v80, v99
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v28, v58, v37, v28
	v_fma_f32 v86, -v82, v79, 1.0
	v_div_fmas_f32 v81, v83, v81, v98
	v_fma_f32 v83, -v88, v90, v94
	v_rcp_f32_e32 v87, v85
	v_fma_f32 v88, -v97, v84, v80
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s8, v24, v37, v24
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v84, v88, v99
	v_div_fmas_f32 v83, v83, v89, v90
	v_mul_f32_e32 v58, v86, v79
	v_div_fixup_f32 v26, v81, v37, v26
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v81, -v85, v87, 1.0
	v_fma_f32 v80, -v97, v84, v80
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v88, -v82, v58, v86
	v_div_fixup_f32 v27, v83, v37, v27
	v_div_scale_f32 v83, null, v37, v37, v19
	v_fmac_f32_e32 v87, v81, v87
	v_div_scale_f32 v81, s10, v23, v37, v23
	v_div_fmas_f32 v80, v80, v99, v84
	v_fmac_f32_e32 v58, v88, v79
	v_rcp_f32_e32 v89, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v80, v37, v25
	v_fma_f32 v80, -v82, v58, v86
	v_div_scale_f32 v88, null, v37, v37, v20
	v_fma_f32 v82, -v85, v84, v81
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v26, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v58, v80, v79, v58
	v_div_scale_f32 v79, null, v37, v37, v21
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	v_fmac_f32_e32 v84, v82, v87
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s8, v19, v37, v19
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v37, v37, v22
	v_div_fixup_f32 v24, v58, v37, v24
	v_fma_f32 v81, -v85, v84, v81
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v88, v90, 1.0
	v_rcp_f32_e32 v95, v86
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v94, -v79, v82, 1.0
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v58, v90
	v_div_scale_f32 v58, s9, v20, v37, v20
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v94, null, v37, v37, v18
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_mul_f32_e32 v87, v58, v90
	v_div_scale_f32 v96, s10, v21, v37, v21
	v_fma_f32 v97, -v86, v95, 1.0
	v_rcp_f32_e32 v98, v94
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v58
	v_mul_f32_e32 v99, v96, v82
	v_fmac_f32_e32 v95, v97, v95
	v_div_scale_f32 v97, s11, v22, v37, v22
	v_div_fixup_f32 v23, v81, v37, v23
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v99, v96
	v_mul_f32_e32 v83, v97, v95
	v_fma_f32 v84, -v94, v98, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v58, -v88, v87, v58
	v_fmac_f32_e32 v99, v81, v82
	v_fma_f32 v81, -v86, v83, v97
	v_fmac_f32_e32 v98, v84, v98
	v_div_scale_f32 v84, s8, v18, v37, v18
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v79, -v79, v99, v96
	v_fmac_f32_e32 v83, v81, v95
	v_div_fmas_f32 v80, v80, v89, v85
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v98
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v85, null, v37, v37, v13
	v_div_fmas_f32 v58, v58, v90, v87
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v19, v80, v37, v19
	v_div_fmas_f32 v79, v79, v82, v99
	v_fma_f32 v82, -v86, v83, v97
	v_fma_f32 v86, -v94, v81, v84
	v_rcp_f32_e32 v87, v85
	v_div_fixup_f32 v20, v58, v37, v20
	v_div_fixup_f32 v21, v79, v37, v21
	v_div_scale_f32 v79, null, v37, v37, v14
	v_fmac_f32_e32 v81, v86, v98
	s_mov_b32 vcc_lo, s11
	v_div_scale_f32 v89, null, v37, v37, v17
	v_div_fmas_f32 v82, v82, v95, v83
	s_delay_alu instid0(VALU_DEP_3)
	v_fma_f32 v58, -v94, v81, v84
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v85, v87, 1.0
	v_rcp_f32_e32 v94, v89
	v_div_fixup_f32 v22, v82, v37, v22
	v_div_fmas_f32 v58, v58, v98, v81
	v_rcp_f32_e32 v81, v79
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v83, vcc_lo, v13, v37, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_fixup_f32 v18, v58, v37, v18
	v_div_scale_f32 v80, null, v37, v37, v15
	v_mul_f32_e32 v88, v83, v87
	v_div_scale_f32 v82, null, v37, v37, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v58, -v79, v81, 1.0
	v_rcp_f32_e32 v84, v80
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v85, v88, v83
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v98, -v89, v94, 1.0
	v_fmac_f32_e32 v81, v58, v81
	v_div_scale_f32 v58, s8, v14, v37, v14
	v_fmac_f32_e32 v88, v95, v87
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v98, v94
	v_div_scale_f32 v98, s11, v17, v37, v17
	v_mul_f32_e32 v97, v58, v81
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v90, -v80, v84, 1.0
	v_fma_f32 v96, -v82, v86, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v25, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v79, v97, v58
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v84, v90, v84
	v_div_scale_f32 v90, s9, v15, v37, v15
	v_dual_fmac_f32 v97, v95, v81 :: v_dual_fmac_f32 v86, v96, v86
	v_div_scale_f32 v96, s10, v16, v37, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mul_f32_e32 v99, v90, v84
	v_fma_f32 v58, -v79, v97, v58
	s_mov_b32 s8, 0xc1000000
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v100, v96, v86
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v30, v30, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v99, v90
	v_div_fmas_f32 v58, v58, v81, v97
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v26, v26, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v95, -v82, v100, v96
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v88, v30
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v101, v98, v94
	v_div_fixup_f32 v14, v58, v37, v14
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v58, v60
	v_rndne_f32_e32 v60, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v99, v85, v84
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v68
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v25, v25, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v100, v95, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v60, v60, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v80, v99, v90
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v90, v26
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v28, v28
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_cvt_i32_f32_e32 v60, v60
	v_cvt_i32_f32_e32 v95, v25
	.loc	1 1240 33                       ; ragged.py:1240:33
	s_mov_b32 vcc_lo, s9
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_cvt_i32_f32_e32 v64, v64
	v_and_b32_e32 v26, 15, v60
	v_and_b32_e32 v60, 15, v88
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v79, -v89, v101, v98
	v_div_fmas_f32 v80, v80, v84, v99
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v13, v83, v37, v13
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v101, v79, v94
	v_fma_f32 v79, -v82, v100, v96
	v_div_fixup_f32 v15, v80, v37, v15
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v68, v72
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v89, v101, v98
	v_div_fmas_f32 v79, v79, v86, v100
	s_mov_b32 vcc_lo, s11
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v89, v28
	v_and_b32_e32 v28, 15, v64
	v_and_b32_e32 v64, 15, v95
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v81, v81, v94, v101
	v_div_fixup_f32 v16, v79, v37, v16
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v76
	v_rndne_f32_e32 v76, v77
	v_rndne_f32_e32 v74, v74
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v17, v81, v37, v17
	.loc	1 1240 13                       ; ragged.py:1240:13
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
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v19, v19
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v48, v48, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v49, v49, s8, 0x40e00000
	v_med3_f32 v44, v44, s8, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	v_rndne_f32_e32 v36, v36
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v34, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v71, v71
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v77, v44
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v75, v78
	v_rndne_f32_e32 v61, v61
	v_rndne_f32_e32 v62, v62
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v53, v53
	v_rndne_f32_e32 v27, v27
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
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v70, v70
	v_rndne_f32_e32 v65, v65
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v57, v57
	v_rndne_f32_e32 v56, v56
	v_rndne_f32_e32 v33, v33
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v13, v13
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v29, v29
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
	v_med3_f32 v67, v67, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v72, v72, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_med3_f32 v61, v61, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v52, v52, s8, 0x40e00000
	v_med3_f32 v53, v53, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
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
	v_rndne_f32_e32 v38, v38
	v_rndne_f32_e32 v39, v39
	v_rndne_f32_e32 v24, v24
	v_rndne_f32_e32 v23, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v51, v51, s8, 0x40e00000
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v58, v58, s8, 0x40e00000
	v_med3_f32 v59, v59, s8, 0x40e00000
	v_med3_f32 v69, v69, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v65, v65, s8, 0x40e00000
	v_med3_f32 v66, v66, s8, 0x40e00000
	v_med3_f32 v57, v57, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v33, v33, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v29, v29, s8, 0x40e00000
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
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v75, v75
	v_cvt_i32_f32_e32 v61, v61
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v94, v27
	v_cvt_i32_f32_e32 v99, v20
	v_and_b32_e32 v20, 15, v50
	v_and_b32_e32 v50, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v78, 0, v73, v74
	v_and_or_b32 v6, 0x1b00, v76, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	v_med3_f32 v39, v39, s8, 0x40e00000
	v_med3_f32 v24, v24, s8, 0x40e00000
	v_med3_f32 v23, v23, s8, 0x40e00000
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v58, v58
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v69, v69
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v65, v65
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v57, v57
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v83, v33
	v_cvt_i32_f32_e32 v100, v21
	v_cvt_i32_f32_e32 v101, v22
	v_cvt_i32_f32_e32 v102, v18
	v_cvt_i32_f32_e32 v103, v13
	v_cvt_i32_f32_e32 v85, v32
	v_cvt_i32_f32_e32 v87, v29
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
	v_and_b32_e32 v29, 15, v67
	v_and_b32_e32 v30, 15, v68
	v_and_b32_e32 v32, 15, v72
	v_and_b32_e32 v33, 15, v75
	v_and_b32_e32 v41, 15, v61
	v_and_b32_e32 v42, 15, v62
	v_and_b32_e32 v45, 15, v52
	v_and_b32_e32 v46, 15, v53
	v_and_b32_e32 v61, 15, v89
	v_and_b32_e32 v62, 15, v90
	v_and_b32_e32 v63, 15, v94
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add3_u32 v7, v78, v8, v7
	v_xad_u32 v6, v6, v92, 0
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v17, 15, v43
	v_cvt_i32_f32_e32 v79, v38
	v_cvt_i32_f32_e32 v80, v39
	v_cvt_i32_f32_e32 v96, v24
	v_cvt_i32_f32_e32 v97, v23
	v_and_b32_e32 v21, 15, v51
	v_and_b32_e32 v22, 15, v54
	v_and_b32_e32 v23, 15, v55
	v_and_b32_e32 v24, 15, v58
	v_and_b32_e32 v25, 15, v59
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
	ds_store_b128 v7, v[13:16]
	ds_store_b128 v7, v[21:24] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[13:16], v6
	ds_load_b128 v[21:24], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[29:32]
	ds_store_b128 v7, v[37:40] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[29:32], v6
	ds_load_b128 v[37:40], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[45:48]
	ds_store_b128 v7, v[53:56] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v6
	ds_load_b128 v[53:56], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[61:64]
	ds_store_b128 v7, v[69:72] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[61:64], v6
	ds_load_b128 v[69:72], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[17:20]
	ds_store_b128 v7, v[25:28] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[17:20], v6
	ds_load_b128 v[25:28], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[33:36]
	ds_store_b128 v7, v[41:44] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[33:36], v6
	ds_load_b128 v[41:44], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v79
	v_and_b32_e32 v52, 15, v80
	v_and_b32_e32 v57, 15, v85
	v_and_b32_e32 v58, 15, v86
	v_and_b32_e32 v59, 15, v87
	v_and_b32_e32 v65, 15, v96
	v_and_b32_e32 v66, 15, v97
	v_and_b32_e32 v67, 15, v98
	v_and_b32_e32 v68, 15, v99
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[49:52]
	ds_store_b128 v7, v[57:60] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[49:52], v6
	ds_load_b128 v[57:60], v6 offset:1024
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
	v_lshlrev_b32_e32 v47, 3, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[65:68]
	ds_store_b128 v7, v[73:76] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[65:68], v6
	ds_load_b128 v[73:76], v6 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s20, 31
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v7, v21, 4, v13
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_lshl_or_b32 v6, s28, 7, v47
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v21, v23, 4, v15
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_add_i32 s8, s20, s8
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
	s_ashr_i32 s2, s20, 31
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
	s_add_i32 s0, s20, s0
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
	v_cmp_le_i64_e32 vcc_lo, s[22:23], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[24:25], v[1:2]
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	s_and_b32 s13, s19, 0xffff
	s_mov_b32 s12, s18
	v_cmp_eq_u32_e64 s1, 0, v0
	v_add_lshl_u32 v0, v4, s28, 1
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
.Ltmp60:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_vgpr 127
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 127
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 29
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14272
; TotalNumSgprs: 31
; NumVgprs: 127
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 31
; NumVGPRsForWavesPerEU: 127
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
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
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
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_relu2_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     127
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
