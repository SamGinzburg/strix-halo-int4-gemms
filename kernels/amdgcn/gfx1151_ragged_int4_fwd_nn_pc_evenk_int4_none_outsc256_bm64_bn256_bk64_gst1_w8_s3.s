	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
	v_and_b32_e32 v91, 15, v0
	v_lshlrev_b32_e32 v95, 1, v0
	v_lshlrev_b32_e32 v96, 4, v0
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
	s_sub_i32 s33, s15, s14
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
	s_load_b64 s[22:23], s[4:5], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s2, s8, s16
	s_addc_u32 s3, s9, s17
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s4, s10, s16
	s_addc_u32 s5, s11, s17
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_gt_i32 s35, 0
	s_mov_b32 s6, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_waitcnt lgkmcnt(0)
	v_dual_mov_b32 v6, s12 :: v_dual_lshlrev_b32 v7, 1, v0
.Ltmp3:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v41, 4, v0
	v_mov_b32_e32 v5, s22
	s_branch .LBB0_3
.Ltmp4:
.LBB0_2:
	.loc	2 0 16 is_stmt 0                ; standard.py:0:16
	s_mov_b32 s6, -1
                                        ; implicit-def: $vgpr7
                                        ; implicit-def: $vgpr41
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr6
.LBB0_3:                                ; %Flow
	s_clause 0x1
	s_load_b128 s[24:27], s[0:1], 0x40
	s_load_b128 s[8:11], s[0:1], 0x10
	s_load_b64 s[36:37], s[2:3], 0x0
	s_load_b64 s[38:39], s[4:5], 0x0
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
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v66, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v73, 0 :: v_dual_mov_b32 v76, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v35, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v33, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v89, 0
	v_mov_b32_e32 v98, 0
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
	v_add_co_u32 v2, s0, s22, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v3, null, s23, 0, s0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshlrev_b32_e32 v5, 3, v94
	v_lshrrev_b32_e32 v7, 1, v0
	v_lshlrev_b32_e32 v9, 5, v91
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[2:3]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[2:3]
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	v_mad_u64_u32 v[2:3], null, s35, s12, v[4:5]
	v_and_b32_e32 v7, 24, v7
	v_xor_b32_e32 v3, v95, v6
	v_add_nc_u32_e32 v6, s22, v6
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_lshl_b32 s0, s15, 8
	v_mov_b32_e32 v21, v1
	v_mul_lo_u32 v2, s34, v2
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
	v_add_nc_u32_e32 v17, s34, v2
	v_subrev_nc_u32_e32 v97, s0, v2
	v_mov_b32_e32 v2, v1
	v_xor_b32_e32 v10, v5, v4
	v_mad_u64_u32 v[89:90], null, v6, s35, v[5:6]
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
	s_lshl_b32 s13, s34, 5
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
	s_cmp_lt_i32 s14, s35
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
	v_cvt_f32_i32_e32 v80, v1
	v_cvt_f32_i32_e32 v78, v2
	v_cvt_f32_i32_e32 v74, v3
	v_cvt_f32_i32_e32 v76, v4
	v_cvt_f32_i32_e32 v84, v5
	v_cvt_f32_i32_e32 v83, v6
	v_cvt_f32_i32_e32 v82, v7
	v_cvt_f32_i32_e32 v81, v8
	v_cvt_f32_i32_e32 v89, v9
	v_cvt_f32_i32_e32 v73, v10
	v_cvt_f32_i32_e32 v71, v11
	v_cvt_f32_i32_e32 v70, v12
	v_cvt_f32_i32_e32 v69, v13
	v_cvt_f32_i32_e32 v98, v14
	v_cvt_f32_i32_e32 v97, v15
	v_cvt_f32_i32_e32 v90, v16
	v_cvt_f32_i32_e32 v68, v17
	v_cvt_f32_i32_e32 v67, v18
	v_cvt_f32_i32_e32 v65, v19
	v_cvt_f32_i32_e32 v66, v20
	v_cvt_f32_i32_e32 v79, v21
	v_cvt_f32_i32_e32 v77, v22
	v_cvt_f32_i32_e32 v75, v23
	v_cvt_f32_i32_e32 v72, v24
	v_cvt_f32_i32_e32 v85, v25
	v_cvt_f32_i32_e32 v24, v26
	v_cvt_f32_i32_e32 v23, v27
	v_cvt_f32_i32_e32 v21, v28
	v_cvt_f32_i32_e32 v19, v29
	v_cvt_f32_i32_e32 v88, v30
	v_cvt_f32_i32_e32 v87, v31
	v_cvt_f32_i32_e32 v86, v32
	v_cvt_f32_i32_e32 v22, v33
	v_cvt_f32_i32_e32 v20, v34
	v_cvt_f32_i32_e32 v17, v35
	v_cvt_f32_i32_e32 v18, v36
	v_cvt_f32_i32_e32 v28, v37
	v_cvt_f32_i32_e32 v27, v38
	v_cvt_f32_i32_e32 v26, v39
	v_cvt_f32_i32_e32 v25, v40
	v_cvt_f32_i32_e32 v33, v41
	v_cvt_f32_i32_e32 v16, v42
	v_cvt_f32_i32_e32 v15, v43
	v_cvt_f32_i32_e32 v13, v44
	v_cvt_f32_i32_e32 v11, v45
	v_cvt_f32_i32_e32 v36, v46
	v_cvt_f32_i32_e32 v35, v47
	v_cvt_f32_i32_e32 v34, v48
	v_cvt_f32_i32_e32 v14, v49
	v_cvt_f32_i32_e32 v12, v50
	v_cvt_f32_i32_e32 v9, v51
	v_cvt_f32_i32_e32 v10, v52
	v_cvt_f32_i32_e32 v32, v53
	v_cvt_f32_i32_e32 v31, v54
	v_cvt_f32_i32_e32 v30, v55
	v_cvt_f32_i32_e32 v29, v56
	v_cvt_f32_i32_e32 v37, v57
	v_cvt_f32_i32_e32 v4, v58
	v_cvt_f32_i32_e32 v3, v59
	v_cvt_f32_i32_e32 v2, v60
	v_cvt_f32_i32_e32 v1, v61
	v_cvt_f32_i32_e32 v40, v62
	v_cvt_f32_i32_e32 v39, v63
	v_cvt_f32_i32_e32 v38, v64
	v_dual_mov_b32 v6, s12 :: v_dual_mov_b32 v5, s22
	v_mov_b32_e32 v7, v95
	v_mov_b32_e32 v41, v96
.LBB0_7:                                ; %._crit_edge
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v8, 48, v91
	v_or_b32_e32 v45, 16, v91
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_mul_lo_u32 v6, s34, v6
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s29, s9, 0xffff
	s_mov_b32 s31, 0x31027000
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v42, s0, s22, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v43, null, s23, 0, s0
	.loc	1 1044 32 is_stmt 0             ; ragged.py:1044:32
	v_or_b32_e32 v8, 32, v91
	s_mov_b32 s30, 0x7ffffffe
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	s_mov_b32 s28, s8
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[36:37], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[38:39], v[42:43]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v43, s1, s22, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_co_ci_u32_e64 v44, null, s23, 0, s1
	v_add_co_u32 v45, s1, s22, v45
	v_add_co_ci_u32_e64 v46, null, s23, 0, s1
	v_add_co_u32 v47, s1, s22, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_co_ci_u32_e64 v48, null, s23, 0, s1
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
	s_and_b32 s29, s11, 0xffff
	s_mov_b32 s28, s10
.Ltmp5:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v50, v94, 9, 0
.Ltmp6:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v48, v92, 2, 0
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_add_lshl_u32 v6, v8, v6, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v49, v92, 1, 0
	s_mov_b32 s0, 0x76543210
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
	v_and_b32_e32 v96, 4, v0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp8:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v53, v80, v45 :: v_dual_lshlrev_b32 v6, 5, v94
	v_dual_mul_f32 v54, v78, v45 :: v_dual_and_b32 v95, 0x80, v0
	v_mul_f32_e32 v59, v84, v45
.Ltmp9:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v101, v96, 2, v50
.Ltmp10:
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v50, v97, v45 :: v_dual_and_b32 v51, 32, v7
	v_mul_f32_e32 v60, v83, v45
	v_dual_mul_f32 v55, v74, v45 :: v_dual_and_b32 v8, 0x60, v0
	v_dual_mul_f32 v52, v76, v45 :: v_dual_and_b32 v99, 8, v0
	v_dual_mul_f32 v56, v82, v45 :: v_dual_lshlrev_b32 v7, 1, v95
.Ltmp11:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_or_b32 v103, 0x680, v41, v6
.Ltmp12:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_add3_u32 v41, v48, v51, v47
	.loc	1 1115 17                       ; ragged.py:1115:17
	s_waitcnt vmcnt(2)
	v_dual_mul_f32 v64, v73, v45 :: v_dual_lshlrev_b32 v43, 16, v43
	s_waitcnt vmcnt(1)
	v_dual_mul_f32 v71, v71, v45 :: v_dual_lshlrev_b32 v42, 16, v42
	v_mul_f32_e32 v47, v89, v45
	v_mul_f32_e32 v48, v98, v45
	v_mul_f32_e32 v51, v90, v45
	v_mul_f32_e32 v57, v81, v45
	v_dual_mul_f32 v61, v70, v45 :: v_dual_mul_f32 v70, v87, v44
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v62, v69, v45 :: v_dual_lshlrev_b32 v45, 16, v46
	v_mul_f32_e32 v46, v85, v44
	v_dual_mul_f32 v69, v88, v44 :: v_dual_mul_f32 v74, v35, v43
	v_dual_mul_f32 v73, v86, v44 :: v_dual_mul_f32 v36, v36, v43
	v_dual_mul_f32 v33, v33, v43 :: v_dual_mul_f32 v40, v40, v42
	v_mul_f32_e32 v85, v67, v44
	v_dual_mul_f32 v39, v39, v42 :: v_dual_mul_f32 v76, v68, v44
	v_dual_mul_f32 v38, v38, v42 :: v_dual_mul_f32 v65, v65, v44
	v_dual_mul_f32 v86, v66, v44 :: v_dual_mul_f32 v17, v17, v43
	v_dual_mul_f32 v87, v79, v44 :: v_dual_mul_f32 v98, v20, v43
	v_dual_mul_f32 v88, v77, v44 :: v_dual_mul_f32 v97, v22, v43
	v_dual_mul_f32 v89, v75, v44 :: v_dual_mul_f32 v104, v18, v43
	v_dual_mul_f32 v72, v72, v44 :: v_dual_mul_f32 v27, v27, v43
	v_dual_mul_f32 v24, v24, v44 :: v_dual_mul_f32 v25, v25, v43
	v_dual_mul_f32 v23, v23, v44 :: v_dual_mul_f32 v28, v28, v43
	v_dual_mul_f32 v90, v21, v44 :: v_dual_mul_f32 v15, v15, v43
	v_dual_mul_f32 v44, v19, v44 :: v_dual_mul_f32 v105, v13, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v41, v45
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[77:80], v49 offset:512
	ds_load_b128 v[19:22], v49 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v112, v4, v42
	v_mul_f32_e32 v113, v3, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[81:84], v49
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v114, v2, v42
	v_mul_f32_e32 v115, v1, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[1:4], v49 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v34, v34, v43 :: v_dual_mul_f32 v37, v37, v42
	v_dual_mul_f32 v26, v26, v43 :: v_dual_mul_f32 v107, v12, v42
	v_dual_mul_f32 v16, v16, v43 :: v_dual_mul_f32 v9, v9, v42
	v_dual_mul_f32 v11, v11, v43 :: v_dual_mul_f32 v106, v14, v42
	v_mul_f32_e32 v10, v10, v42
	v_mul_f32_e32 v108, v32, v42
	v_mul_f32_e32 v109, v31, v42
	v_mul_f32_e32 v110, v30, v42
	s_waitcnt lgkmcnt(3)
	v_dual_mul_f32 v111, v29, v42 :: v_dual_mul_f32 v58, v47, v77
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(2)
	v_mul_f32_e32 v63, v48, v20
	v_dual_mul_f32 v67, v50, v21 :: v_dual_mul_f32 v68, v51, v22
	v_mul_f32_e32 v29, v74, v21
	v_dual_mul_f32 v66, v46, v77 :: v_dual_mul_f32 v47, v69, v20
	v_dual_mul_f32 v46, v70, v21 :: v_dual_mul_f32 v45, v73, v22
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v52, v52, v84 :: v_dual_mul_f32 v35, v33, v77
	v_dual_mul_f32 v18, v37, v77 :: v_dual_mul_f32 v51, v55, v83
	v_dual_mul_f32 v14, v38, v22 :: v_dual_mul_f32 v49, v53, v81
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v50, v54, v82 :: v_dual_mul_f32 v57, v57, v4
	v_dual_mul_f32 v56, v56, v3 :: v_dual_mul_f32 v53, v59, v1
	v_dual_mul_f32 v55, v60, v2 :: v_dual_mul_f32 v62, v62, v19
	v_dual_mul_f32 v61, v61, v80 :: v_dual_mul_f32 v60, v71, v79
	v_dual_mul_f32 v59, v64, v78 :: v_dual_mul_f32 v74, v65, v83
	v_dual_mul_f32 v75, v86, v84 :: v_dual_mul_f32 v70, v76, v81
	v_dual_mul_f32 v71, v85, v82 :: v_dual_mul_f32 v72, v72, v4
	v_dual_mul_f32 v73, v89, v3 :: v_dual_mul_f32 v76, v88, v2
	v_dual_mul_f32 v77, v87, v1 :: v_dual_mul_f32 v54, v44, v19
	v_dual_mul_f32 v64, v90, v80 :: v_dual_mul_f32 v65, v23, v79
	v_dual_mul_f32 v69, v24, v78 :: v_dual_mul_f32 v44, v97, v81
	v_dual_mul_f32 v31, v36, v20 :: v_dual_mul_f32 v30, v34, v22
	v_dual_mul_f32 v13, v39, v21 :: v_dual_mul_f32 v12, v40, v20
	v_dual_mul_f32 v41, v17, v83 :: v_dual_mul_f32 v42, v104, v84
	v_dual_mul_f32 v43, v98, v82 :: v_dual_mul_f32 v40, v28, v1
	v_dual_mul_f32 v37, v25, v4 :: v_dual_mul_f32 v38, v26, v3
	v_dual_mul_f32 v39, v27, v2 :: v_dual_mul_f32 v26, v9, v83
	v_dual_mul_f32 v32, v11, v19 :: v_dual_mul_f32 v33, v105, v80
	v_dual_mul_f32 v34, v15, v79 :: v_dual_mul_f32 v25, v10, v84
	v_dual_mul_f32 v36, v16, v78 :: v_dual_mul_f32 v21, v110, v3
	v_dual_mul_f32 v20, v111, v4 :: v_dual_mul_f32 v23, v109, v2
	v_dual_mul_f32 v24, v108, v1 :: v_dual_mul_f32 v15, v115, v19
	v_mul_f32_e32 v22, v112, v78
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v49|, |v50|
	v_max3_f32 v2, |v52|, |v53|, |v55|
	v_max3_f32 v4, |v59|, |v60|, |v61|
	v_max3_f32 v9, |v62|, |v63|, |v67|
	v_max_f32_e64 v10, |v70|, |v71|
	v_max3_f32 v11, |v75|, |v77|, |v76|
	v_max3_f32 v48, |v69|, |v65|, |v64|
	v_max3_f32 v78, |v54|, |v47|, |v46|
.Ltmp14:
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v27, v107, v82 :: v_dual_mul_f32 v28, v106, v81
	v_dual_mul_f32 v16, v114, v80 :: v_dual_mul_f32 v19, v113, v79
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v3, |v56|, |v57|, |v58|
	v_max3_f32 v17, |v73|, |v72|, |v66|
	v_max_f32_e64 v79, |v44|, |v43|
	v_max3_f32 v80, |v42|, |v40|, |v39|
	v_max3_f32 v82, |v36|, |v34|, |v33|
	v_max3_f32 v83, |v32|, |v31|, |v29|
	v_max3_f32 v1, v1, |v51|, v2
	v_max3_f32 v2, v4, v9, |v68|
	v_max3_f32 v4, v10, |v74|, v11
	v_max3_f32 v9, v48, v78, |v45|
	v_max3_f32 v81, |v38|, |v37|, |v35|
	v_max3_f32 v10, v79, |v41|, v80
	v_max3_f32 v11, v82, v83, |v30|
	v_max3_f32 v1, v1, v3, v2
	v_max3_f32 v2, v4, v17, v9
	v_max_f32_e64 v84, |v28|, |v27|
	v_max3_f32 v85, |v25|, |v24|, |v23|
	v_max3_f32 v3, v10, v81, v11
	v_max3_f32 v88, |v15|, |v12|, |v13|
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v11, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v86, |v21|, |v20|, |v18|
	v_max3_f32 v48, v84, |v26|, v85
.Ltmp18:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v10, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v17, v3, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	v_max3_f32 v87, |v22|, |v19|, |v16|
.Ltmp20:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v100, v6, v8
	v_lshrrev_b32_e32 v102, 3, v95
	v_lshl_add_u32 v79, v96, 6, 0
	v_lshl_add_u32 v9, v99, 4, v101
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v78, v87, v88, |v14|
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v17, v17, v17
	v_max_f32_e32 v2, v2, v11
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp22:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v9, v9, v7, v100
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v4, v48, v86, v78
.Ltmp24:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_xor_b32_e32 v78, v103, v8
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v10
	v_max_f32_e32 v3, v3, v17
.Ltmp26:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	v_permlanex16_b32 v48, v4, s0, 0xfedcba98 op_sel:[1,0]
	v_add3_u32 v10, v79, v102, v78
	s_barrier
	v_add_nc_u32_e32 v80, 0, v95
	v_lshrrev_b32_e32 v78, 1, v8
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
.Ltmp28:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshlrev_b32_e32 v81, 5, v96
.Ltmp29:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v8, v93, v8
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp30:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v4, v4, v48
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshl_add_u32 v48, v94, 4, 0
	ds_store_b128 v9, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v10
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v9, v1
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_mov_b32 v10, v2
	v_dual_max_f32 v2, v2, v2 :: v_dual_mov_b32 v11, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp33:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp34:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v4, v4
.Ltmp35:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v4, v4 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp36:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v3, v3, v3 :: v_dual_max_f32 v10, v10, v10
	v_dual_max_f32 v9, v9, v9 :: v_dual_max_f32 v4, v4, v4
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v11, v11, v11 :: v_dual_max_f32 v2, v2, v10
	v_max_f32_e32 v1, v1, v9
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v17, v4 :: v_dual_max_f32 v3, v3, v11
.Ltmp37:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v11, v2 :: v_dual_mov_b32 v10, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp38:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
.Ltmp39:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v9, v4 :: v_dual_max_f32 v10, v10, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp40:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v2, v11
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp42:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v1, v1, v10
	v_max_f32_e32 v9, v9, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_max_f32 v4, v4, v9 :: v_dual_mov_b32 v17, v3
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v10, v4 :: v_dual_lshlrev_b32 v9, 3, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_add3_u32 v78, v80, v78, v9
	v_add3_u32 v9, v48, v81, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp44:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v17, v17, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_dual_max_f32 v4, v4, v10 :: v_dual_max_f32 v3, v3, v17
.Ltmp45:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v17, v2
	v_mov_b32_e32 v79, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v17, v17 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v79, v79 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v17, v17, v17
	v_dual_max_f32 v79, v79, v79 :: v_dual_max_f32 v2, v2, v17
.Ltmp47:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v11, v1
.Ltmp48:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v17.h, 0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v3, v3, v79
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v11, v11 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp51:
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v80.h, v17.h
	v_mov_b16_e32 v81.h, v17.h
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v11, v11, v11
	s_delay_alu instid0(VALU_DEP_1)
	v_max_f32_e32 v1, v1, v11
.Ltmp53:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	ds_store_b128 v78, v[1:4]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[1:4], v9
.Ltmp54:
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v9, 4, v92
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v48, 48, v9
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v10, s0, s22, v9
	v_add_co_ci_u32_e64 v11, null, s23, 0, s0
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
	v_dual_max_f32 v82, v1, v1 :: v_dual_max_f32 v83, v2, v2
	v_max_f32_e32 v3, v3, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v1, s0, s22, v48
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v48, 0x2b8cbccc, v82
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max_f32_e32 v82, 0x2b8cbccc, v83
	v_max_f32_e32 v83, 0x2b8cbccc, v3
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v2, null, s23, 0, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v85, null, 0x40e00000, 0x40e00000, v48
	v_div_scale_f32 v86, null, 0x40e00000, 0x40e00000, v83
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s0, s22, v78
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v89, v85
	v_rcp_f32_e32 v90, v86
	v_div_scale_f32 v96, vcc_lo, v48, 0x40e00000, v48
	v_max_f32_e32 v4, v4, v4
	v_div_scale_f32 v97, s1, v83, 0x40e00000, v83
	v_div_scale_f32 v87, null, 0x40e00000, 0x40e00000, v82
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_max_f32_e32 v84, 0x2b8cbccc, v4
	v_fma_f32 v78, -v85, v89, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v99, -v86, v90, 1.0
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_ci_u32_e64 v4, null, s23, 0, s0
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_scale_f32 v88, null, 0x40e00000, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v89, v78, v89 :: v_dual_fmac_f32 v90, v99, v90
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v78, s0, s22, v79
	v_add_co_ci_u32_e64 v79, null, s23, 0, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_mul_f32_e32 v99, v96, v89
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s0, s[36:37], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v94, v87
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[36:37], v[78:79]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[38:39], v[78:79]
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_fma_f32 v104, -v85, v99, v96
	v_rcp_f32_e32 v95, v88
	v_div_scale_f32 v98, s2, v82, 0x40e00000, v82
	v_div_scale_f32 v102, s3, v84, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v99, v104, v89
	v_fma_f32 v100, -v87, v94, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v10, -v85, v99, v96
	v_fma_f32 v101, -v88, v95, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v94, v100, v94
	v_mul_f32_e32 v100, v97, v90
	v_div_fmas_f32 v10, v10, v89, v99
	s_mov_b32 vcc_lo, s1
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s1, s[38:39], v[1:2]
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fmac_f32_e32 v95, v101, v95
	v_fma_f32 v105, -v86, v100, v97
	v_div_fixup_f32 v10, v10, 0x40e00000, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v100, v105, v90
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v80.l, v10.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v11, -v86, v100, v97
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v1, 1, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v11, v11, v90, v100
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v10, v10, v1, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s2
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s2, s[36:37], v[3:4]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v79, 0xffff0000, v10
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v108, null, v79, v79, v68
	v_div_scale_f32 v105, null, v79, v79, v63
	v_div_scale_f32 v90, null, v79, v79, v57
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v124, v108
	v_rcp_f32_e32 v122, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v116, v90
	v_fma_f32 v139, -v108, v124, 1.0
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_mul_f32_e32 v101, v98, v94
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v137, -v105, v122, 1.0
	v_fma_f32 v131, -v90, v116, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v124, v139, v124
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v106, -v87, v101, v98
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v122, v137, v122
	v_dual_fmac_f32 v116, v131, v116 :: v_dual_fmac_f32 v101, v106, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v85, -v87, v101, v98
	v_div_fmas_f32 v85, v85, v94, v101
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v101, null, v79, v79, v61
	v_div_scale_f32 v94, s14, v57, v79, v57
	.loc	1 1238 24                       ; ragged.py:1238:24
	s_mov_b32 vcc_lo, s3
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v120, v101
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v2, v85, 0x40e00000, v82
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[38:39], v[3:4]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v81.l, v2.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v135, -v101, v120, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_fmac_f32 v120, v135, v120 :: v_dual_mul_f32 v103, v102, v95
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_fma_f32 v107, -v88, v103, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, v107, v95
	v_fma_f32 v86, -v88, v103, v102
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v102, s18, v61, v79, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fmas_f32 v48, v86, v95, v103
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v103, null, v79, v79, v62
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v48, v48, 0x40e00000, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v121, v103
	v_fma_f32 v136, -v103, v121, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v121, v136, v121 :: v_dual_mul_f32 v136, v102, v120
	v_div_scale_f32 v86, null, v79, v79, v55
	v_div_scale_f32 v97, null, v79, v79, v59
	v_div_scale_f32 v99, null, v79, v79, v60
	v_rcp_f32_e32 v114, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v118, v97
	v_div_scale_f32 v98, s16, v59, v79, v59
	v_rcp_f32_e32 v119, v99
	v_div_scale_f32 v82, null, v79, v79, v52
	v_div_scale_f32 v107, null, v79, v79, v67
	v_div_scale_f32 v84, null, v79, v79, v53
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v129, -v86, v114, 1.0
	v_fma_f32 v133, -v97, v118, 1.0
	v_div_scale_f32 v88, null, v79, v79, v56
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v134, -v99, v119, 1.0
	v_fmac_f32_e32 v114, v129, v114
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v11, v11, 0x40e00000, v83
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v118, v133, v118 :: v_dual_and_b32 v3, 1, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v119, v134, v119
	v_rcp_f32_e32 v112, v82
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v17.l, v11.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v134, v98, v118
	v_rcp_f32_e32 v123, v107
	v_div_scale_f32 v106, s20, v63, v79, v63
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v80, 1, v17
	v_mov_b16_e32 v17.l, v48.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v113, v84
	v_rcp_f32_e32 v115, v88
	v_div_scale_f32 v78, s8, v50, v79, v50
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v4, 1, v17
	v_add3_u32 v1, v11, v80, 0x7fff
	v_add3_u32 v11, v2, v3, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v80, null, v79, v79, v51
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v2, v48, v4, 0x7fff
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v48, null, v79, v79, v50
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v111, v80
	v_div_scale_f32 v3, null, v79, v79, v49
	v_rcp_f32_e32 v110, v48
	v_div_scale_f32 v81, s9, v51, v79, v51
	v_div_scale_f32 v104, s19, v62, v79, v62
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_rcp_f32_e32 v109, v3
	v_fma_f32 v127, -v82, v112, 1.0
	v_fma_f32 v126, -v80, v111, 1.0
	v_fma_f32 v138, -v107, v123, 1.0
	v_mul_f32_e32 v140, v106, v122
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v125, -v48, v110, 1.0
	v_div_scale_f32 v83, s10, v52, v79, v52
	v_fmac_f32_e32 v111, v126, v111
	v_div_scale_f32 v87, s12, v55, v79, v55
	v_fmac_f32_e32 v110, v125, v110
	v_fma_f32 v128, -v84, v113, 1.0
	v_fma_f32 v130, -v88, v115, 1.0
	v_dual_fmac_f32 v112, v127, v112 :: v_dual_fmac_f32 v123, v138, v123
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v126, v78, v110
	v_dual_mul_f32 v138, v104, v121 :: v_dual_mul_f32 v127, v81, v111
	v_fma_f32 v17, -v3, v109, 1.0
	v_div_scale_f32 v4, vcc_lo, v49, v79, v49
	v_fma_f32 v137, -v48, v126, v78
	v_dual_fmac_f32 v113, v128, v113 :: v_dual_mul_f32 v128, v83, v112
	v_dual_fmac_f32 v115, v130, v115 :: v_dual_mul_f32 v130, v87, v114
	v_fma_f32 v139, -v80, v127, v81
	v_div_scale_f32 v95, null, v79, v79, v58
	v_div_scale_f32 v89, s13, v56, v79, v56
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v127, v139, v111
	v_fma_f32 v139, -v86, v130, v87
	v_fmac_f32_e32 v109, v17, v109
	v_rcp_f32_e32 v117, v95
	v_div_scale_f32 v85, s11, v53, v79, v53
	v_dual_fmac_f32 v130, v139, v114 :: v_dual_mul_f32 v125, v4, v109
	v_fmac_f32_e32 v126, v137, v110
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v129, v85, v113
	v_div_scale_f32 v100, s17, v60, v79, v60
	v_fma_f32 v17, -v3, v125, v4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v132, -v95, v117, 1.0
	v_fma_f32 v137, -v84, v129, v85
	v_div_scale_f32 v96, s15, v58, v79, v58
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v125, v17, v109
	v_fma_f32 v17, -v82, v128, v83
	v_dual_fmac_f32 v117, v132, v117 :: v_dual_mul_f32 v132, v94, v116
	v_fmac_f32_e32 v129, v137, v113
	v_fma_f32 v80, -v80, v127, v81
	v_fmac_f32_e32 v128, v17, v112
	v_mul_f32_e32 v131, v89, v115
	v_fma_f32 v137, -v90, v132, v94
	v_fma_f32 v84, -v84, v129, v85
	v_fma_f32 v86, -v86, v130, v87
	v_fma_f32 v82, -v82, v128, v83
	v_fma_f32 v17, -v88, v131, v89
	v_dual_fmac_f32 v132, v137, v116 :: v_dual_and_b32 v81, 0xffff0000, v11
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v131, v17, v115
	v_fma_f32 v17, -v97, v134, v98
	v_div_scale_f32 v87, null, v81, v81, v70
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v88, -v88, v131, v89
	v_fmac_f32_e32 v134, v17, v118
	v_fma_f32 v17, -v103, v138, v104
	v_mul_f32_e32 v135, v100, v119
	v_fma_f32 v89, -v90, v132, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v138, v17, v121
	v_fma_f32 v137, -v99, v135, v100
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_and_b32_e32 v17, 63, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v135, v137, v119
	v_fma_f32 v137, -v105, v140, v106
	v_fmac_f32_e32 v140, v137, v122
	v_fma_f32 v137, -v3, v125, v4
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v3, s21, s22, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v4, null, s23, 0, s21
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v83, s21, v67, v79, v67
	v_mul_f32_e32 v133, v96, v117
	v_div_scale_f32 v85, s22, v68, v79, v68
	v_fma_f32 v139, -v95, v133, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fmac_f32_e32 v133, v139, v117
	v_fma_f32 v139, -v101, v136, v102
	v_fma_f32 v94, -v95, v133, v96
	s_delay_alu instid0(VALU_DEP_2)
	v_fmac_f32_e32 v136, v139, v120
	v_mul_f32_e32 v90, v83, v123
	v_fma_f32 v96, -v97, v134, v98
	v_fma_f32 v98, -v99, v135, v100
	v_fma_f32 v139, -v48, v126, v78
	v_fma_f32 v100, -v101, v136, v102
	v_fma_f32 v99, -v107, v90, v83
	v_fma_f32 v101, -v103, v138, v104
	v_rcp_f32_e32 v95, v87
	v_mul_f32_e32 v97, v85, v124
	v_fma_f32 v102, -v105, v140, v106
	v_fmac_f32_e32 v90, v99, v123
	v_div_fmas_f32 v103, v137, v109, v125
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v78, 0xffff0000, v1
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v104, v139, v110, v126
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v49, v103, v79, v49
	v_div_fmas_f32 v80, v80, v111, v127
	s_mov_b32 vcc_lo, s10
	v_div_fixup_f32 v50, v104, v79, v50
	v_div_fmas_f32 v82, v82, v112, v128
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v51, v80, v79, v51
	v_div_fmas_f32 v84, v84, v113, v129
	s_mov_b32 vcc_lo, s12
	v_div_fixup_f32 v52, v82, v79, v52
	v_div_fmas_f32 v80, v86, v114, v130
	s_mov_b32 vcc_lo, s13
	v_div_fixup_f32 v53, v84, v79, v53
	v_div_fmas_f32 v82, v88, v115, v131
	s_mov_b32 vcc_lo, s14
	v_div_fixup_f32 v55, v80, v79, v55
	v_div_fmas_f32 v84, v89, v116, v132
	s_mov_b32 vcc_lo, s15
	v_div_fixup_f32 v56, v82, v79, v56
	v_div_fmas_f32 v80, v94, v117, v133
	s_mov_b32 vcc_lo, s16
	v_div_fixup_f32 v57, v84, v79, v57
	v_div_fmas_f32 v82, v96, v118, v134
	s_mov_b32 vcc_lo, s17
	v_div_fixup_f32 v58, v80, v79, v58
	v_div_fmas_f32 v84, v98, v119, v135
	s_mov_b32 vcc_lo, s18
	v_div_fixup_f32 v59, v82, v79, v59
	v_div_fmas_f32 v80, v100, v120, v136
	s_mov_b32 vcc_lo, s19
	v_div_fixup_f32 v60, v84, v79, v60
	v_div_fmas_f32 v82, v101, v121, v138
	s_mov_b32 vcc_lo, s20
	v_div_fixup_f32 v61, v80, v79, v61
	v_div_scale_f32 v80, null, v81, v81, v71
	v_div_fmas_f32 v84, v102, v122, v140
	v_fma_f32 v88, -v108, v97, v85
	v_fma_f32 v89, -v87, v95, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v86, v80
	v_div_fixup_f32 v62, v82, v79, v62
	v_div_fixup_f32 v63, v84, v79, v63
	v_fma_f32 v82, -v107, v90, v83
	v_fmac_f32_e32 v97, v88, v124
	v_div_scale_f32 v88, null, v81, v81, v74
	v_fmac_f32_e32 v95, v89, v95
	v_div_scale_f32 v83, s8, v70, v81, v70
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v84, -v80, v86, 1.0
	s_mov_b32 vcc_lo, s21
	v_fma_f32 v85, -v108, v97, v85
	v_div_fmas_f32 v82, v82, v123, v90
	v_div_scale_f32 v90, s9, v71, v81, v71
	v_fmac_f32_e32 v86, v84, v86
	v_rcp_f32_e32 v84, v88
	v_div_scale_f32 v94, null, v81, v81, v75
	v_mul_f32_e32 v89, v83, v95
	s_mov_b32 vcc_lo, s22
	v_div_fixup_f32 v67, v82, v79, v67
	v_div_fmas_f32 v85, v85, v124, v97
	v_mul_f32_e32 v97, v90, v86
	v_rcp_f32_e32 v99, v94
	v_fma_f32 v96, -v87, v89, v83
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v98, -v88, v84, 1.0
	v_div_fixup_f32 v68, v85, v79, v68
	v_fma_f32 v79, -v80, v97, v90
	v_div_scale_f32 v82, s10, v74, v81, v74
	v_dual_fmac_f32 v89, v96, v95 :: v_dual_fmac_f32 v84, v98, v84
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fmac_f32_e32 v97, v79, v86
	v_fma_f32 v96, -v94, v99, 1.0
	v_div_scale_f32 v98, null, v81, v81, v76
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v87, v89, v83
	v_mul_f32_e32 v79, v82, v84
	v_fmac_f32_e32 v99, v96, v99
	v_div_scale_f32 v96, s11, v75, v81, v75
	v_fma_f32 v80, -v80, v97, v90
	s_mov_b32 vcc_lo, s8
	.loc	1 1240 39                       ; ragged.py:1240:39
	v_and_b32_e32 v48, 0xffff0000, v2
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v95, v89
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v89, -v88, v79, v82
	v_mul_f32_e32 v90, v96, v99
	v_div_fmas_f32 v80, v80, v86, v97
	v_rcp_f32_e32 v86, v98
	v_div_fixup_f32 v70, v83, v81, v70
	v_fmac_f32_e32 v79, v89, v84
	v_fma_f32 v89, -v94, v90, v96
	v_div_fixup_f32 v71, v80, v81, v71
	s_mov_b32 vcc_lo, s10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v88, v79, v82
	v_fmac_f32_e32 v90, v89, v99
	v_div_scale_f32 v89, s9, v76, v81, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v83, -v98, v86, 1.0
	v_div_fmas_f32 v79, v80, v84, v79
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v80, -v94, v90, v96
	s_mov_b32 vcc_lo, s11
	v_fmac_f32_e32 v86, v83, v86
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v80, v80, v99, v90
	v_mul_f32_e32 v90, v89, v86
	v_div_scale_f32 v85, null, v81, v81, v77
	v_div_scale_f32 v88, null, v81, v81, v73
	v_div_scale_f32 v94, null, v81, v81, v72
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v87, v85
	v_rcp_f32_e32 v83, v88
	v_div_fixup_f32 v74, v79, v81, v74
	v_div_fixup_f32 v75, v80, v81, v75
	v_fma_f32 v80, -v98, v90, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fmac_f32_e32 v90, v80, v86
	v_fma_f32 v95, -v85, v87, 1.0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v96, -v88, v83, 1.0
	v_fmac_f32_e32 v87, v95, v87
	v_div_scale_f32 v95, s8, v77, v81, v77
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v83, v96, v83
	v_div_scale_f32 v96, null, v81, v81, v66
	v_mul_f32_e32 v82, v95, v87
	s_mov_b32 vcc_lo, s8
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v5, v17, v5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v84, -v85, v82, v95
	v_fmac_f32_e32 v82, v84, v87
	v_rcp_f32_e32 v84, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_fma_f32 v79, -v85, v82, v95
	v_div_scale_f32 v85, s10, v73, v81, v73
	v_div_fmas_f32 v79, v79, v87, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v95, -v94, v84, 1.0
	v_rcp_f32_e32 v82, v96
	v_mul_f32_e32 v80, v85, v83
	v_div_scale_f32 v87, s8, v72, v81, v72
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v84, v95, v84
	v_div_scale_f32 v95, null, v81, v81, v69
	v_div_fixup_f32 v77, v79, v81, v77
	v_fma_f32 v79, -v98, v90, v89
	v_fma_f32 v89, -v88, v80, v85
	v_mul_f32_e32 v97, v87, v84
	v_rcp_f32_e32 v98, v95
	v_fma_f32 v99, -v96, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v89, v83
	v_div_fmas_f32 v79, v79, v86, v90
	v_fma_f32 v86, -v94, v97, v87
	v_fmac_f32_e32 v82, v99, v82
	v_div_scale_f32 v89, s9, v66, v81, v66
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v76, v79, v81, v76
	v_fma_f32 v90, -v95, v98, 1.0
	v_fma_f32 v79, -v88, v80, v85
	v_fmac_f32_e32 v97, v86, v84
	v_mul_f32_e32 v85, v89, v82
	v_div_scale_f32 v88, null, v81, v81, v65
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v98, v90, v98
	v_div_scale_f32 v86, s11, v69, v81, v69
	v_div_fmas_f32 v79, v79, v83, v80
	v_fma_f32 v80, -v94, v97, v87
	v_fma_f32 v83, -v96, v85, v89
	v_rcp_f32_e32 v87, v88
	v_div_scale_f32 v94, null, v81, v81, v64
	v_mul_f32_e32 v90, v86, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v85, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v94
	v_div_fmas_f32 v80, v80, v84, v97
	v_fma_f32 v84, -v95, v90, v86
	v_div_fixup_f32 v73, v79, v81, v73
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v88, v87, 1.0
	v_fma_f32 v79, -v96, v85, v89
	v_div_fixup_f32 v72, v80, v81, v72
	v_fmac_f32_e32 v90, v84, v98
	v_div_scale_f32 v80, s8, v65, v81, v65
	v_fmac_f32_e32 v87, v97, v87
	v_fma_f32 v84, -v94, v83, 1.0
	v_div_scale_f32 v89, null, v81, v81, v54
	s_mov_b32 vcc_lo, s9
	v_div_scale_f32 v99, null, v81, v81, v45
	v_div_fmas_f32 v79, v79, v82, v85
	v_fma_f32 v82, -v95, v90, v86
	v_mul_f32_e32 v85, v80, v87
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v89
	v_div_scale_f32 v86, s9, v64, v81, v64
	v_div_scale_f32 v95, null, v81, v81, v47
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v96, v86, v83
	v_div_fmas_f32 v82, v82, v98, v90
	v_fma_f32 v90, -v88, v85, v80
	v_rcp_f32_e32 v98, v95
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v97, -v89, v84, 1.0
	v_div_fixup_f32 v66, v79, v81, v66
	v_fma_f32 v79, -v94, v96, v86
	v_fmac_f32_e32 v85, v90, v87
	v_div_fixup_f32 v69, v82, v81, v69
	v_fmac_f32_e32 v84, v97, v84
	v_div_scale_f32 v82, s10, v54, v81, v54
	v_div_scale_f32 v90, null, v81, v81, v46
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v97, -v95, v98, 1.0
	v_fma_f32 v80, -v88, v85, v80
	v_fmac_f32_e32 v96, v79, v83
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v82, v84
	v_rcp_f32_e32 v88, v90
	v_fmac_f32_e32 v98, v97, v98
	v_div_scale_f32 v97, s11, v47, v81, v47
	v_div_fmas_f32 v80, v80, v87, v85
	v_fma_f32 v85, -v94, v96, v86
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v86, -v89, v79, v82
	v_mul_f32_e32 v87, v97, v98
	v_div_fixup_f32 v65, v80, v81, v65
	v_div_fmas_f32 v83, v85, v83, v96
	v_rcp_f32_e32 v85, v99
	v_fma_f32 v94, -v90, v88, 1.0
	v_fmac_f32_e32 v79, v86, v84
	v_fma_f32 v86, -v95, v87, v97
	v_div_fixup_f32 v64, v83, v81, v64
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v88, v94, v88
	v_div_scale_f32 v94, s8, v46, v81, v46
	v_fmac_f32_e32 v87, v86, v98
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fma_f32 v83, -v99, v85, 1.0
	v_div_scale_f32 v86, null, v78, v78, v44
	v_fma_f32 v80, -v89, v79, v82
	v_dual_mul_f32 v82, v94, v88 :: v_dual_fmac_f32 v85, v83, v85
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v83, v86
	v_div_scale_f32 v89, s9, v45, v81, v45
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v95, v87, v97
	v_fma_f32 v84, -v90, v82, v94
	v_div_scale_f32 v95, null, v78, v78, v43
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v54, v79, v81, v54
	v_fmac_f32_e32 v82, v84, v88
	v_rcp_f32_e32 v84, v95
	v_fma_f32 v96, -v86, v83, 1.0
	v_div_fmas_f32 v80, v80, v98, v87
	v_mul_f32_e32 v87, v89, v85
	v_fma_f32 v79, -v90, v82, v94
	s_mov_b32 vcc_lo, s8
	v_fmac_f32_e32 v83, v96, v83
	v_div_scale_f32 v96, null, v78, v78, v41
	v_div_fixup_f32 v47, v80, v81, v47
	v_fma_f32 v80, -v99, v87, v89
	v_div_scale_f32 v90, s10, v44, v78, v44
	v_fma_f32 v94, -v95, v84, 1.0
	v_div_fmas_f32 v79, v79, v88, v82
	v_rcp_f32_e32 v82, v96
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v87, v80, v85 :: v_dual_mul_f32 v80, v90, v83
	v_fmac_f32_e32 v84, v94, v84
	v_div_scale_f32 v88, s8, v43, v78, v43
	v_div_scale_f32 v94, null, v78, v78, v42
	v_div_fixup_f32 v46, v79, v81, v46
	v_fma_f32 v79, -v99, v87, v89
	v_fma_f32 v89, -v86, v80, v90
	v_mul_f32_e32 v97, v88, v84
	v_rcp_f32_e32 v98, v94
	v_fma_f32 v99, -v96, v82, 1.0
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v80, v89, v83
	v_div_fmas_f32 v79, v79, v85, v87
	v_fma_f32 v85, -v95, v97, v88
	v_fmac_f32_e32 v82, v99, v82
	v_div_scale_f32 v87, s9, v41, v78, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_div_fixup_f32 v45, v79, v81, v45
	v_fma_f32 v89, -v94, v98, 1.0
	v_fma_f32 v79, -v86, v80, v90
	v_fmac_f32_e32 v97, v85, v84
	v_mul_f32_e32 v81, v87, v82
	v_div_scale_f32 v86, null, v78, v78, v40
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v98, v89, v98
	v_div_scale_f32 v85, s11, v42, v78, v42
	v_div_fmas_f32 v79, v79, v83, v80
	v_fma_f32 v80, -v95, v97, v88
	v_fma_f32 v83, -v96, v81, v87
	v_rcp_f32_e32 v88, v86
	v_div_scale_f32 v90, null, v78, v78, v39
	v_mul_f32_e32 v89, v85, v98
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v83, v82
	s_mov_b32 vcc_lo, s8
	v_rcp_f32_e32 v83, v90
	v_div_fmas_f32 v80, v80, v84, v97
	v_fma_f32 v84, -v94, v89, v85
	v_div_fixup_f32 v44, v79, v78, v44
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v86, v88, 1.0
	v_fma_f32 v79, -v96, v81, v87
	v_div_fixup_f32 v43, v80, v78, v43
	v_fmac_f32_e32 v89, v84, v98
	v_div_scale_f32 v80, s8, v40, v78, v40
	v_fmac_f32_e32 v88, v95, v88
	v_fma_f32 v84, -v90, v83, 1.0
	v_div_scale_f32 v87, null, v78, v78, v38
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v82, v81
	v_fma_f32 v81, -v94, v89, v85
	v_mul_f32_e32 v82, v80, v88
	v_fmac_f32_e32 v83, v84, v83
	v_rcp_f32_e32 v84, v87
	v_div_scale_f32 v85, s9, v39, v78, v39
	v_div_scale_f32 v94, null, v78, v78, v37
	s_mov_b32 vcc_lo, s11
	v_mul_f32_e32 v95, v85, v83
	v_div_fmas_f32 v81, v81, v98, v89
	v_fma_f32 v89, -v86, v82, v80
	v_rcp_f32_e32 v97, v94
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v96, -v87, v84, 1.0
	v_div_fixup_f32 v41, v79, v78, v41
	v_fma_f32 v79, -v90, v95, v85
	v_fmac_f32_e32 v82, v89, v88
	v_div_scale_f32 v89, null, v78, v78, v35
	v_div_fixup_f32 v42, v81, v78, v42
	v_fmac_f32_e32 v84, v96, v84
	v_div_scale_f32 v81, s10, v38, v78, v38
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v96, -v94, v97, 1.0
	v_fma_f32 v80, -v86, v82, v80
	v_fmac_f32_e32 v95, v79, v83
	v_rcp_f32_e32 v86, v89
	s_mov_b32 vcc_lo, s8
	v_mul_f32_e32 v79, v81, v84
	v_fmac_f32_e32 v97, v96, v97
	v_div_scale_f32 v96, s11, v37, v78, v37
	v_div_fmas_f32 v80, v80, v88, v82
	v_fma_f32 v82, -v90, v95, v85
	v_div_scale_f32 v98, null, v78, v78, v36
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v85, -v87, v79, v81
	v_mul_f32_e32 v88, v96, v97
	v_fma_f32 v90, -v89, v86, 1.0
	v_div_fmas_f32 v82, v82, v83, v95
	v_rcp_f32_e32 v83, v98
	v_fmac_f32_e32 v79, v85, v84
	v_fma_f32 v85, -v94, v88, v96
	v_fmac_f32_e32 v86, v90, v86
	v_div_scale_f32 v90, s8, v35, v78, v35
	v_div_fixup_f32 v40, v80, v78, v40
	v_div_fixup_f32 v39, v82, v78, v39
	v_fma_f32 v80, -v87, v79, v81
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_dual_fmac_f32 v88, v85, v97 :: v_dual_mul_f32 v81, v90, v86
	v_fma_f32 v82, -v98, v83, 1.0
	v_div_scale_f32 v85, null, v78, v78, v34
	s_mov_b32 vcc_lo, s10
	v_div_scale_f32 v87, s9, v36, v78, v36
	v_div_fmas_f32 v79, v80, v84, v79
	v_fma_f32 v80, -v94, v88, v96
	v_fma_f32 v84, -v89, v81, v90
	v_fmac_f32_e32 v83, v82, v83
	v_rcp_f32_e32 v82, v85
	v_div_scale_f32 v94, null, v78, v78, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v84, v86
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v38, v79, v78, v38
	v_rcp_f32_e32 v84, v94
	v_div_fmas_f32 v80, v80, v97, v88
	v_mul_f32_e32 v88, v87, v83
	v_fma_f32 v79, -v89, v81, v90
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v95, -v85, v82, 1.0
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v37, v80, v78, v37
	v_fma_f32 v80, -v98, v88, v87
	v_div_scale_f32 v89, s10, v34, v78, v34
	v_fmac_f32_e32 v82, v95, v82
	v_fma_f32 v90, -v94, v84, 1.0
	v_div_scale_f32 v95, null, v78, v78, v32
	v_div_fmas_f32 v79, v79, v86, v81
	v_fmac_f32_e32 v88, v80, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v84, v90, v84
	v_rcp_f32_e32 v81, v95
	v_div_scale_f32 v90, null, v78, v78, v31
	v_mul_f32_e32 v80, v89, v82
	v_div_scale_f32 v86, s8, v33, v78, v33
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v97, v90
	v_div_fixup_f32 v35, v79, v78, v35
	v_fma_f32 v79, -v98, v88, v87
	v_fma_f32 v87, -v85, v80, v89
	v_mul_f32_e32 v96, v86, v84
	v_fma_f32 v98, -v95, v81, 1.0
	s_mov_b32 vcc_lo, s9
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v83, v88
	v_fmac_f32_e32 v80, v87, v82
	v_fma_f32 v83, -v94, v96, v86
	v_fmac_f32_e32 v81, v98, v81
	v_div_scale_f32 v87, s9, v32, v78, v32
	v_fma_f32 v88, -v90, v97, 1.0
	v_div_fixup_f32 v36, v79, v78, v36
	v_fma_f32 v79, -v85, v80, v89
	v_fmac_f32_e32 v96, v83, v84
	v_mul_f32_e32 v83, v87, v81
	v_fmac_f32_e32 v97, v88, v97
	v_div_scale_f32 v85, s11, v31, v78, v31
	v_div_scale_f32 v88, null, v78, v78, v29
	s_mov_b32 vcc_lo, s10
	v_mul_f32_e32 v89, v85, v97
	v_div_fmas_f32 v79, v79, v82, v80
	v_fma_f32 v80, -v94, v96, v86
	v_fma_f32 v82, -v95, v83, v87
	v_rcp_f32_e32 v86, v88
	s_mov_b32 vcc_lo, s8
	v_div_scale_f32 v94, null, v78, v78, v30
	v_div_fmas_f32 v80, v80, v84, v96
	v_fmac_f32_e32 v83, v82, v81
	v_fma_f32 v84, -v90, v89, v85
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v82, v94
	v_div_fixup_f32 v34, v79, v78, v34
	s_mov_b32 vcc_lo, s9
	v_fma_f32 v96, -v88, v86, 1.0
	v_fma_f32 v79, -v95, v83, v87
	v_fmac_f32_e32 v89, v84, v97
	v_div_fixup_f32 v33, v80, v78, v33
	v_div_scale_f32 v80, s8, v29, v78, v29
	v_fmac_f32_e32 v86, v96, v86
	v_div_fmas_f32 v79, v79, v81, v83
	v_fma_f32 v81, -v90, v89, v85
	s_mov_b32 vcc_lo, s11
	v_fma_f32 v84, -v94, v82, 1.0
	v_mul_f32_e32 v83, v80, v86
	v_div_scale_f32 v95, null, v48, v48, v27
	v_div_fmas_f32 v81, v81, v97, v89
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v82, v84, v82
	v_div_scale_f32 v85, s9, v30, v78, v30
	v_fma_f32 v89, -v88, v83, v80
	v_div_fixup_f32 v31, v81, v78, v31
	v_rcp_f32_e32 v81, v95
	v_div_scale_f32 v84, null, v48, v48, v28
	v_mul_f32_e32 v90, v85, v82
	v_fmac_f32_e32 v83, v89, v86
	v_div_fixup_f32 v32, v79, v78, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v87, v84
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v79, -v94, v90, v85
	v_fma_f32 v80, -v88, v83, v80
	v_fma_f32 v96, -v95, v81, 1.0
	v_div_scale_f32 v88, null, v48, v48, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v90, v79, v82
	v_div_fmas_f32 v80, v80, v86, v83
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v81, v96, v81
	v_div_scale_f32 v86, s8, v27, v48, v27
	v_fma_f32 v89, -v84, v87, 1.0
	v_fma_f32 v83, -v94, v90, v85
	s_mov_b32 vcc_lo, s9
	v_mul_f32_e32 v98, v86, v81
	v_div_scale_f32 v79, s10, v28, v48, v28
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v82, v83, v82, v90
	v_div_scale_f32 v97, null, v48, v48, v25
	v_fma_f32 v83, -v95, v98, v86
	v_fmac_f32_e32 v87, v89, v87
	v_rcp_f32_e32 v89, v88
	s_delay_alu instid0(VALU_DEP_3)
	v_rcp_f32_e32 v99, v97
	v_div_fixup_f32 v29, v80, v78, v29
	v_fmac_f32_e32 v98, v83, v81
	v_mul_f32_e32 v85, v79, v87
	v_div_fixup_f32 v30, v82, v78, v30
	v_div_scale_f32 v82, null, v48, v48, v24
	s_mov_b32 vcc_lo, s10
	v_fma_f32 v96, -v84, v85, v79
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_fma_f32 v94, -v88, v89, 1.0
	v_fma_f32 v80, -v97, v99, 1.0
	v_fma_f32 v83, -v95, v98, v86
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v85, v96, v87
	v_fmac_f32_e32 v89, v94, v89
	v_div_scale_f32 v94, s11, v26, v48, v26
	v_fmac_f32_e32 v99, v80, v99
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v84, v85, v79
	v_div_scale_f32 v80, s9, v25, v48, v25
	v_mul_f32_e32 v90, v94, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v72, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v87, v85
	v_mul_f32_e32 v84, v80, v99
	v_div_scale_f32 v85, null, v48, v48, v23
	v_fma_f32 v79, -v88, v90, v94
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v28, v78, v48, v28
	v_div_fmas_f32 v81, v83, v81, v98
	v_rcp_f32_e32 v87, v85
	v_fmac_f32_e32 v90, v79, v89
	v_rcp_f32_e32 v79, v82
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v27, v81, v48, v27
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v47, v47
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v83, -v88, v90, v94
	v_fma_f32 v88, -v97, v84, v80
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	v_rndne_f32_e32 v73, v73
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v81, -v85, v87, 1.0
	v_div_fmas_f32 v83, v83, v89, v90
	v_fma_f32 v86, -v82, v79, 1.0
	v_fmac_f32_e32 v84, v88, v99
	s_mov_b32 vcc_lo, s9
	v_fmac_f32_e32 v87, v81, v87
	v_div_fixup_f32 v26, v83, v48, v26
	v_fmac_f32_e32 v79, v86, v79
	v_div_scale_f32 v86, s8, v24, v48, v24
	v_fma_f32 v80, -v97, v84, v80
	v_div_scale_f32 v83, null, v48, v48, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v78, v86, v79
	v_div_scale_f32 v81, s10, v23, v48, v23
	v_div_fmas_f32 v80, v80, v99, v84
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_rcp_f32_e32 v89, v83
	v_fma_f32 v88, -v82, v78, v86
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v84, v81, v87
	s_mov_b32 vcc_lo, s8
	v_div_fixup_f32 v25, v80, v48, v25
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v37, v37
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v78, v88, v79
	v_div_scale_f32 v88, null, v48, v48, v20
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v44, v44
	v_rndne_f32_e32 v36, v36
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v80, -v82, v78, v86
	v_fma_f32 v82, -v85, v84, v81
	v_fma_f32 v86, -v83, v89, 1.0
	v_rcp_f32_e32 v90, v88
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v80, v79, v78
	v_div_scale_f32 v79, null, v48, v48, v18
	v_fmac_f32_e32 v84, v82, v87
	v_fmac_f32_e32 v89, v86, v89
	v_div_scale_f32 v86, null, v48, v48, v22
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v82, v79
	v_div_scale_f32 v80, s8, v21, v48, v21
	v_div_fixup_f32 v24, v78, v48, v24
	v_fma_f32 v78, -v88, v90, 1.0
	v_rcp_f32_e32 v95, v86
	v_fma_f32 v81, -v85, v84, v81
	v_mul_f32_e32 v85, v80, v89
	s_mov_b32 vcc_lo, s10
	v_fmac_f32_e32 v90, v78, v90
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v94, -v79, v82, 1.0
	v_div_scale_f32 v78, s9, v20, v48, v20
	v_div_fmas_f32 v81, v81, v87, v84
	v_fma_f32 v84, -v83, v85, v80
	v_fmac_f32_e32 v82, v94, v82
	v_div_scale_f32 v94, null, v48, v48, v19
	v_mul_f32_e32 v87, v78, v90
	v_div_scale_f32 v96, s10, v18, v48, v18
	v_fma_f32 v97, -v86, v95, 1.0
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v98, v94
	v_fmac_f32_e32 v85, v84, v89
	v_fma_f32 v84, -v88, v87, v78
	v_mul_f32_e32 v99, v96, v82
	v_fmac_f32_e32 v95, v97, v95
	v_div_scale_f32 v97, s11, v22, v48, v22
	v_div_fixup_f32 v23, v81, v48, v23
	v_fma_f32 v80, -v83, v85, v80
	v_fmac_f32_e32 v87, v84, v90
	v_fma_f32 v81, -v79, v99, v96
	v_mul_f32_e32 v83, v97, v95
	v_fma_f32 v84, -v94, v98, 1.0
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v78, -v88, v87, v78
	v_fmac_f32_e32 v99, v81, v82
	v_fma_f32 v81, -v86, v83, v97
	v_fmac_f32_e32 v98, v84, v98
	v_div_scale_f32 v84, s8, v19, v48, v19
	v_div_fmas_f32 v80, v80, v89, v85
	v_fma_f32 v79, -v79, v99, v96
	v_fmac_f32_e32 v83, v81, v95
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v81, v84, v98
	v_div_scale_f32 v85, null, v48, v48, v16
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v21, v80, v48, v21
	v_div_fmas_f32 v78, v78, v90, v87
	s_mov_b32 vcc_lo, s10
	v_rcp_f32_e32 v87, v85
	v_div_fmas_f32 v79, v79, v82, v99
	v_fma_f32 v82, -v86, v83, v97
	v_fma_f32 v86, -v94, v81, v84
	v_div_fixup_f32 v20, v78, v48, v20
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v18, v79, v48, v18
	v_div_fmas_f32 v82, v82, v95, v83
	v_fmac_f32_e32 v81, v86, v98
	s_mov_b32 vcc_lo, s8
	v_fma_f32 v80, -v85, v87, 1.0
	v_div_scale_f32 v79, null, v48, v48, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fma_f32 v78, -v94, v81, v84
	v_div_fixup_f32 v22, v82, v48, v22
	v_fmac_f32_e32 v87, v80, v87
	v_div_scale_f32 v80, null, v48, v48, v12
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v78, v78, v98, v81
	v_div_scale_f32 v83, vcc_lo, v16, v48, v16
	v_rcp_f32_e32 v81, v79
	v_div_scale_f32 v82, null, v48, v48, v13
	v_mul_f32_e32 v88, v83, v87
	v_div_scale_f32 v89, null, v48, v48, v14
	v_rcp_f32_e32 v84, v80
	v_div_fixup_f32 v19, v78, v48, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_3)
	v_fma_f32 v95, -v85, v88, v83
	v_rcp_f32_e32 v86, v82
	v_fma_f32 v78, -v79, v81, 1.0
	v_rcp_f32_e32 v94, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v33, v33
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v88, v95, v87
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v64, v64
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v81, v78, v81
	v_div_scale_f32 v78, s8, v15, v48, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	v_fma_f32 v83, -v85, v88, v83
	v_fma_f32 v90, -v80, v84, 1.0
	v_fma_f32 v96, -v82, v86, 1.0
	v_fma_f32 v98, -v89, v94, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v41, v41
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v83, v83, v87, v88
	s_mov_b32 vcc_lo, s8
	s_mov_b32 s8, 0xc1000000
	v_fmac_f32_e32 v84, v90, v84
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v46, v46, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v90, s9, v12, v48, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v65, v65, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v86, v96, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v46, v46
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v97, v78, v81
	v_div_scale_f32 v96, s10, v13, v48, v13
	v_fmac_f32_e32 v94, v98, v94
	v_div_scale_f32 v98, s11, v14, v48, v14
	v_fma_f32 v95, -v79, v97, v78
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v65, v65
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_mul_f32 v99, v90, v84 :: v_dual_mul_f32 v100, v96, v86
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v101, v98, v94
	v_fmac_f32_e32 v97, v95, v81
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s8, 0x40e00000
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v80, v99, v90
	v_fma_f32 v95, -v82, v100, v96
	v_div_fixup_f32 v16, v83, v48, v16
	v_fma_f32 v78, -v79, v97, v78
	v_fma_f32 v79, -v89, v101, v98
	v_dual_fmac_f32 v99, v85, v84 :: v_dual_fmac_f32 v100, v95, v86
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v83, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v78, v78, v81, v97
	v_fmac_f32_e32 v101, v79, v94
	s_delay_alu instid0(VALU_DEP_4)
	v_fma_f32 v80, -v80, v99, v90
	v_fma_f32 v79, -v82, v100, v96
	s_mov_b32 vcc_lo, s9
	v_div_fixup_f32 v15, v78, v48, v15
	v_fma_f32 v81, -v89, v101, v98
	v_div_fmas_f32 v80, v80, v84, v99
	s_mov_b32 vcc_lo, s10
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v16, v16
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v79, v79, v86, v100
	s_mov_b32 vcc_lo, s11
	v_div_fixup_f32 v12, v80, v48, v12
	v_div_fmas_f32 v81, v81, v94, v101
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v72, v72, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v79, v48, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v47, v47, s8, 0x40e00000
	v_med3_f32 v43, v43, s8, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v14, v81, v48, v14
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v48, v49
	v_rndne_f32_e32 v49, v50
	v_rndne_f32_e32 v50, v51
	v_rndne_f32_e32 v51, v52
	v_rndne_f32_e32 v52, v53
	v_rndne_f32_e32 v53, v55
	v_rndne_f32_e32 v55, v56
	v_rndne_f32_e32 v56, v57
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
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v73, v73, s8, 0x40e00000
	v_med3_f32 v37, v37, s8, 0x40e00000
	v_med3_f32 v16, v16, s8, 0x40e00000
	v_med3_f32 v74, v74, s8, 0x40e00000
	v_med3_f32 v75, v75, s8, 0x40e00000
	v_cvt_i32_f32_e32 v72, v72
	v_cvt_i32_f32_e32 v47, v47
	v_cvt_i32_f32_e32 v78, v43
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v42, v42
	v_rndne_f32_e32 v28, v28
	v_rndne_f32_e32 v27, v27
	v_rndne_f32_e32 v26, v26
	v_rndne_f32_e32 v25, v25
	.loc	1 1239 13                       ; ragged.py:1239:13
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
	v_and_b32_e32 v43, 15, v47
	v_and_b32_e32 v47, 15, v78
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v72, 10, v0
	v_and_b32_e32 v78, 16, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v69, v69
	v_rndne_f32_e32 v54, v54
	v_rndne_f32_e32 v35, v35
	v_rndne_f32_e32 v18, v18
	v_rndne_f32_e32 v22, v22
	v_rndne_f32_e32 v19, v19
	v_rndne_f32_e32 v40, v40
	v_rndne_f32_e32 v32, v32
	v_rndne_f32_e32 v31, v31
	v_rndne_f32_e32 v30, v30
	v_rndne_f32_e32 v21, v21
	v_rndne_f32_e32 v20, v20
	v_rndne_f32_e32 v15, v15
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
	v_med3_f32 v55, v55, s8, 0x40e00000
	v_med3_f32 v56, v56, s8, 0x40e00000
	v_med3_f32 v62, v62, s8, 0x40e00000
	v_med3_f32 v63, v63, s8, 0x40e00000
	v_med3_f32 v68, v68, s8, 0x40e00000
	v_med3_f32 v70, v70, s8, 0x40e00000
	v_med3_f32 v71, v71, s8, 0x40e00000
	v_med3_f32 v64, v64, s8, 0x40e00000
	v_med3_f32 v41, v41, s8, 0x40e00000
	v_med3_f32 v42, v42, s8, 0x40e00000
	v_med3_f32 v28, v28, s8, 0x40e00000
	v_med3_f32 v27, v27, s8, 0x40e00000
	v_med3_f32 v26, v26, s8, 0x40e00000
	v_med3_f32 v25, v25, s8, 0x40e00000
	v_cvt_i32_f32_e32 v77, v44
	v_cvt_i32_f32_e32 v86, v36
	v_cvt_i32_f32_e32 v87, v34
	v_cvt_i32_f32_e32 v88, v33
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
	v_med3_f32 v54, v54, s8, 0x40e00000
	v_med3_f32 v35, v35, s8, 0x40e00000
	v_med3_f32 v18, v18, s8, 0x40e00000
	v_med3_f32 v22, v22, s8, 0x40e00000
	v_med3_f32 v19, v19, s8, 0x40e00000
	v_med3_f32 v40, v40, s8, 0x40e00000
	v_med3_f32 v32, v32, s8, 0x40e00000
	v_med3_f32 v31, v31, s8, 0x40e00000
	v_med3_f32 v30, v30, s8, 0x40e00000
	v_med3_f32 v21, v21, s8, 0x40e00000
	v_med3_f32 v20, v20, s8, 0x40e00000
	v_med3_f32 v15, v15, s8, 0x40e00000
	v_med3_f32 v12, v12, s8, 0x40e00000
	v_med3_f32 v13, v13, s8, 0x40e00000
	v_med3_f32 v14, v14, s8, 0x40e00000
	v_cvt_i32_f32_e32 v48, v48
	v_cvt_i32_f32_e32 v49, v49
	v_cvt_i32_f32_e32 v50, v50
	v_cvt_i32_f32_e32 v51, v51
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v53, v53
	v_cvt_i32_f32_e32 v55, v55
	v_cvt_i32_f32_e32 v56, v56
	v_cvt_i32_f32_e32 v62, v62
	v_cvt_i32_f32_e32 v63, v63
	v_cvt_i32_f32_e32 v68, v68
	v_cvt_i32_f32_e32 v70, v70
	v_cvt_i32_f32_e32 v71, v71
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
	v_and_or_b32 v6, 0x1b00, v16, v6
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v39, v39, s8, 0x40e00000
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
	v_cvt_i32_f32_e32 v54, v54
	v_cvt_i32_f32_e32 v85, v35
	v_cvt_i32_f32_e32 v104, v18
	v_cvt_i32_f32_e32 v105, v22
	v_cvt_i32_f32_e32 v106, v19
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v76, v76
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v81, v40
	v_cvt_i32_f32_e32 v89, v32
	v_cvt_i32_f32_e32 v90, v31
	v_cvt_i32_f32_e32 v95, v30
	v_cvt_i32_f32_e32 v102, v21
	v_cvt_i32_f32_e32 v103, v20
	v_cvt_i32_f32_e32 v107, v15
	v_cvt_i32_f32_e32 v108, v12
	v_cvt_i32_f32_e32 v109, v13
	v_cvt_i32_f32_e32 v110, v14
	v_and_b32_e32 v12, 15, v48
	v_and_b32_e32 v13, 15, v49
	v_and_b32_e32 v14, 15, v50
	v_and_b32_e32 v15, 15, v51
	v_and_b32_e32 v18, 15, v52
	v_and_b32_e32 v19, 15, v53
	v_and_b32_e32 v20, 15, v55
	v_and_b32_e32 v21, 15, v56
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
	v_add3_u32 v7, v77, v8, v7
	v_xad_u32 v6, v6, v92, 0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v82, v39
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
	v_and_b32_e32 v42, 15, v54
	v_and_b32_e32 v55, 15, v86
	v_and_b32_e32 v56, 15, v87
	v_and_b32_e32 v57, 15, v88
	v_and_b32_e32 v70, 15, v104
	v_and_b32_e32 v71, 15, v105
	v_and_b32_e32 v72, 15, v106
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s4, s5
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v54, 15, v85
	v_med3_f32 v76, v76, s8, 0x40e00000
	v_med3_f32 v45, v45, s8, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v7, v[12:15]
	ds_store_b128 v7, v[22:25] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[12:15], v6
	ds_load_b128 v[22:25], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[30:33]
	ds_store_b128 v7, v[38:41] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[30:33], v6
	ds_load_b128 v[38:41], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[46:49]
	ds_store_b128 v7, v[54:57] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[46:49], v6
	ds_load_b128 v[54:57], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[62:65]
	ds_store_b128 v7, v[70:73] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[62:65], v6
	ds_load_b128 v[70:73], v6 offset:1024
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[18:21]
	ds_store_b128 v7, v[26:29] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[18:21], v6
	ds_load_b128 v[26:29], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v76, v76
	v_cvt_i32_f32_e32 v45, v45
	v_and_b32_e32 v50, 15, v81
	v_and_b32_e32 v51, 15, v82
	v_and_b32_e32 v52, 15, v83
	v_and_b32_e32 v35, 15, v76
	v_and_b32_e32 v45, 15, v45
	v_and_b32_e32 v53, 15, v84
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[34:37]
	ds_store_b128 v7, v[42:45] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[34:37], v6
	ds_load_b128 v[42:45], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v89
	v_and_b32_e32 v59, 15, v90
	v_and_b32_e32 v60, 15, v94
	v_and_b32_e32 v61, 15, v95
	v_and_b32_e32 v66, 15, v100
	v_and_b32_e32 v67, 15, v101
	v_and_b32_e32 v68, 15, v102
	v_and_b32_e32 v69, 15, v103
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[50:53]
	ds_store_b128 v7, v[58:61] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[50:53], v6
	ds_load_b128 v[58:61], v6 offset:1024
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v74, 15, v107
	v_and_b32_e32 v75, 15, v108
	v_and_b32_e32 v76, 15, v109
	v_and_b32_e32 v77, 15, v110
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v19, v27, 4, v19
	v_lshl_or_b32 v27, v41, 4, v33
	v_lshl_or_b32 v33, v55, 4, v47
	.loc	1 1247 50                       ; ragged.py:1247:50
	v_lshlrev_b32_e32 v47, 3, v91
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v7, v[66:69]
	ds_store_b128 v7, v[74:77] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[66:69], v6
	ds_load_b128 v[74:77], v6 offset:1024
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s8, s34, 31
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
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v18, v26, 4, v18
	v_lshl_or_b32 v20, v28, 4, v20
	v_lshl_or_b32 v21, v29, 4, v21
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s8, s8, 1
	.loc	1 1249 13 is_stmt 0             ; ragged.py:1249:13
	v_add_nc_u32_e32 v16, 48, v9
	v_mad_u64_u32 v[12:13], null, v9, s8, v[6:7]
	v_mad_u64_u32 v[13:14], null, v14, s8, v[6:7]
	v_mad_u64_u32 v[14:15], null, v15, s8, v[6:7]
	.loc	1 1246 19 is_stmt 1             ; ragged.py:1246:19
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
.Ltmp55:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
		.amdhsa_next_free_sgpr 40
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 141
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 40
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13804
; TotalNumSgprs: 42
; NumVgprs: 141
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 42
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
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
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
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 0
    .sgpr_count:     42
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_nn_pc_evenk_int4_none_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
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
