	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3                          ; -- Begin function amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.p2align	8
	.type	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3,@function
amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3:                                 ; @amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "ragged.py"
	.loc	1 1001 0                        ; ragged.py:1001:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b64 s[72:73], s[0:1], 0x54
	s_load_b32 s3, s[0:1], 0x60
.Ltmp0:
	.loc	1 1033 25 prologue_end          ; ragged.py:1033:25
	s_abs_i32 s8, s2
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_dual_mov_b32 v66, 0 :: v_dual_and_b32 v3, 63, v0
	v_lshlrev_b32_e32 v44, 1, v0
	v_and_b32_e32 v45, 0x7f, v0
	scratch_store_b32 off, v0, off offset:200 ; 4-byte Folded Spill
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 43 13                         ; standard.py:43:13 @[ ragged.py:1031:21 ]
	s_waitcnt lgkmcnt(0)
	s_add_i32 s4, s72, 0xff
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
	s_sub_i32 s80, s13, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 1037 34                       ; ragged.py:1037:34
	s_mul_i32 s3, s80, s3
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
	s_load_b64 s[74:75], s[6:7], 0x0
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_add_u32 s6, s8, s2
	s_addc_u32 s7, s9, s3
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_add_u32 s2, s10, s2
	s_addc_u32 s3, s11, s3
	.loc	1 1042 24                       ; ragged.py:1042:24
	s_load_b64 s[76:77], s[6:7], 0x0
	.loc	1 1043 22                       ; ragged.py:1043:22
	s_load_b64 s[78:79], s[2:3], 0x0
	.loc	1 1040 20                       ; ragged.py:1040:20
	s_load_b64 s[6:7], s[4:5], 0x0
	.loc	1 1049 17                       ; ragged.py:1049:17
	s_lshl_b32 s3, s72, 1
	s_mov_b32 s4, 0
	.loc	1 1044 18                       ; ragged.py:1044:18
	s_waitcnt lgkmcnt(0)
	v_add_co_u32 v1, s2, s74, v3
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v2, null, s75, 0, s2
	v_add_nc_u32_e32 v124, s74, v3
	.loc	1 1066 35                       ; ragged.py:1066:35
	s_mul_i32 s17, s6, s3
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[1:2]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s2, s[78:79], v[1:2]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s2, vcc_lo, s2
	.loc	1 1058 19 is_stmt 1             ; ragged.py:1058:19
	s_cmp_gt_i32 s73, 0
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1254 13 is_stmt 1             ; ragged.py:1254:13
	v_add_nc_u32_e32 v3, s74, v3
	v_dual_mov_b32 v41, s17 :: v_dual_mov_b32 v4, s74
	.loc	1 1247 50                       ; ragged.py:1247:50
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v5, 0x7f, v0
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshlrev_b32_e32 v42, 1, v0
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 17 is_stmt 0                ; ragged.py:0:17
	s_mov_b32 s4, -1
                                        ; implicit-def: $vgpr42
                                        ; implicit-def: $vgpr5
                                        ; implicit-def: $vgpr4
                                        ; implicit-def: $vgpr3
                                        ; implicit-def: $vgpr41
.LBB0_3:                                ; %Flow
	scratch_load_b32 v0, off, off offset:200 ; 4-byte Folded Reload
	s_clause 0x1
	s_load_b128 s[68:71], s[0:1], 0x40
	s_load_b128 s[12:15], s[0:1], 0x10
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v1, 0 :: v_dual_mov_b32 v8, 0
	v_dual_mov_b32 v9, 0 :: v_dual_mov_b32 v10, 0
	v_dual_mov_b32 v114, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v113, 0 :: v_dual_mov_b32 v60, 0
	v_dual_mov_b32 v33, 0 :: v_dual_mov_b32 v32, 0
	v_dual_mov_b32 v35, 0 :: v_dual_mov_b32 v36, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v11, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v13, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v163, 0
	v_dual_mov_b32 v12, 0 :: v_dual_mov_b32 v161, 0
	v_dual_mov_b32 v162, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v160, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v77, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v141, 0
	v_dual_mov_b32 v140, 0 :: v_dual_mov_b32 v139, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v17, 0
	v_dual_mov_b32 v14, 0 :: v_dual_mov_b32 v133, 0
	v_dual_mov_b32 v16, 0 :: v_dual_mov_b32 v129, 0
	v_dual_mov_b32 v132, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v72, 0 :: v_dual_mov_b32 v143, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v7, 0
	v_dual_mov_b32 v130, 0 :: v_dual_mov_b32 v69, 0
	v_dual_mov_b32 v144, 0 :: v_dual_mov_b32 v173, 0
	v_dual_mov_b32 v142, 0 :: v_dual_mov_b32 v175, 0
	v_dual_mov_b32 v70, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v68, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v172, 0 :: v_dual_mov_b32 v147, 0
	v_dual_mov_b32 v174, 0 :: v_dual_mov_b32 v145, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v73, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v71, 0
	v_dual_mov_b32 v148, 0 :: v_dual_mov_b32 v153, 0
	v_dual_mov_b32 v146, 0 :: v_dual_mov_b32 v151, 0
	v_dual_mov_b32 v74, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v176, 0 :: v_dual_mov_b32 v177, 0
	v_dual_mov_b32 v154, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v152, 0 :: v_dual_mov_b32 v159, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v157, 0
	v_dual_mov_b32 v158, 0 :: v_dual_mov_b32 v29, 0
	v_dual_mov_b32 v156, 0 :: v_dual_mov_b32 v31, 0
	v_dual_mov_b32 v28, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v30, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v37, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v39, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v25, 0
	v_dual_mov_b32 v40, 0 :: v_dual_mov_b32 v21, 0
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v23, 0
	v_dual_mov_b32 v26, 0 :: v_dual_mov_b32 v27, 0
	v_dual_mov_b32 v34, 0 :: v_dual_mov_b32 v19, 0
	v_dual_mov_b32 v22, 0 :: v_dual_mov_b32 v15, 0
	v_dual_mov_b32 v18, 0 :: v_dual_mov_b32 v65, 0
	v_dual_mov_b32 v20, 0 :: v_dual_mov_b32 v67, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v75, 0
	v_dual_mov_b32 v101, 0 :: v_dual_mov_b32 v102, 0
	v_dual_mov_b32 v103, 0 :: v_dual_mov_b32 v98, 0
	v_dual_mov_b32 v107, 0 :: v_dual_mov_b32 v100, 0
	v_dual_mov_b32 v99, 0 :: v_dual_mov_b32 v136, 0
	v_dual_mov_b32 v155, 0 :: v_dual_mov_b32 v138, 0
	v_dual_mov_b32 v137, 0 :: v_dual_mov_b32 v150, 0
	v_dual_mov_b32 v131, 0 :: v_dual_mov_b32 v134, 0
	v_mov_b32_e32 v135, 0
	v_mov_b32_e32 v149, 0
	s_and_not1_b32 vcc_lo, exec_lo, s4
	s_lshl_b32 s16, s80, 8
	v_mov_b32_e32 v97, 0
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v89, 0 :: v_dual_and_b32 v166, 0x80, v0
	v_mov_b32_e32 v0, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_eq_u32_e64 s3, 0, v166
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	scratch_load_b32 v60, off, off offset:200 ; 4-byte Folded Reload
	v_and_b32_e32 v4, 24, v44
	v_cndmask_b32_e64 v2, 0x88, 0, s3
	v_mov_b32_e32 v114, 0
	v_mov_b32_e32 v116, 0
	v_mov_b32_e32 v118, 0
	v_mov_b32_e32 v120, 0
	v_xor_b32_e32 v33, v2, v45
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x0
	s_load_b32 s0, s[0:1], 0x50
	v_dual_mov_b32 v44, 0 :: v_dual_mov_b32 v79, 0
	v_dual_mov_b32 v46, 0 :: v_dual_mov_b32 v81, 0
	v_dual_mov_b32 v48, 0 :: v_dual_mov_b32 v83, 0
	v_dual_mov_b32 v50, 0 :: v_dual_mov_b32 v85, 0
	v_dual_mov_b32 v76, 0 :: v_dual_mov_b32 v87, 0
	v_dual_mov_b32 v78, 0 :: v_dual_mov_b32 v89, 0
	v_dual_mov_b32 v80, 0 :: v_dual_mov_b32 v91, 0
	v_dual_mov_b32 v82, 0 :: v_dual_mov_b32 v93, 0
	v_dual_mov_b32 v84, 0 :: v_dual_mov_b32 v95, 0
	v_dual_mov_b32 v86, 0 :: v_dual_mov_b32 v97, 0
	v_dual_mov_b32 v88, 0 :: v_dual_mov_b32 v99, 0
	v_dual_mov_b32 v90, 0 :: v_dual_mov_b32 v101, 0
	v_dual_mov_b32 v92, 0 :: v_dual_mov_b32 v103, 0
	v_dual_mov_b32 v94, 0 :: v_dual_mov_b32 v105, 0
	v_dual_mov_b32 v96, 0 :: v_dual_mov_b32 v107, 0
	v_dual_mov_b32 v98, 0 :: v_dual_mov_b32 v109, 0
	v_dual_mov_b32 v100, 0 :: v_dual_mov_b32 v111, 0
	v_dual_mov_b32 v102, 0 :: v_dual_mov_b32 v113, 0
	v_dual_mov_b32 v104, 0 :: v_dual_mov_b32 v115, 0
	v_dual_mov_b32 v106, 0 :: v_dual_mov_b32 v117, 0
	v_dual_mov_b32 v108, 0 :: v_dual_mov_b32 v119, 0
	v_dual_mov_b32 v110, 0 :: v_dual_mov_b32 v121, 0
	v_dual_mov_b32 v112, 0 :: v_dual_mov_b32 v123, 0
	s_mov_b32 s7, 0x31027000
	s_mov_b32 s6, 0x7ffffffe
	s_waitcnt lgkmcnt(0)
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s11, s11, 0xffff
	s_mov_b32 s1, 0
	s_mov_b32 s4, s8
	s_mov_b32 s5, s9
	s_mov_b32 s8, s10
	s_mov_b32 s9, s11
	s_mov_b32 s10, s6
	s_mov_b32 s11, s7
	v_mov_b32_e32 v52, 0
	v_dual_mov_b32 v54, 0 :: v_dual_mov_b32 v55, 0
	v_dual_mov_b32 v56, 0 :: v_dual_mov_b32 v57, 0
	v_dual_mov_b32 v59, 0 :: v_dual_mov_b32 v230, 0
	v_dual_mov_b32 v231, 0 :: v_dual_mov_b32 v232, 0
	v_dual_mov_b32 v234, 0 :: v_dual_mov_b32 v235, 0
	v_dual_mov_b32 v236, 0 :: v_dual_mov_b32 v237, 0
	v_dual_mov_b32 v183, 0 :: v_dual_mov_b32 v186, 0
	v_dual_mov_b32 v185, 0 :: v_dual_mov_b32 v188, 0
	v_dual_mov_b32 v190, 0 :: v_dual_mov_b32 v189, 0
	v_dual_mov_b32 v36, 0 :: v_dual_mov_b32 v37, 0
	v_mov_b32_e32 v40, 0
	v_dual_mov_b32 v42, 0 :: v_dual_mov_b32 v53, 0
	v_dual_mov_b32 v58, 0 :: v_dual_mov_b32 v233, 0
	v_dual_mov_b32 v184, 0 :: v_dual_mov_b32 v187, 0
	v_dual_mov_b32 v38, 0 :: v_dual_mov_b32 v39, 0
	v_mov_b32_e32 v164, 0
	v_dual_mov_b32 v166, 0 :: v_dual_mov_b32 v41, 0
	v_mov_b32_e32 v165, 0
	v_dual_mov_b32 v167, 0 :: v_dual_mov_b32 v168, 0
	v_dual_mov_b32 v171, 0 :: v_dual_mov_b32 v170, 0
	v_mov_b32_e32 v247, 0
	v_dual_mov_b32 v169, 0 :: v_dual_mov_b32 v246, 0
	v_dual_mov_b32 v251, 0 :: v_dual_mov_b32 v248, 0
	v_mov_b32_e32 v253, 0
	v_dual_mov_b32 v249, 0 :: v_dual_mov_b32 v250, 0
	v_dual_mov_b32 v252, 0 :: v_dual_mov_b32 v43, 0
	v_mov_b32_e32 v45, 0
	v_mov_b32_e32 v49, 0
	v_mov_b32_e32 v77, 0
	v_mov_b32_e32 v47, 0
	.loc	1 1045 36 is_stmt 1             ; ragged.py:1045:36
	s_waitcnt vmcnt(0)
	v_lshrrev_b32_e32 v0, 5, v60
	v_and_b32_e32 v1, 0xe0, v60
	v_and_b32_e32 v32, 15, v60
	v_or_b32_e32 v130, 0x700, v60
	v_or_b32_e32 v132, 0x7f0, v60
	v_or_b32_e32 v0, s16, v0
	v_lshlrev_b32_e32 v1, 4, v1
	v_dual_mov_b32 v122, 0 :: v_dual_lshlrev_b32 v3, 5, v32
	v_or_b32_e32 v131, 0x3f0, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add_nc_u32_e32 v0, s17, v0
	v_or3_b32 v34, v3, v4, v1
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v1, v0, s73
	v_add_nc_u32_e32 v2, 16, v0
	v_add_nc_u32_e32 v3, 24, v0
	v_add_nc_u32_e32 v5, 40, v0
	v_add_nc_u32_e32 v6, 48, v0
	v_add_nc_u32_e32 v7, 56, v0
	v_add_nc_u32_e32 v8, 64, v0
	v_add_nc_u32_e32 v10, 0x50, v0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:212
	scratch_store_b32 off, v34, off offset:208
	v_add_nc_u32_e32 v1, 8, v0
	v_add_nc_u32_e32 v11, 0x58, v0
	v_add_nc_u32_e32 v12, 0x60, v0
	v_add_nc_u32_e32 v13, 0x68, v0
	v_add_nc_u32_e32 v15, 0x78, v0
	v_mul_lo_u32 v4, s73, v1
	v_add_nc_u32_e32 v16, 0x80, v0
	v_add_nc_u32_e32 v17, 0x88, v0
	v_add_nc_u32_e32 v18, 0x90, v0
	v_add_nc_u32_e32 v20, 0xa0, v0
	v_add_nc_u32_e32 v21, 0xa8, v0
	v_add_nc_u32_e32 v22, 0xb0, v0
	v_add_nc_u32_e32 v23, 0xb8, v0
	scratch_store_b32 off, v4, off offset:216 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s73, v2
	v_add_nc_u32_e32 v25, 0xc8, v0
	v_add_nc_u32_e32 v26, 0xd0, v0
	v_add_nc_u32_e32 v27, 0xd8, v0
	v_add_nc_u32_e32 v28, 0xe0, v0
	v_add_nc_u32_e32 v30, 0xf0, v0
	v_add_nc_u32_e32 v31, 0xf8, v0
	v_add_nc_u32_e32 v1, s72, v1
	scratch_store_b32 off, v4, off offset:220 ; 4-byte Folded Spill
	v_mul_lo_u32 v4, s73, v3
	scratch_store_b32 off, v4, off offset:224 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v4, 32, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v9, s73, v4
	scratch_store_b32 off, v9, off offset:228 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s73, v5
	scratch_store_b32 off, v9, off offset:232 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s73, v6
	scratch_store_b32 off, v9, off offset:236 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s73, v7
	scratch_store_b32 off, v9, off offset:240 ; 4-byte Folded Spill
	v_mul_lo_u32 v9, s73, v8
	scratch_store_b32 off, v9, off offset:244 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v9, 0x48, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v14, s73, v9
	scratch_store_b32 off, v14, off offset:248 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s73, v10
	scratch_store_b32 off, v14, off offset:252 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s73, v11
	scratch_store_b32 off, v14, off offset:256 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s73, v12
	scratch_store_b32 off, v14, off offset:260 ; 4-byte Folded Spill
	v_mul_lo_u32 v14, s73, v13
	scratch_store_b32 off, v14, off offset:264 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v14, 0x70, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v19, s73, v14
	scratch_store_b32 off, v19, off offset:268 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s73, v15
	scratch_store_b32 off, v19, off offset:272 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s73, v16
	scratch_store_b32 off, v19, off offset:276 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s73, v17
	scratch_store_b32 off, v19, off offset:280 ; 4-byte Folded Spill
	v_mul_lo_u32 v19, s73, v18
	scratch_store_b32 off, v19, off offset:284 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v19, 0x98, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v24, s73, v19
	scratch_store_b32 off, v24, off offset:288 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s73, v20
	scratch_store_b32 off, v24, off offset:292 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s73, v21
	scratch_store_b32 off, v24, off offset:296 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s73, v22
	scratch_store_b32 off, v24, off offset:300 ; 4-byte Folded Spill
	v_mul_lo_u32 v24, s73, v23
	scratch_store_b32 off, v24, off offset:304 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v24, 0xc0, v0
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v29, s73, v24
	scratch_store_b32 off, v29, off offset:308 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s73, v25
	scratch_store_b32 off, v29, off offset:312 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s73, v26
	scratch_store_b32 off, v29, off offset:316 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s73, v27
	scratch_store_b32 off, v29, off offset:320 ; 4-byte Folded Spill
	v_mul_lo_u32 v29, s73, v28
	scratch_store_b32 off, v29, off offset:324 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v29, 0xe8, v0
	v_add_nc_u32_e32 v0, s72, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mul_lo_u32 v35, s73, v29
	v_mul_lo_u32 v0, v0, s73
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v35, off offset:328
	scratch_store_b32 off, v0, off offset:340
	v_mul_lo_u32 v35, s73, v30
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v3
	v_add_nc_u32_e32 v3, s72, v5
	v_mov_b32_e32 v5, 0
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v35, off offset:332
	scratch_store_b32 off, v0, off offset:344
	v_add_nc_u32_e32 v0, s72, v2
	v_mul_lo_u32 v35, s73, v31
	v_add_nc_u32_e32 v2, s72, v4
	v_add_nc_u32_e32 v4, s72, v6
	v_mov_b32_e32 v6, 0
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v35, off offset:336 ; 4-byte Folded Spill
	v_mov_b32_e32 v35, 0
	scratch_store_b32 off, v0, off offset:348 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v8
	scratch_store_b32 off, v0, off offset:352 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v9
	scratch_store_b32 off, v0, off offset:356 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v10
	scratch_store_b32 off, v0, off offset:360 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v11
	scratch_store_b32 off, v0, off offset:364 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v7
	v_mov_b32_e32 v7, 0
	s_delay_alu instid0(VALU_DEP_2)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:368 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v13
	scratch_store_b32 off, v0, off offset:372 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v14
	scratch_store_b32 off, v0, off offset:376 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v15
	scratch_store_b32 off, v0, off offset:380 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v16
	scratch_store_b32 off, v0, off offset:384 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:388 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v18
	scratch_store_b32 off, v0, off offset:392 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v19
	scratch_store_b32 off, v0, off offset:396 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v20
	scratch_store_b32 off, v0, off offset:400 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v21
	scratch_store_b32 off, v0, off offset:404 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v17
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:408 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v23
	scratch_store_b32 off, v0, off offset:412 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v24
	scratch_store_b32 off, v0, off offset:416 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v25
	scratch_store_b32 off, v0, off offset:420 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v26
	scratch_store_b32 off, v0, off offset:424 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:428 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_add_nc_u32_e32 v1, s72, v28
	scratch_store_b32 off, v0, off offset:432 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_add_nc_u32_e32 v2, s72, v29
	scratch_store_b32 off, v0, off offset:436 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_add_nc_u32_e32 v3, s72, v30
	scratch_store_b32 off, v0, off offset:440 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_add_nc_u32_e32 v4, s72, v31
	scratch_store_b32 off, v0, off offset:444 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, s72, v27
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_lo_u32 v0, v0, s73
	scratch_store_b32 off, v0, off offset:448 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v1, s73
	v_mov_b32_e32 v1, 0
	v_add_nc_u32_e32 v211, 0, v32
	scratch_store_b32 off, v0, off offset:452 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v2, s73
	v_mov_b32_e32 v2, 0
	scratch_store_b32 off, v0, off offset:456 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v3, s73
	v_mov_b32_e32 v3, 0
	scratch_store_b32 off, v0, off offset:460 ; 4-byte Folded Spill
	v_mul_lo_u32 v0, v4, s73
	v_mov_b32_e32 v4, 0
	scratch_store_b32 off, v0, off offset:464 ; 4-byte Folded Spill
	v_mov_b32_e32 v0, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:64
	scratch_store_b128 off, v[4:7], off offset:80
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off
	scratch_store_b128 off, v[4:7], off offset:16
	v_dual_mov_b32 v0, 0 :: v_dual_mov_b32 v1, 0
	v_dual_mov_b32 v2, 0 :: v_dual_mov_b32 v3, 0
	v_dual_mov_b32 v4, 0 :: v_dual_mov_b32 v5, 0
	v_dual_mov_b32 v6, 0 :: v_dual_mov_b32 v7, 0
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[0:3], off offset:32
	scratch_store_b128 off, v[4:7], off offset:48
	v_or_b32_e32 v0, 0x300, v60
	v_add_nc_u32_e32 v1, 0, v132
	v_xor_b32_e32 v132, 24, v34
	s_delay_alu instid0(VALU_DEP_3)
	v_add_nc_u32_e32 v0, 0, v0
	scratch_store_b32 off, v0, off offset:468 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v130
	v_xor_b32_e32 v130, 8, v34
	scratch_store_b32 off, v0, off offset:472 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v131
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v0, off offset:476
	scratch_store_b32 off, v33, off offset:204
	v_xor_b32_e32 v0, 0x110, v33
	v_xor_b32_e32 v131, 16, v34
	s_delay_alu instid0(VALU_DEP_2)
	v_add_nc_u32_e32 v206, 0, v0
	.loc	1 1052 18                       ; ragged.py:1052:18
	v_lshrrev_b32_e32 v0, 6, v60
	s_clause 0x1                            ; 8-byte Folded Spill
	scratch_store_b32 off, v1, off offset:480
	scratch_store_b32 off, v0, off offset:484
	v_add_nc_u32_e32 v0, 0, v130
	scratch_store_b32 off, v0, off offset:488 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v131
	scratch_store_b32 off, v0, off offset:492 ; 4-byte Folded Spill
	v_add_nc_u32_e32 v0, 0, v132
	scratch_store_b32 off, v0, off offset:496 ; 4-byte Folded Spill
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 0 18 is_stmt 0                ; ragged.py:0:18
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:484
	scratch_load_b32 v2, off, off offset:200
	.loc	1 1059 22 is_stmt 1             ; ragged.py:1059:22
	s_waitcnt vmcnt(1)
	v_or_b32_e32 v0, s1, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v0, s0, v[124:125]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v0, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 4, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[124:125]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v132, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 8, v1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[124:125]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v133, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 12, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[124:125]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v134, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 16, v1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[124:125]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v136, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 20, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[124:125]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v137, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 24, v1
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[124:125]
	.loc	1 1069 30 is_stmt 0             ; ragged.py:1069:30
	v_cndmask_b32_e64 v138, 0x80000000, v130, s2
	.loc	1 1052 18 is_stmt 1             ; ragged.py:1052:18
	v_or_b32_e32 v130, 28, v1
	.loc	1 1070 38                       ; ragged.py:1070:38
	scratch_load_b32 v1, off, off offset:212 ; 4-byte Folded Reload
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v130, s1, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1069 38                       ; ragged.py:1069:38
	v_mad_u64_u32 v[130:131], null, v130, s0, v[124:125]
	.loc	1 1052 18                       ; ragged.py:1052:18
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v131, 31, v2
	.loc	1 1059 22                       ; ragged.py:1059:22
	v_or_b32_e32 v212, s1, v131
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 1069 30                       ; ragged.py:1069:30
	v_cndmask_b32_e64 v130, 0x80000000, v130, s2
	.loc	1 1110 17                       ; ragged.py:1110:17
	s_add_i32 s1, s1, 32
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cmp_lt_i32 s1, s73
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:216 ; 4-byte Folded Reload
	.loc	1 1070 30 is_stmt 0             ; ragged.py:1070:30
	buffer_load_u8 v17, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:220 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v5, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:224 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v19, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:228 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v9, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:232 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v21, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:236 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v14, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:240 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v33, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:244 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v15, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:248 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v226, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:252 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v16, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:256 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v241, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:260 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v18, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:264 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v224, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:268 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v20, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:272 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v222, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:276 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v25, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:280 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v220, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:284 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v34, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:288 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v218, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:292 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v227, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:296 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v216, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:300 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v225, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:304 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v214, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:308 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v223, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:312 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v213, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:316 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v221, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:320 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v242, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:324 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v219, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:328 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v243, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:332 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v217, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	scratch_load_b32 v1, off, off offset:336 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v244, v131, s[8:11], 0 offen
	.loc	1 1070 38                       ; ragged.py:1070:38
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v131, v1, v212
	.loc	1 1070 30                       ; ragged.py:1070:30
	buffer_load_u8 v215, v131, s[8:11], 0 offen
	.loc	1 1069 30 is_stmt 1             ; ragged.py:1069:30
	s_clause 0x7
	buffer_load_u8 v0, v0, s[4:7], 0 offen
	buffer_load_u8 v131, v132, s[4:7], 0 offen
	buffer_load_u8 v132, v133, s[4:7], 0 offen
	buffer_load_u8 v133, v136, s[4:7], 0 offen
	buffer_load_u8 v136, v137, s[4:7], 0 offen
	buffer_load_u8 v137, v138, s[4:7], 0 offen
	buffer_load_u8 v130, v130, s[4:7], 0 offen
	buffer_load_u8 v134, v134, s[4:7], 0 offen
	v_add_nc_u32_e32 v138, 0, v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(7)
	ds_store_b8 v138, v0
	s_waitcnt vmcnt(6)
	ds_store_b8 v138, v131 offset:256
	s_waitcnt vmcnt(5)
	ds_store_b8 v138, v132 offset:512
	s_waitcnt vmcnt(4)
	ds_store_b8 v138, v133 offset:1024
	s_waitcnt vmcnt(3)
	ds_store_b8 v138, v136 offset:1280
	s_waitcnt vmcnt(2)
	ds_store_b8 v138, v137 offset:1536
	scratch_load_b32 v0, off, off offset:468 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v134
	scratch_load_b32 v0, off, off offset:472 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_store_b8 v0, v130
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1071 27                       ; ragged.py:1071:27
	ds_load_u8 v0, v211 offset:320
	ds_load_u8 v130, v211 offset:256
	ds_load_u8 v131, v211 offset:336
	ds_load_u8 v132, v211 offset:272
	ds_load_u8 v133, v211 offset:352
	ds_load_u8 v134, v211 offset:288
	ds_load_u8 v136, v211 offset:368
	ds_load_u8 v137, v211 offset:304
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v0, v130, v0, 0xc0c0004
	ds_load_u8 v130, v211 offset:448
	ds_load_u8 v138, v211 offset:384
	ds_load_u8 v139, v211 offset:464
	ds_load_u8 v140, v211 offset:400
	ds_load_u8 v141, v211 offset:480
	ds_load_u8 v142, v211 offset:416
	ds_load_u8 v143, v211 offset:496
	ds_load_u8 v144, v211 offset:432
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v130, v138, v130, 0xc0c0004
	ds_load_u8 v138, v211 offset:64
	ds_load_u8 v145, v211
	ds_load_u8 v146, v211 offset:80
	ds_load_u8 v147, v211 offset:16
	ds_load_u8 v148, v211 offset:96
	ds_load_u8 v149, v211 offset:32
	ds_load_u8 v150, v211 offset:112
	ds_load_u8 v151, v211 offset:48
	v_lshl_or_b32 v199, v130, 16, v0
	v_perm_b32 v0, v132, v131, 0xc0c0004
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v130, v140, v139, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v201, v130, 16, v0
	v_perm_b32 v0, v134, v133, 0xc0c0004
	s_waitcnt lgkmcnt(10)
	v_perm_b32 v130, v142, v141, 0xc0c0004
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v138, v145, v138, 0xc0c0004
	ds_load_u8 v145, v211 offset:192
	ds_load_u8 v152, v211 offset:128
	ds_load_u8 v153, v211 offset:208
	ds_load_u8 v154, v211 offset:144
	ds_load_u8 v155, v211 offset:224
	ds_load_u8 v156, v211 offset:160
	ds_load_u8 v157, v211 offset:240
	ds_load_u8 v158, v211 offset:176
	s_waitcnt lgkmcnt(12)
	v_perm_b32 v131, v147, v146, 0xc0c0004
	v_lshl_or_b32 v203, v130, 16, v0
	v_perm_b32 v0, v137, v136, 0xc0c0004
	v_perm_b32 v130, v144, v143, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v4, v130, 16, v0
	s_waitcnt lgkmcnt(6)
	v_perm_b32 v145, v152, v145, 0xc0c0004
	s_waitcnt lgkmcnt(4)
	v_perm_b32 v132, v154, v153, 0xc0c0004
	v_lshl_or_b32 v198, v145, 16, v138
	s_waitcnt lgkmcnt(0)
	v_perm_b32 v133, v158, v157, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_3)
	v_lshl_or_b32 v200, v132, 16, v131
	v_perm_b32 v131, v149, v148, 0xc0c0004
	v_perm_b32 v132, v156, v155, 0xc0c0004
	ds_load_u8 v181, v211 offset:960
	ds_load_u8 v182, v211 offset:896
	ds_load_u8 v153, v211 offset:1024
	ds_load_u8 v176, v211 offset:976
	ds_load_u8 v178, v211 offset:912
	ds_load_u8 v125, v211 offset:992
	ds_load_u8 v8, v211 offset:928
	ds_load_u8 v160, v211 offset:944
	ds_load_u8 v11, v211 offset:832
	ds_load_u8 v204, v211 offset:768
	ds_load_u8 v6, v211 offset:848
	ds_load_u8 v193, v211 offset:784
	ds_load_u8 v10, v211 offset:864
	ds_load_u8 v148, v211 offset:800
	ds_load_u8 v172, v211 offset:880
	ds_load_u8 v175, v211 offset:816
	ds_load_u8 v205, v211 offset:704
	ds_load_u8 v208, v211 offset:640
	ds_load_u8 v209, v211 offset:720
	ds_load_u8 v210, v211 offset:656
	ds_load_u8 v194, v211 offset:736
	ds_load_u8 v195, v211 offset:672
	ds_load_u8 v23, v211 offset:752
	ds_load_u8 v191, v211 offset:688
	ds_load_u8 v207, v211 offset:576
	ds_load_u8 v12, v211 offset:512
	ds_load_u8 v228, v211 offset:592
	ds_load_u8 v229, v211 offset:528
	ds_load_u8 v26, v211 offset:608
	ds_load_u8 v27, v211 offset:544
	ds_load_u8 v28, v211 offset:624
	ds_load_u8 v29, v211 offset:560
	ds_load_u8 v161, v211 offset:1216
	ds_load_u8 v146, v211 offset:1280
	ds_load_u8 v156, v211 offset:1232
	ds_load_u8 v157, v211 offset:1168
	ds_load_u8 v127, v211 offset:1248
	ds_load_u8 v155, v211 offset:1184
	ds_load_u8 v0, v211 offset:1264
	v_lshl_or_b32 v202, v132, 16, v131
	v_perm_b32 v132, v151, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1)
	v_lshl_or_b32 v3, v133, 16, v132
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:196 ; 4-byte Folded Spill
	ds_load_u8 v154, v211 offset:1200
	ds_load_u8 v174, v211 offset:1152
	ds_load_u8 v177, v211 offset:1088
	ds_load_u8 v147, v211 offset:1104
	ds_load_u8 v7, v211 offset:1040
	ds_load_u8 v162, v211 offset:1120
	ds_load_u8 v163, v211 offset:1056
	ds_load_u8 v158, v211 offset:1136
	ds_load_u8 v159, v211 offset:1072
	ds_load_u8 v192, v211 offset:1472
	ds_load_u8 v0, v211 offset:1536
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:96 ; 4-byte Folded Spill
	ds_load_u8 v137, v211 offset:1488
	ds_load_u8 v149, v211 offset:1424
	ds_load_u8 v179, v211 offset:1504
	ds_load_u8 v180, v211 offset:1440
	ds_load_u8 v136, v211 offset:1520
	ds_load_u8 v173, v211 offset:1456
	ds_load_u8 v30, v211 offset:1408
	ds_load_u8 v31, v211 offset:1344
	ds_load_u8 v32, v211 offset:1360
	ds_load_u8 v13, v211 offset:1296
	ds_load_u8 v196, v211 offset:1376
	ds_load_u8 v197, v211 offset:1312
	ds_load_u8 v22, v211 offset:1392
	ds_load_u8 v24, v211 offset:1328
	ds_load_u8 v0, v211 offset:1984
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:132 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:2000
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:116 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1936
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:124 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:2016
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:108 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1952
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:112 ; 4-byte Folded Spill
	scratch_load_b32 v0, off, off offset:476 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v238, v0
	scratch_load_b32 v0, off, off offset:480 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	ds_load_u8 v0, v0
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:100 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1968
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:104 ; 4-byte Folded Spill
	ds_load_u8 v254, v211 offset:1920
	ds_load_u8 v0, v211 offset:1856
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:168 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1872
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:148 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1808
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:156 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1888
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:136 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1824
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:140 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1904
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:120 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1840
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:128 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1728
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:184 ; 4-byte Folded Spill
	ds_load_u8 v152, v211 offset:1792
	ds_load_u8 v0, v211 offset:1744
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:172 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1680
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:176 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1760
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:160 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1696
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:164 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1776
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:144 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1712
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:152 ; 4-byte Folded Spill
	ds_load_u8 v255, v211 offset:1664
	ds_load_u8 v0, v211 offset:1600
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:192 ; 4-byte Folded Spill
	ds_load_u8 v150, v211 offset:1616
	ds_load_u8 v126, v211 offset:1552
	ds_load_u8 v245, v211 offset:1632
	ds_load_u8 v151, v211 offset:1568
	ds_load_u8 v0, v211 offset:1648
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:180 ; 4-byte Folded Spill
	ds_load_u8 v0, v211 offset:1584
	.loc	1 1070 30                       ; ragged.py:1070:30
	s_waitcnt lgkmcnt(0)
	scratch_store_b32 off, v0, off offset:188 ; 4-byte Folded Spill
	s_waitcnt lgkmcnt(0)
	s_barrier
	scratch_load_b32 v0, off, off offset:204 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v239, 0, v0
	ds_store_b8 v239, v17
	ds_store_b8 v239, v19 offset:512
	ds_store_b8 v239, v21 offset:1024
	ds_store_b8 v239, v33 offset:1536
	ds_store_b8 v239, v226 offset:2048
	ds_store_b8 v239, v241 offset:2560
	ds_store_b8 v239, v224 offset:3072
	ds_store_b8 v239, v222 offset:3584
	ds_store_b8 v239, v220 offset:4096
	ds_store_b8 v239, v218 offset:4608
	ds_store_b8 v239, v216 offset:5120
	ds_store_b8 v239, v214 offset:5632
	ds_store_b8 v239, v213 offset:6144
	ds_store_b8 v239, v242 offset:6656
	ds_store_b8 v239, v243 offset:7168
	ds_store_b8 v239, v244 offset:7680
	ds_store_b8 v206, v5
	ds_store_b8 v206, v9 offset:512
	ds_store_b8 v206, v14 offset:1024
	ds_store_b8 v206, v15 offset:1536
	ds_store_b8 v206, v16 offset:2048
	ds_store_b8 v206, v18 offset:2560
	ds_store_b8 v206, v20 offset:3072
	ds_store_b8 v206, v25 offset:3584
	ds_store_b8 v206, v34 offset:4096
	ds_store_b8 v206, v227 offset:4608
	ds_store_b8 v206, v225 offset:5120
	ds_store_b8 v206, v223 offset:5632
	ds_store_b8 v206, v221 offset:6144
	ds_store_b8 v206, v219 offset:6656
	ds_store_b8 v206, v217 offset:7168
	ds_store_b8 v206, v215 offset:7680
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x5                            ; 48-byte Folded Reload
	scratch_load_b32 v0, off, off offset:208
	scratch_load_b32 v1, off, off offset:420
	scratch_load_b128 v[68:71], off, off offset:32
	scratch_load_b128 v[72:75], off, off offset:48
	scratch_load_b32 v2, off, off offset:424
	scratch_load_b32 v5, off, off offset:496
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v224, 0, v0
	.loc	1 1096 25                       ; ragged.py:1096:25
	scratch_load_b32 v0, off, off offset:340 ; 4-byte Folded Reload
	s_waitcnt vmcnt(5)
	v_add_nc_u32_e32 v1, v1, v212
	s_waitcnt vmcnt(2)
	v_add_nc_u32_e32 v9, v2, v212
	scratch_load_b32 v2, off, off offset:428 ; 4-byte Folded Reload
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[213:216], v224 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[43:50], v[213:214], v[198:199], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[84:91], v[213:214], v[200:201], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[213:214], v[202:203], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[116:123], v[213:214], v[3:4], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[215:216], v[198:199], v[76:83] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[215:216], v[200:201], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[108:115], v[215:216], v[202:203], v[108:115] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[215:216], v[3:4], v[68:75] neg_lo:[1,1,0]
	v_dual_mov_b32 v135, v123 :: v_dual_mov_b32 v134, v122
	v_mov_b32_e32 v133, v121
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v145, v115 :: v_dual_mov_b32 v144, v114
	v_dual_mov_b32 v143, v113 :: v_dual_mov_b32 v142, v112
	v_dual_mov_b32 v141, v111 :: v_dual_mov_b32 v140, v110
	v_dual_mov_b32 v139, v109 :: v_dual_mov_b32 v138, v108
	v_dual_mov_b32 v115, v99 :: v_dual_mov_b32 v114, v98
	v_dual_mov_b32 v113, v97 :: v_dual_mov_b32 v112, v96
	v_dual_mov_b32 v111, v95 :: v_dual_mov_b32 v110, v94
	v_dual_mov_b32 v109, v93 :: v_dual_mov_b32 v108, v92
	v_dual_mov_b32 v99, v83 :: v_dual_mov_b32 v98, v82
	v_dual_mov_b32 v97, v81 :: v_dual_mov_b32 v96, v80
	v_dual_mov_b32 v95, v79 :: v_dual_mov_b32 v94, v78
	v_dual_mov_b32 v93, v77 :: v_dual_mov_b32 v92, v76
	v_dual_mov_b32 v76, v246 :: v_dual_mov_b32 v77, v247
	v_dual_mov_b32 v78, v248 :: v_dual_mov_b32 v79, v249
	v_dual_mov_b32 v80, v250 :: v_dual_mov_b32 v81, v251
	v_dual_mov_b32 v82, v252 :: v_dual_mov_b32 v83, v253
	v_dual_mov_b32 v253, v190 :: v_dual_mov_b32 v252, v189
	v_dual_mov_b32 v251, v188 :: v_dual_mov_b32 v250, v187
	v_dual_mov_b32 v249, v186 :: v_dual_mov_b32 v248, v185
	v_dual_mov_b32 v247, v184 :: v_dual_mov_b32 v246, v183
	v_dual_mov_b32 v190, v59 :: v_dual_mov_b32 v189, v58
	v_dual_mov_b32 v188, v57 :: v_dual_mov_b32 v187, v56
	v_dual_mov_b32 v186, v55 :: v_dual_mov_b32 v185, v54
	v_dual_mov_b32 v184, v53 :: v_dual_mov_b32 v183, v52
	v_dual_mov_b32 v63, v42 :: v_dual_mov_b32 v62, v41
	v_dual_mov_b32 v61, v40 :: v_dual_mov_b32 v60, v39
	v_dual_mov_b32 v59, v38 :: v_dual_mov_b32 v58, v37
	v_dual_mov_b32 v57, v36 :: v_dual_mov_b32 v56, v35
	v_dual_mov_b32 v132, v120 :: v_dual_mov_b32 v131, v119
	v_dual_mov_b32 v130, v118 :: v_dual_mov_b32 v129, v117
	v_dual_mov_b32 v128, v116 :: v_dual_mov_b32 v123, v107
	v_mov_b32_e32 v122, v106
	v_mov_b32_e32 v120, v104
	v_mov_b32_e32 v118, v102
	v_dual_mov_b32 v116, v100 :: v_dual_mov_b32 v121, v105
	v_mov_b32_e32 v119, v103
	v_mov_b32_e32 v117, v101
	v_dual_mov_b32 v107, v91 :: v_dual_mov_b32 v106, v90
	v_mov_b32_e32 v104, v88
	v_dual_mov_b32 v102, v86 :: v_dual_mov_b32 v101, v85
	v_dual_mov_b32 v100, v84 :: v_dual_mov_b32 v105, v89
	v_mov_b32_e32 v103, v87
	v_dual_mov_b32 v91, v50 :: v_dual_mov_b32 v90, v49
	v_dual_mov_b32 v89, v48 :: v_dual_mov_b32 v88, v47
	v_dual_mov_b32 v87, v46 :: v_dual_mov_b32 v86, v45
	v_dual_mov_b32 v85, v44 :: v_dual_mov_b32 v84, v43
	.loc	1 1096 25                       ; ragged.py:1096:25
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v213, v0, v212
	scratch_load_b32 v0, off, off offset:344 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v17, v2, v212
	scratch_load_b32 v2, off, off offset:432 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v214, v0, v212
	scratch_load_b32 v0, off, off offset:348 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v25, v2, v212
	scratch_load_b32 v2, off, off offset:436 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v215, v0, v212
	scratch_load_b32 v0, off, off offset:352 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v33, v2, v212
	scratch_load_b32 v2, off, off offset:440 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v216, v0, v212
	scratch_load_b32 v0, off, off offset:356 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v34, v2, v212
	scratch_load_b32 v2, off, off offset:444 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v217, v0, v212
	scratch_load_b32 v0, off, off offset:360 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v35, v2, v212
	scratch_load_b32 v2, off, off offset:448 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v218, v0, v212
	scratch_load_b32 v0, off, off offset:364 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v36, v2, v212
	scratch_load_b32 v2, off, off offset:452 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v219, v0, v212
	scratch_load_b32 v0, off, off offset:368 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v37, v2, v212
	scratch_load_b32 v2, off, off offset:456 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v220, v0, v212
	scratch_load_b32 v0, off, off offset:372 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v38, v2, v212
	scratch_load_b32 v2, off, off offset:460 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v221, v0, v212
	scratch_load_b32 v0, off, off offset:376 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v39, v2, v212
	scratch_load_b32 v2, off, off offset:464 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v222, v0, v212
	scratch_load_b32 v0, off, off offset:380 ; 4-byte Folded Reload
	s_waitcnt vmcnt(1)
	v_add_nc_u32_e32 v40, v2, v212
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v223, v0, v212
	scratch_load_b32 v0, off, off offset:384 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v225, v0, v212
	scratch_load_b32 v0, off, off offset:388 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v226, v0, v212
	scratch_load_b32 v0, off, off offset:392 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v227, v0, v212
	scratch_load_b32 v0, off, off offset:396 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v241, v0, v212
	scratch_load_b32 v0, off, off offset:400 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v242, v0, v212
	scratch_load_b32 v0, off, off offset:404 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v243, v0, v212
	scratch_load_b32 v0, off, off offset:408 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v244, v0, v212
	scratch_load_b32 v0, off, off offset:412 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v240, v0, v212
	scratch_load_b32 v0, off, off offset:416 ; 4-byte Folded Reload
	s_waitcnt vmcnt(0)
	v_add_nc_u32_e32 v0, v0, v212
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_clause 0x1f
	buffer_load_u8 v2, v213, s[8:11], 0 offen
	buffer_load_u8 v41, v215, s[8:11], 0 offen
	buffer_load_u8 v42, v217, s[8:11], 0 offen
	buffer_load_u8 v43, v219, s[8:11], 0 offen
	buffer_load_u8 v44, v221, s[8:11], 0 offen
	buffer_load_u8 v45, v223, s[8:11], 0 offen
	buffer_load_u8 v46, v226, s[8:11], 0 offen
	buffer_load_u8 v47, v241, s[8:11], 0 offen
	buffer_load_u8 v48, v243, s[8:11], 0 offen
	buffer_load_u8 v226, v240, s[8:11], 0 offen
	buffer_load_u8 v1, v1, s[8:11], 0 offen
	buffer_load_u8 v17, v17, s[8:11], 0 offen
	buffer_load_u8 v33, v33, s[8:11], 0 offen
	buffer_load_u8 v35, v35, s[8:11], 0 offen
	buffer_load_u8 v37, v37, s[8:11], 0 offen
	buffer_load_u8 v39, v39, s[8:11], 0 offen
	buffer_load_u8 v240, v220, s[8:11], 0 offen
	buffer_load_u8 v241, v218, s[8:11], 0 offen
	buffer_load_u8 v243, v216, s[8:11], 0 offen
	buffer_load_u8 v49, v214, s[8:11], 0 offen
	buffer_load_u8 v50, v242, s[8:11], 0 offen
	buffer_load_u8 v51, v227, s[8:11], 0 offen
	buffer_load_u8 v52, v225, s[8:11], 0 offen
	buffer_load_u8 v53, v222, s[8:11], 0 offen
	buffer_load_u8 v25, v25, s[8:11], 0 offen
	buffer_load_u8 v9, v9, s[8:11], 0 offen
	buffer_load_u8 v0, v0, s[8:11], 0 offen
	buffer_load_u8 v54, v244, s[8:11], 0 offen
	buffer_load_u8 v40, v40, s[8:11], 0 offen
	buffer_load_u8 v38, v38, s[8:11], 0 offen
	buffer_load_u8 v36, v36, s[8:11], 0 offen
	buffer_load_u8 v34, v34, s[8:11], 0 offen
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v242, off, off offset:488
	scratch_load_b32 v244, off, off offset:492
	.loc	1 1070 30                       ; ragged.py:1070:30
	ds_load_2addr_stride64_b64 v[220:223], v5 offset1:8
	s_waitcnt vmcnt(1)
	ds_load_2addr_stride64_b64 v[212:215], v242 offset1:8
	s_waitcnt vmcnt(0)
	ds_load_2addr_stride64_b64 v[216:219], v244 offset1:8
	.loc	1 1095 35                       ; ragged.py:1095:35
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b8 v239, v2
	ds_store_b8 v239, v41 offset:512
	ds_store_b8 v239, v42 offset:1024
	ds_store_b8 v239, v43 offset:1536
	ds_store_b8 v239, v44 offset:2048
	ds_store_b8 v239, v45 offset:2560
	ds_store_b8 v239, v46 offset:3072
	ds_store_b8 v239, v47 offset:3584
	ds_store_b8 v239, v48 offset:4096
	ds_store_b8 v239, v226 offset:4608
	ds_store_b8 v239, v1 offset:5120
	ds_store_b8 v239, v17 offset:5632
	ds_store_b8 v239, v33 offset:6144
	ds_store_b8 v239, v35 offset:6656
	ds_store_b8 v239, v37 offset:7168
	ds_store_b8 v239, v39 offset:7680
	ds_store_b8 v206, v49
	ds_store_b8 v206, v243 offset:512
	ds_store_b8 v206, v241 offset:1024
	ds_store_b8 v206, v240 offset:1536
	ds_store_b8 v206, v53 offset:2048
	ds_store_b8 v206, v52 offset:2560
	ds_store_b8 v206, v51 offset:3072
	ds_store_b8 v206, v50 offset:3584
	ds_store_b8 v206, v54 offset:4096
	ds_store_b8 v206, v0 offset:4608
	ds_store_b8 v206, v9 offset:5120
	ds_store_b8 v206, v25 offset:5632
	ds_store_b8 v206, v34 offset:6144
	ds_store_b8 v206, v36 offset:6656
	ds_store_b8 v206, v38 offset:7168
	ds_store_b8 v206, v40 offset:7680
	v_mov_b32_e32 v35, v56
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[14:17], off, off offset:64
	scratch_load_b128 v[18:21], off, off offset:80
	v_dual_mov_b32 v36, v57 :: v_dual_mov_b32 v37, v58
	v_dual_mov_b32 v38, v59 :: v_dual_mov_b32 v39, v60
	v_dual_mov_b32 v40, v61 :: v_dual_mov_b32 v41, v62
	v_mov_b32_e32 v42, v63
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[60:63], off, off
	scratch_load_b128 v[64:67], off, off offset:16
	ds_load_2addr_stride64_b64 v[224:227], v224 offset1:8
	v_dual_mov_b32 v52, v183 :: v_dual_mov_b32 v53, v184
	v_dual_mov_b32 v54, v185 :: v_dual_mov_b32 v55, v186
	v_dual_mov_b32 v56, v187 :: v_dual_mov_b32 v57, v188
	v_dual_mov_b32 v58, v189 :: v_dual_mov_b32 v59, v190
	v_dual_mov_b32 v183, v246 :: v_dual_mov_b32 v184, v247
	v_dual_mov_b32 v185, v248 :: v_dual_mov_b32 v186, v249
	v_dual_mov_b32 v187, v250 :: v_dual_mov_b32 v188, v251
	v_dual_mov_b32 v189, v252 :: v_dual_mov_b32 v190, v253
	v_dual_mov_b32 v253, v83 :: v_dual_mov_b32 v252, v82
	v_dual_mov_b32 v251, v81 :: v_dual_mov_b32 v250, v80
	v_dual_mov_b32 v249, v79 :: v_dual_mov_b32 v248, v78
	v_dual_mov_b32 v247, v77 :: v_dual_mov_b32 v246, v76
	v_mov_b32_e32 v76, v92
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v0, v204, v11, 0xc0c0004
	v_perm_b32 v1, v182, v181, 0xc0c0004
	v_perm_b32 v2, v12, v207, 0xc0c0004
	v_perm_b32 v9, v208, v205, 0xc0c0004
	v_dual_mov_b32 v78, v94 :: v_dual_mov_b32 v43, v84
	v_dual_mov_b32 v44, v85 :: v_dual_mov_b32 v45, v86
	v_dual_mov_b32 v46, v87 :: v_dual_mov_b32 v47, v88
	v_dual_mov_b32 v48, v89 :: v_dual_mov_b32 v49, v90
	v_mov_b32_e32 v50, v91
	v_dual_mov_b32 v84, v100 :: v_dual_mov_b32 v85, v101
	v_dual_mov_b32 v86, v102 :: v_dual_mov_b32 v87, v103
	v_dual_mov_b32 v88, v104 :: v_dual_mov_b32 v89, v105
	v_dual_mov_b32 v90, v106 :: v_dual_mov_b32 v91, v107
	v_dual_mov_b32 v100, v116 :: v_dual_mov_b32 v101, v117
	v_dual_mov_b32 v102, v118 :: v_dual_mov_b32 v103, v119
	v_dual_mov_b32 v104, v120 :: v_dual_mov_b32 v105, v121
	v_dual_mov_b32 v106, v122 :: v_dual_mov_b32 v107, v123
	v_dual_mov_b32 v116, v128 :: v_dual_mov_b32 v117, v129
	v_dual_mov_b32 v118, v130 :: v_dual_mov_b32 v119, v131
	v_dual_mov_b32 v120, v132 :: v_dual_mov_b32 v121, v133
	v_dual_mov_b32 v122, v134 :: v_dual_mov_b32 v123, v135
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[246:253], v[224:225], v[3:4], v[246:253] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v131, v1, 16, v0
	v_lshl_or_b32 v130, v9, 16, v2
	v_perm_b32 v0, v193, v6, 0xc0c0004
	v_perm_b32 v1, v178, v176, 0xc0c0004
	v_perm_b32 v2, v229, v228, 0xc0c0004
	v_mov_b32_e32 v77, v93
	v_dual_mov_b32 v79, v95 :: v_dual_mov_b32 v80, v96
	s_delay_alu instid0(VALU_DEP_4)
	v_lshl_or_b32 v182, v1, 16, v0
	v_perm_b32 v0, v148, v10, 0xc0c0004
	v_perm_b32 v1, v8, v125, 0xc0c0004
	v_dual_mov_b32 v81, v97 :: v_dual_mov_b32 v82, v98
	v_dual_mov_b32 v83, v99 :: v_dual_mov_b32 v92, v108
	v_dual_mov_b32 v93, v109 :: v_dual_mov_b32 v94, v110
	v_dual_mov_b32 v95, v111 :: v_dual_mov_b32 v96, v112
	v_dual_mov_b32 v97, v113 :: v_dual_mov_b32 v98, v114
	v_dual_mov_b32 v99, v115 :: v_dual_mov_b32 v108, v138
	v_dual_mov_b32 v109, v139 :: v_dual_mov_b32 v110, v140
	v_dual_mov_b32 v111, v141 :: v_dual_mov_b32 v112, v142
	v_dual_mov_b32 v113, v143 :: v_dual_mov_b32 v114, v144
	v_mov_b32_e32 v115, v145
	v_wmma_i32_16x16x16_iu4 v[43:50], v[212:213], v[130:131], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[214:215], v[130:131], v[76:83] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[52:59], v[226:227], v[198:199], v[52:59] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[230:237], v[224:225], v[200:201], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[226:227], v[200:201], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[35:42], v[224:225], v[202:203], v[35:42] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[226:227], v[202:203], v[164:171] neg_lo:[1,1,0]
	s_waitcnt vmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[14:21], v[224:225], v[198:199], v[14:21] neg_lo:[1,1,0]
	s_waitcnt vmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[60:67], v[226:227], v[3:4], v[60:67] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_perm_b32 v4, v210, v209, 0xc0c0004
	v_perm_b32 v3, v157, v156, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v181, v4, 16, v2
	v_perm_b32 v2, v27, v26, 0xc0c0004
	v_perm_b32 v4, v195, v194, 0xc0c0004
	v_lshl_or_b32 v194, v1, 16, v0
	v_perm_b32 v0, v29, v28, 0xc0c0004
	v_perm_b32 v1, v191, v23, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[84:91], v[212:213], v[181:182], v[84:91] neg_lo:[1,1,0]
	v_lshl_or_b32 v193, v4, 16, v2
	v_perm_b32 v2, v175, v172, 0xc0c0004
	v_perm_b32 v4, v160, v238, 0xc0c0004
	v_lshl_or_b32 v175, v1, 16, v0
	v_wmma_i32_16x16x16_iu4 v[92:99], v[214:215], v[181:182], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[212:213], v[193:194], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[108:115], v[214:215], v[193:194], v[108:115] neg_lo:[1,1,0]
	v_lshl_or_b32 v176, v4, 16, v2
	v_perm_b32 v2, v153, v177, 0xc0c0004
	v_perm_b32 v4, v174, v161, 0xc0c0004
	v_perm_b32 v0, v146, v31, 0xc0c0004
	v_perm_b32 v1, v30, v192, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[116:123], v[212:213], v[175:176], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[214:215], v[175:176], v[68:75] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[212:215], v242 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[14:21], v[212:213], v[130:131], v[14:21] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[52:59], v[214:215], v[130:131], v[52:59] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v130, v4, 16, v2
	v_perm_b32 v2, v7, v147, 0xc0c0004
	v_lshl_or_b32 v131, v1, 16, v0
	v_perm_b32 v0, v13, v32, 0xc0c0004
	v_perm_b32 v1, v149, v137, 0xc0c0004
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[230:237], v[212:213], v[181:182], v[230:237] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v160, v3, 16, v2
	v_perm_b32 v2, v163, v162, 0xc0c0004
	v_perm_b32 v3, v155, v127, 0xc0c0004
	v_lshl_or_b32 v161, v1, 16, v0
	v_perm_b32 v0, v197, v196, 0xc0c0004
	v_perm_b32 v1, v180, v179, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[43:50], v[216:217], v[130:131], v[43:50] neg_lo:[1,1,0]
	v_lshl_or_b32 v162, v3, 16, v2
	scratch_load_b32 v3, off, off offset:196 ; 4-byte Folded Reload
	v_perm_b32 v2, v159, v158, 0xc0c0004
	v_lshl_or_b32 v163, v1, 16, v0
	v_perm_b32 v0, v24, v22, 0xc0c0004
	v_perm_b32 v1, v173, v136, 0xc0c0004
	v_wmma_i32_16x16x16_iu4 v[76:83], v[218:219], v[130:131], v[76:83] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[183:190], v[214:215], v[181:182], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[35:42], v[212:213], v[193:194], v[35:42] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[214:215], v[193:194], v[164:171] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v158, v1, 16, v0
	scratch_load_b32 v0, off, off offset:168 ; 4-byte Folded Reload
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[246:253], v[212:213], v[175:176], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[214:215], v[175:176], v[60:67] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_wmma_i32_16x16x16_iu4 v[84:91], v[216:217], v[160:161], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[218:219], v[160:161], v[92:99] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[100:107], v[216:217], v[162:163], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[108:115], v[218:219], v[162:163], v[108:115] neg_lo:[1,1,0]
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v154, v3, 0xc0c0004
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[153:156], v244 offset1:8
	.loc	1 1071 27                       ; ragged.py:1071:27
	v_lshl_or_b32 v157, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:96
	scratch_load_b32 v3, off, off offset:192
	v_wmma_i32_16x16x16_iu4 v[116:123], v[216:217], v[157:158], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[218:219], v[157:158], v[68:75] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[14:21], v[153:154], v[130:131], v[14:21] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[52:59], v[155:156], v[130:131], v[52:59] neg_lo:[1,1,0]
	.loc	1 1095 35                       ; ragged.py:1095:35
	ds_load_2addr_stride64_b64 v[130:133], v5 offset1:8
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[230:237], v[153:154], v[160:161], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[155:156], v[160:161], v[183:190] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[35:42], v[153:154], v[162:163], v[35:42] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[155:156], v[162:163], v[164:171] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[246:253], v[153:154], v[157:158], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[155:156], v[157:158], v[60:67] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v2, v3, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:184
	scratch_load_b32 v1, off, off offset:132
	v_perm_b32 v0, v152, v0, 0xc0c0004
	s_waitcnt vmcnt(1)
	v_perm_b32 v3, v255, v3, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v254, v1, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v138, v3, 16, v2
	v_lshl_or_b32 v139, v1, 16, v0
	s_clause 0x3                            ; 16-byte Folded Reload
	scratch_load_b32 v0, off, off offset:148
	scratch_load_b32 v1, off, off offset:156
	scratch_load_b32 v3, off, off offset:172
	scratch_load_b32 v4, off, off offset:176
	v_wmma_i32_16x16x16_iu4 v[43:50], v[220:221], v[138:139], v[43:50] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[76:83], v[222:223], v[138:139], v[76:83] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[14:21], v[130:131], v[138:139], v[14:21] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[52:59], v[132:133], v[138:139], v[52:59] neg_lo:[1,1,0]
	s_clause 0x1                            ; 32-byte Folded Spill
	scratch_store_b128 off, v[14:17], off offset:64
	scratch_store_b128 off, v[18:21], off offset:80
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:116
	scratch_load_b32 v2, off, off offset:124
	s_waitcnt vmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v2, v126, v150, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2)
	v_lshl_or_b32 v141, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:136
	scratch_load_b32 v1, off, off offset:140
	v_lshl_or_b32 v140, v3, 16, v2
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:160
	scratch_load_b32 v4, off, off offset:164
	v_wmma_i32_16x16x16_iu4 v[84:91], v[220:221], v[140:141], v[84:91] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[92:99], v[222:223], v[140:141], v[92:99] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[230:237], v[130:131], v[140:141], v[230:237] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[183:190], v[132:133], v[140:141], v[183:190] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(2)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:108
	scratch_load_b32 v2, off, off offset:112
	s_waitcnt vmcnt(2)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	v_perm_b32 v2, v151, v245, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v137, v1, 16, v0
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v0, off, off offset:180
	scratch_load_b32 v1, off, off offset:188
	v_lshl_or_b32 v136, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[100:107], v[220:221], v[136:137], v[100:107] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[108:115], v[222:223], v[136:137], v[108:115] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[35:42], v[130:131], v[136:137], v[35:42] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[164:171], v[132:133], v[136:137], v[164:171] neg_lo:[1,1,0]
	.loc	1 1071 27                       ; ragged.py:1071:27
	s_waitcnt vmcnt(0)
	v_perm_b32 v0, v1, v0, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v1, off, off offset:144
	scratch_load_b32 v2, off, off offset:152
	s_waitcnt vmcnt(0)
	v_perm_b32 v1, v2, v1, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v2, off, off offset:120
	scratch_load_b32 v3, off, off offset:128
	v_lshl_or_b32 v142, v1, 16, v0
	s_waitcnt vmcnt(0)
	v_perm_b32 v2, v3, v2, 0xc0c0004
	s_clause 0x1                            ; 8-byte Folded Reload
	scratch_load_b32 v3, off, off offset:100
	scratch_load_b32 v4, off, off offset:104
	s_waitcnt vmcnt(0)
	v_perm_b32 v3, v4, v3, 0xc0c0004
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_or_b32 v143, v3, 16, v2
	v_wmma_i32_16x16x16_iu4 v[116:123], v[220:221], v[142:143], v[116:123] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[68:75], v[222:223], v[142:143], v[68:75] neg_lo:[1,1,0]
	.loc	1 1100 32                       ; ragged.py:1100:32
	v_wmma_i32_16x16x16_iu4 v[246:253], v[130:131], v[142:143], v[246:253] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[60:67], v[132:133], v[142:143], v[60:67] neg_lo:[1,1,0]
	s_clause 0x3                            ; 64-byte Folded Spill
	scratch_store_b128 off, v[68:71], off offset:32
	scratch_store_b128 off, v[72:75], off offset:48
	scratch_store_b128 off, v[60:63], off
	scratch_store_b128 off, v[64:67], off offset:16
	.loc	1 1058 19                       ; ragged.py:1058:19
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %._crit_edge.loopexit
	.loc	1 0 19 is_stmt 0                ; ragged.py:0:19
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:32
	scratch_load_b128 v[5:8], off, off offset:48
	.loc	1 1111 19 is_stmt 1             ; ragged.py:1111:19
	v_cvt_f32_i32_e32 v175, v44
	v_cvt_f32_i32_e32 v173, v45
	v_cvt_f32_i32_e32 v172, v46
	v_cvt_f32_i32_e32 v145, v47
	v_cvt_f32_i32_e32 v146, v48
	v_cvt_f32_i32_e32 v147, v49
	v_cvt_f32_i32_e32 v148, v50
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[44:47], off, off
	scratch_load_b128 v[48:51], off, off offset:16
	v_cvt_f32_i32_e32 v130, v80
	v_cvt_f32_i32_e32 v141, v95
	v_cvt_f32_i32_e32 v138, v97
	v_cvt_f32_i32_e32 v161, v101
	v_cvt_f32_i32_e32 v163, v102
	v_cvt_f32_i32_e32 v162, v103
	v_cvt_f32_i32_e32 v159, v107
	v_cvt_f32_i32_e32 v174, v43
	v_cvt_f32_i32_e32 v149, v76
	v_cvt_f32_i32_e32 v142, v77
	v_cvt_f32_i32_e32 v143, v78
	v_cvt_f32_i32_e32 v144, v79
	v_cvt_f32_i32_e32 v135, v81
	v_cvt_f32_i32_e32 v134, v82
	v_cvt_f32_i32_e32 v131, v83
	v_cvt_f32_i32_e32 v0, v84
	v_cvt_f32_i32_e32 v129, v85
	v_cvt_f32_i32_e32 v133, v86
	v_cvt_f32_i32_e32 v132, v87
	v_cvt_f32_i32_e32 v151, v88
	v_cvt_f32_i32_e32 v152, v89
	v_cvt_f32_i32_e32 v153, v90
	v_cvt_f32_i32_e32 v154, v91
	v_cvt_f32_i32_e32 v150, v92
	v_cvt_f32_i32_e32 v139, v93
	v_cvt_f32_i32_e32 v140, v94
	v_cvt_f32_i32_e32 v77, v96
	v_cvt_f32_i32_e32 v137, v98
	v_cvt_f32_i32_e32 v136, v99
	v_cvt_f32_i32_e32 v160, v100
	v_cvt_f32_i32_e32 v156, v104
	v_cvt_f32_i32_e32 v157, v105
	v_cvt_f32_i32_e32 v158, v106
	v_cvt_f32_i32_e32 v155, v108
	v_cvt_f32_i32_e32 v88, v109
	v_cvt_f32_i32_e32 v105, v110
	v_cvt_f32_i32_e32 v106, v111
	v_cvt_f32_i32_e32 v76, v112
	v_cvt_f32_i32_e32 v100, v113
	v_cvt_f32_i32_e32 v99, v114
	v_cvt_f32_i32_e32 v98, v115
	v_cvt_f32_i32_e32 v60, v116
	v_cvt_f32_i32_e32 v113, v117
	v_cvt_f32_i32_e32 v115, v118
	v_cvt_f32_i32_e32 v114, v119
	v_cvt_f32_i32_e32 v108, v120
	v_cvt_f32_i32_e32 v109, v121
	v_cvt_f32_i32_e32 v110, v122
	v_cvt_f32_i32_e32 v111, v123
	.loc	1 1112 24                       ; ragged.py:1112:24
	v_cvt_f32_i32_e32 v75, v52
	v_cvt_f32_i32_e32 v68, v53
	v_cvt_f32_i32_e32 v69, v54
	v_cvt_f32_i32_e32 v70, v55
	v_cvt_f32_i32_e32 v67, v57
	v_cvt_f32_i32_e32 v65, v58
	v_cvt_f32_i32_e32 v15, v59
	v_cvt_f32_i32_e32 v90, v230
	v_cvt_f32_i32_e32 v89, v231
	v_cvt_f32_i32_e32 v87, v232
	v_cvt_f32_i32_e32 v72, v233
	v_cvt_f32_i32_e32 v81, v234
	v_cvt_f32_i32_e32 v177, v235
	v_cvt_f32_i32_e32 v79, v236
	v_cvt_f32_i32_e32 v78, v237
	v_cvt_f32_i32_e32 v82, v183
	v_cvt_f32_i32_e32 v17, v184
	v_cvt_f32_i32_e32 v16, v185
	v_cvt_f32_i32_e32 v14, v186
	v_cvt_f32_i32_e32 v20, v188
	v_cvt_f32_i32_e32 v19, v189
	v_cvt_f32_i32_e32 v18, v190
	v_cvt_f32_i32_e32 v86, v35
	v_cvt_f32_i32_e32 v85, v36
	v_cvt_f32_i32_e32 v83, v37
	v_cvt_f32_i32_e32 v84, v38
	v_cvt_f32_i32_e32 v31, v39
	v_cvt_f32_i32_e32 v30, v40
	v_cvt_f32_i32_e32 v29, v41
	v_cvt_f32_i32_e32 v28, v42
	v_cvt_f32_i32_e32 v27, v164
	v_cvt_f32_i32_e32 v13, v165
	v_cvt_f32_i32_e32 v12, v166
	v_cvt_f32_i32_e32 v11, v167
	v_cvt_f32_i32_e32 v23, v169
	v_cvt_f32_i32_e32 v22, v170
	v_cvt_f32_i32_e32 v21, v171
	v_cvt_f32_i32_e32 v36, v246
	v_cvt_f32_i32_e32 v35, v247
	v_cvt_f32_i32_e32 v32, v248
	v_cvt_f32_i32_e32 v33, v249
	v_cvt_f32_i32_e32 v40, v250
	v_cvt_f32_i32_e32 v38, v251
	v_cvt_f32_i32_e32 v39, v252
	v_cvt_f32_i32_e32 v37, v253
	v_mov_b32_e32 v41, s17
	.loc	1 1111 19                       ; ragged.py:1111:19
	s_waitcnt vmcnt(3)
	v_cvt_f32_i32_e32 v107, v1
	v_cvt_f32_i32_e32 v95, v2
	v_cvt_f32_i32_e32 v80, v3
	v_cvt_f32_i32_e32 v97, v4
	s_waitcnt vmcnt(2)
	v_cvt_f32_i32_e32 v66, v5
	v_cvt_f32_i32_e32 v103, v6
	v_cvt_f32_i32_e32 v102, v7
	v_cvt_f32_i32_e32 v101, v8
	s_clause 0x1                            ; 32-byte Folded Reload
	scratch_load_b128 v[1:4], off, off offset:64
	scratch_load_b128 v[5:8], off, off offset:80
	.loc	1 1112 24                       ; ragged.py:1112:24
	s_waitcnt vmcnt(3)
	v_cvt_f32_i32_e32 v34, v44
	scratch_load_b32 v44, off, off offset:200 ; 4-byte Folded Reload
	v_cvt_f32_i32_e32 v10, v45
	v_cvt_f32_i32_e32 v9, v46
	s_waitcnt vmcnt(3)
	v_cvt_f32_i32_e32 v26, v49
	v_cvt_f32_i32_e32 v25, v50
	v_cvt_f32_i32_e32 v24, v51
	s_waitcnt vmcnt(2)
	v_cvt_f32_i32_e32 v91, v1
	v_cvt_f32_i32_e32 v92, v2
	v_cvt_f32_i32_e32 v94, v3
	v_cvt_f32_i32_e32 v93, v4
	s_waitcnt vmcnt(1)
	v_cvt_f32_i32_e32 v71, v5
	v_cvt_f32_i32_e32 v176, v6
	v_cvt_f32_i32_e32 v73, v7
	v_cvt_f32_i32_e32 v74, v8
	v_cvt_f32_i32_e32 v7, v56
	v_cvt_f32_i32_e32 v6, v187
	v_cvt_f32_i32_e32 v2, v168
	v_cvt_f32_i32_e32 v8, v47
	v_cvt_f32_i32_e32 v1, v48
	v_mov_b32_e32 v4, s74
	s_waitcnt vmcnt(0)
	v_dual_mov_b32 v3, v124 :: v_dual_lshlrev_b32 v42, 1, v44
	v_and_b32_e32 v5, 0x7f, v44
	v_and_b32_e32 v166, 0x80, v44
.LBB0_7:                                ; %._crit_edge
	.loc	1 0 24 is_stmt 0                ; ragged.py:0:24
	scratch_load_b32 v164, off, off offset:200 ; 4-byte Folded Reload
	.loc	1 1122 17 is_stmt 1             ; ragged.py:1122:17
	v_and_b32_e32 v42, 28, v42
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt lgkmcnt(0)
	s_and_b32 s65, s13, 0xffff
	s_mov_b32 s67, 0x31027000
	s_mov_b32 s66, 0x7ffffffe
	s_mov_b32 s64, s12
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v43, 5, v164
	v_and_b32_e32 v45, 0xf0, v164
	v_and_b32_e32 v165, 15, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 32, v43
	v_lshl_add_u32 v44, v45, 2, 0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v46, v44, v43, v42
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v42, s0, s74, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add_co_ci_u32_e64 v43, null, s75, 0, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v44, 1, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[78:79], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 16, v165
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v42, s1, s74, v42
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v43, null, s75, 0, s1
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v48, 1, v42
	s_mov_b32 s0, 0x76543210
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[76:77], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s4, s[78:79], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 32, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v42, s5, s74, v42
	v_add_co_ci_u32_e64 v43, null, s75, 0, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1114 36 is_stmt 1             ; ragged.py:1114:36
	v_lshlrev_b32_e32 v49, 1, v42
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s5, s[76:77], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s6, s[78:79], v[42:43]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v42, 48, v165
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v42, s7, s74, v42
	v_add_co_ci_u32_e64 v43, null, s75, 0, s7
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1046 21 is_stmt 1             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s7, s[76:77], v[42:43]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s8, s[78:79], v[42:43]
	.loc	1 1120 21 is_stmt 1             ; ragged.py:1120:21
	v_or_b32_e32 v43, s16, v164
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v42, 1, v42
	.loc	1 1120 21                       ; ragged.py:1120:21
	v_add_nc_u32_e32 v47, v43, v41
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v41, 0x80000000, v44, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s1, s4
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v43, 0x80000000, v48, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s5, s6
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v44, 0x80000000, v49, vcc_lo
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, s7, s8
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_cndmask_b32_e32 v42, 0x80000000, v42, vcc_lo
	s_clause 0x3
	buffer_load_u16 v41, v41, s[64:67], 0 offen
	buffer_load_u16 v43, v43, s[64:67], 0 offen
	buffer_load_u16 v48, v44, s[64:67], 0 offen
	buffer_load_u16 v49, v42, s[64:67], 0 offen
	.loc	1 1119 36                       ; ragged.py:1119:36
	s_and_b32 s65, s15, 0xffff
	s_mov_b32 s64, s14
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(2)
	v_lshlrev_b32_e32 v43, 16, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v55, v132, v43 :: v_dual_lshlrev_b32 v44, 16, v41
	v_mul_f32_e32 v51, v174, v44
	.loc	1 1114 36                       ; ragged.py:1114:36
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v41, 16, v49
	.loc	1 1119 36                       ; ragged.py:1119:36
	v_lshlrev_b32_e32 v42, 1, v47
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v50, v175, v44
	v_mul_f32_e32 v56, v129, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_lshl_add_u32 v45, v45, 1, 0
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v117, v113, v41
	.loc	1 1119 36                       ; ragged.py:1119:36
	buffer_load_u16 v42, v42, s[64:67], 0 offen
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v49, v172, v44 :: v_dual_mul_f32 v6, v6, v43
	v_mul_f32_e32 v53, v133, v43
	v_dual_mul_f32 v57, v0, v43 :: v_dual_mul_f32 v0, v115, v41
	v_dual_mul_f32 v116, v114, v41 :: v_dual_mul_f32 v71, v71, v44
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v73, v73, v44
	v_mul_f32_e32 v17, v17, v43
	s_waitcnt vmcnt(0)
	v_dual_mul_f32 v7, v7, v44 :: v_dual_lshlrev_b32 v42, 16, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_store_b32 v46, v42
	.loc	1 1114 36                       ; ragged.py:1114:36
	v_lshlrev_b32_e32 v42, 16, v48
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[112:115], v45
	ds_load_b128 v[124:127], v45 offset:16
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v48, v173, v44 :: v_dual_mul_f32 v63, v163, v42
	v_mul_f32_e32 v61, v162, v42
	v_mul_f32_e32 v58, v161, v42
	v_mul_f32_e32 v64, v160, v42
	v_mul_f32_e32 v129, v158, v42
	v_dual_mul_f32 v131, v131, v44 :: v_dual_mul_f32 v100, v100, v42
	v_mul_f32_e32 v76, v76, v42
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v83, v83, v42
	v_mul_f32_e32 v31, v31, v42
	v_mul_f32_e32 v29, v29, v42
	v_mul_f32_e32 v27, v27, v42
	v_mul_f32_e32 v13, v13, v42
	v_mul_f32_e32 v12, v12, v42
	v_mul_f32_e32 v2, v2, v42
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_mul_f32_e32 v52, v51, v112
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v118, v60, v41
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v54, v50, v113 :: v_dual_mul_f32 v119, v48, v114
	v_mul_f32_e32 v60, v49, v115
	v_mul_f32_e32 v49, v57, v112
	v_mul_f32_e32 v57, v56, v113
	v_dual_mul_f32 v59, v55, v115 :: v_dual_mul_f32 v62, v53, v114
	v_dual_mul_f32 v51, v64, v112 :: v_dual_mul_f32 v58, v58, v113
	v_dual_mul_f32 v61, v61, v115 :: v_dual_mul_f32 v48, v118, v112
	v_dual_mul_f32 v63, v63, v114 :: v_dual_mul_f32 v50, v117, v113
	v_dual_mul_f32 v53, v116, v115 :: v_dual_mul_f32 v64, v146, v44
	v_dual_mul_f32 v56, v0, v114 :: v_dual_mul_f32 v55, v147, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v148, v44 :: v_dual_mul_f32 v113, v154, v43
	v_dual_mul_f32 v112, v145, v44 :: v_dual_mul_f32 v115, v151, v43
	v_mul_f32_e32 v114, v153, v43
	v_dual_mul_f32 v116, v152, v43 :: v_dual_mul_f32 v111, v111, v41
	v_dual_mul_f32 v128, v159, v42 :: v_dual_mul_f32 v145, v110, v41
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v132, v157, v42 :: v_dual_mul_f32 v121, v64, v125
	v_dual_mul_f32 v133, v156, v42 :: v_dual_mul_f32 v118, v113, v127
	v_dual_mul_f32 v109, v109, v41 :: v_dual_mul_f32 v120, v112, v124
	v_dual_mul_f32 v108, v108, v41 :: v_dual_mul_f32 v115, v115, v124
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v122, v55, v126 :: v_dual_mul_f32 v123, v0, v127
	v_dual_mul_f32 v116, v116, v125 :: v_dual_mul_f32 v117, v114, v126
	v_dual_mul_f32 v110, v133, v124 :: v_dual_mul_f32 v111, v111, v127
	v_dual_mul_f32 v112, v132, v125 :: v_dual_mul_f32 v113, v129, v126
	v_mul_f32_e32 v114, v128, v127
	v_dual_mul_f32 v64, v108, v124 :: v_dual_mul_f32 v129, v155, v42
	v_dual_mul_f32 v108, v109, v125 :: v_dual_mul_f32 v125, v144, v44
	v_dual_mul_f32 v109, v145, v126 :: v_dual_mul_f32 v126, v143, v44
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_mul_f32_e32 v133, v140, v43
	v_dual_mul_f32 v127, v142, v44 :: v_dual_mul_f32 v132, v141, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	ds_load_b128 v[141:144], v45 offset:512
	ds_load_b128 v[145:148], v45 offset:528
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v0, v149, v44 :: v_dual_mul_f32 v107, v107, v41
	v_mul_f32_e32 v124, v150, v43
	v_dual_mul_f32 v149, v139, v43 :: v_dual_mul_f32 v150, v106, v42
	v_mul_f32_e32 v97, v97, v41
	v_dual_mul_f32 v106, v105, v42 :: v_dual_mul_f32 v95, v95, v41
	v_mul_f32_e32 v105, v88, v42
	v_dual_mul_f32 v96, v80, v41 :: v_dual_mul_f32 v99, v99, v42
	v_dual_mul_f32 v98, v98, v42 :: v_dual_mul_f32 v35, v35, v41
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v153, v32, v41
	v_mul_f32_e32 v151, v84, v42
	v_mul_f32_e32 v39, v39, v41
	v_mul_f32_e32 v1, v1, v41
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v55, v0, v141 :: v_dual_mul_f32 v0, v135, v44
	v_mul_f32_e32 v128, v124, v141
	v_mul_f32_e32 v124, v129, v141
	v_mul_f32_e32 v104, v107, v141
	v_dual_mul_f32 v139, v127, v142 :: v_dual_mul_f32 v140, v126, v143
	v_mul_f32_e32 v141, v125, v144
	v_dual_mul_f32 v126, v133, v143 :: v_dual_mul_f32 v127, v132, v144
	v_dual_mul_f32 v107, v150, v144 :: v_dual_mul_f32 v96, v96, v143
	v_mul_f32_e32 v97, v97, v144
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v129, v134, v44 :: v_dual_mul_f32 v134, v136, v43
	v_dual_mul_f32 v133, v137, v43 :: v_dual_mul_f32 v144, v66, v41
	.loc	1 1122 17                       ; ragged.py:1122:17
	s_waitcnt lgkmcnt(0)
	v_mul_f32_e32 v66, v0, v146
	.loc	1 1124 41                       ; ragged.py:1124:41
	v_add_lshl_u32 v0, v47, s72, 1
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_mul_f32_e32 v125, v149, v142
	v_dual_mul_f32 v105, v105, v142 :: v_dual_mul_f32 v106, v106, v143
	v_dual_mul_f32 v95, v95, v142 :: v_dual_mul_f32 v132, v130, v44
	.loc	1 1124 41                       ; ragged.py:1124:41
	buffer_load_u16 v0, v0, s[64:67], 0 offen
	.loc	1 1115 17                       ; ragged.py:1115:17
	v_dual_mul_f32 v130, v138, v43 :: v_dual_mul_f32 v137, v103, v41
	v_mul_f32_e32 v138, v102, v41
	v_dual_mul_f32 v142, v101, v41 :: v_dual_mul_f32 v101, v100, v146
	v_mul_f32_e32 v143, v77, v43
	.loc	1 1122 17                       ; ragged.py:1122:17
	v_dual_mul_f32 v135, v129, v147 :: v_dual_mul_f32 v136, v131, v148
	v_mul_f32_e32 v77, v137, v146
	v_dual_mul_f32 v130, v130, v146 :: v_dual_mul_f32 v137, v132, v145
	v_dual_mul_f32 v131, v133, v147 :: v_dual_mul_f32 v134, v134, v148
	v_mul_f32_e32 v129, v143, v145
	v_dual_mul_f32 v102, v99, v147 :: v_dual_mul_f32 v103, v98, v148
	v_dual_mul_f32 v98, v138, v147 :: v_dual_mul_f32 v47, v92, v44
	v_dual_mul_f32 v99, v142, v148 :: v_dual_mul_f32 v100, v76, v145
	v_dual_mul_f32 v76, v144, v145 :: v_dual_mul_f32 v149, v86, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v138, v90, v43
	v_mul_f32_e32 v147, v72, v43
	v_mul_f32_e32 v72, v176, v44
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_lshr_b32 s65, s72, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s65, s72, s65
	s_ashr_i32 s73, s65, 1
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_and_b32 s65, s69, 0xffff
	.loc	1 1124 41                       ; ragged.py:1124:41
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v0, 16, v0
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_store_b32 v46, v0
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v94, v44
	v_mul_f32_e32 v46, v93, v44
	v_mul_f32_e32 v94, v91, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[90:93], v45
	ds_load_b128 v[142:145], v45 offset:16
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v36, v36, v41
	v_mul_f32_e32 v146, v89, v43
	v_mul_f32_e32 v148, v87, v43
	v_mul_f32_e32 v150, v85, v42
	v_mul_f32_e32 v80, v177, v43
	s_waitcnt lgkmcnt(1)
	v_dual_mul_f32 v152, v33, v41 :: v_dual_mul_f32 v83, v83, v92
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v87, v138, v90
	v_mul_f32_e32 v84, v149, v90
	v_mul_f32_e32 v32, v36, v90
	v_dual_mul_f32 v36, v153, v92 :: v_dual_mul_f32 v133, v94, v90
	v_mul_f32_e32 v132, v47, v91
	v_dual_mul_f32 v94, v46, v93 :: v_dual_mul_f32 v33, v35, v91
	v_dual_mul_f32 v89, v0, v92 :: v_dual_mul_f32 v88, v146, v91
	v_mul_f32_e32 v47, v151, v93
	v_dual_mul_f32 v85, v147, v93 :: v_dual_mul_f32 v86, v148, v92
	v_mul_f32_e32 v46, v150, v91
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v74, v44
	v_mul_f32_e32 v74, v81, v43
	v_mul_f32_e32 v81, v79, v43
	v_dual_mul_f32 v138, v78, v43 :: v_dual_mul_f32 v147, v37, v41
	s_waitcnt lgkmcnt(0)
	v_dual_mul_f32 v30, v30, v42 :: v_dual_mul_f32 v91, v72, v143
	v_mul_f32_e32 v28, v28, v42
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v90, v71, v142
	v_dual_mul_f32 v71, v31, v142 :: v_dual_mul_f32 v146, v38, v41
	v_mul_f32_e32 v79, v80, v143
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v40, v40, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v35, v152, v93 :: v_dual_mul_f32 v92, v73, v144
	v_mul_f32_e32 v31, v147, v145
	v_dual_mul_f32 v93, v0, v145 :: v_dual_mul_f32 v78, v74, v142
	v_dual_mul_f32 v80, v81, v144 :: v_dual_mul_f32 v73, v30, v143
	v_dual_mul_f32 v37, v29, v144 :: v_dual_mul_f32 v74, v138, v145
	v_dual_mul_f32 v38, v28, v145 :: v_dual_mul_f32 v29, v146, v143
	v_mul_f32_e32 v28, v40, v142
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v40, v69, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v30, v39, v144
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v39, v70, v44
	v_dual_mul_f32 v69, v82, v43 :: v_dual_mul_f32 v70, v11, v42
	v_mul_f32_e32 v72, v10, v41
	v_mul_f32_e32 v82, v9, v41
	v_mul_f32_e32 v138, v8, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	ds_load_b128 v[8:11], v45 offset:512
	ds_load_b128 v[142:145], v45 offset:528
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v0, v75, v44
	v_mul_f32_e32 v34, v34, v41
	v_mul_f32_e32 v14, v14, v43
	v_mul_f32_e32 v16, v16, v43
.Ltmp3:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp4:
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v27, v27, v8
	v_dual_mul_f32 v148, v34, v8 :: v_dual_mul_f32 v45, v17, v9
	v_dual_mul_f32 v146, v0, v8 :: v_dual_mul_f32 v17, v23, v42
	v_dual_mul_f32 v34, v13, v9 :: v_dual_mul_f32 v13, v15, v44
	v_mul_f32_e32 v147, v69, v8
	v_mul_f32_e32 v81, v39, v11
	v_mul_f32_e32 v75, v40, v10
	v_mul_f32_e32 v39, v12, v10
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v68, v68, v44 :: v_dual_mul_f32 v69, v14, v11
	v_mul_f32_e32 v14, v20, v43
	v_mul_f32_e32 v15, v19, v43
	v_mul_f32_e32 v19, v21, v42
	v_dual_mul_f32 v21, v25, v41 :: v_dual_mul_f32 v40, v70, v11
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v23, v13, v145
	v_mul_f32_e32 v13, v2, v142
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v2, 0xbfb8aa3b, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_dual_mul_f32 v12, v65, v44 :: v_dual_mul_f32 v65, v6, v142
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v0, v68, v9
	v_mul_f32_e32 v8, v72, v9
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v2
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v9, v82, v10
	v_mul_f32_e32 v68, v16, v10
	v_dual_mul_f32 v10, v138, v11 :: v_dual_mul_f32 v19, v19, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v2, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v6, 0, 0xffffffc0, vcc_lo
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v11, v67, v44
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v67, v7, v142 :: v_dual_mul_f32 v16, v18, v43
	v_mul_f32_e32 v1, v1, v142
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_dual_fmac_f32 v2, 0xbfb8aa3b, v146 :: v_dual_mul_f32 v11, v11, v143
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v15, v15, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v2, v2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v2, v2, v6
	.loc	1 1232 32 is_stmt 0             ; ragged.py:1232:32
	v_add_f32_e32 v2, 1.0, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v2, v2, v146
	v_rcp_f32_e32 v7, v6
	.loc	1 1117 21 is_stmt 1             ; ragged.py:1117:21
	v_mul_f32_e32 v18, v22, v42
	v_mul_f32_e32 v22, v24, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v24, v17, v143
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v17, -v6, v7, 1.0
	v_fmac_f32_e32 v7, v17, v7
	v_div_scale_f32 v17, vcc_lo, v146, v2, v146
	.loc	1 1117 21                       ; ragged.py:1117:21
	v_mul_f32_e32 v20, v26, v41
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v26, v21, v144
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_mul_f32_e32 v21, v17, v7
	v_fma_f32 v25, -v6, v21, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v25, v7
	v_fma_f32 v6, -v6, v21, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v6, v6, v7, v21
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v11
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v2, v6, v2, v146
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v12, v12, v144
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v17, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v11
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_mul_f32_e32 v20, v20, v143
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v7, v7
	v_ldexp_f32 v7, v7, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v16, v16, v145 :: v_dual_add_f32 v7, 1.0, v7
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v17, null, v7, v7, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v21, v17
	v_fma_f32 v25, -v17, v21, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, v25, v21
	v_div_scale_f32 v25, vcc_lo, v11, v7, v11
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v14, v14, v143 :: v_dual_mul_f32 v41, v25, v21
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v6, 0xbfb8aa3b, v23
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20 is_stmt 0             ; ragged.py:1232:20
	v_fma_f32 v42, -v17, v41, v25
	v_fmac_f32_e32 v41, v42, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v17, -v17, v41, v25
	v_div_fmas_f32 v17, v17, v21, v41
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	.loc	1 1127 21 is_stmt 1             ; ragged.py:1127:21
	v_mul_f32_e32 v22, v22, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v21, v21
	v_ldexp_f32 v21, v21, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1127 21                       ; ragged.py:1127:21
	v_dual_mul_f32 v18, v18, v144 :: v_dual_add_f32 v21, 1.0, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v21, v21, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v25
	v_fma_f32 v42, -v25, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v12, v21, v12
	v_mul_f32_e32 v43, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v25, v43, v42
	v_fmac_f32_e32 v43, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v25, v43, v42
	v_div_fmas_f32 v25, v25, v41, v43
	.loc	1 1232 38 is_stmt 0             ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v6
	v_cndmask_b32_e64 v6, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v6, 0xbfb8aa3b, v23
	v_exp_f32_e32 v6, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v6, v6, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v41, 1.0, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v6, null, v41, v41, v23
	v_rcp_f32_e32 v42, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v6, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v23, v41, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v42
	v_fma_f32 v70, -v6, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v70, v42
	v_fma_f32 v6, -v6, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v42, v6, v42, v44
	v_div_fixup_f32 v6, v17, v7, v11
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v7, 0xbfb8aa3b, v147
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v7
	v_cndmask_b32_e64 v7, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v11, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v7, 0xbfb8aa3b, v147
	v_exp_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v7, v7, v11
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v7, null, v17, v17, v147
	v_rcp_f32_e32 v11, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v7, v11, 1.0
	v_fmac_f32_e32 v11, v43, v11
	v_div_scale_f32 v43, vcc_lo, v147, v17, v147
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v43, v11
	v_fma_f32 v70, -v7, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v70, v11
	v_fma_f32 v7, -v7, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v43, v7, v11, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v11, 0xbfb8aa3b, v14
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v7, v25, v21, v12
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v11
	v_cndmask_b32_e64 v11, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v12, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v11, 0xbfb8aa3b, v14
	v_exp_f32_e32 v11, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v11, v11, v12
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v11, null, v21, v21, v14
	v_rcp_f32_e32 v12, v11
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v25, -v11, v12, 1.0
	v_fmac_f32_e32 v12, v25, v12
	v_div_scale_f32 v25, vcc_lo, v14, v21, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v44, v25, v12
	v_fma_f32 v70, -v11, v44, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v44, v70, v12
	v_fma_f32 v11, -v11, v44, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v25, v11, v12, v44
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v12, 0xbfb8aa3b, v15
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v11, v42, v41, v23
	v_div_fixup_f32 v14, v25, v21, v14
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v12
	v_mul_f32_e32 v21, 0xbfb8aa3b, v27
	v_cndmask_b32_e64 v12, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v12, 0xbfb8aa3b, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v12, v12
	v_ldexp_f32 v12, v12, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v12
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v12, null, v23, v23, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v12
	v_fma_f32 v42, -v12, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v42, v41
	v_div_scale_f32 v42, vcc_lo, v15, v23, v15
	v_mul_f32_e32 v44, v42, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v12, v44, v42
	v_fmac_f32_e32 v44, v70, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v12, -v12, v44, v42
	v_div_fmas_f32 v41, v12, v41, v44
	v_div_fixup_f32 v12, v43, v17, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v17, 0xbfb8aa3b, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v15, v41, v23, v15
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v24
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v17
	v_cndmask_b32_e64 v17, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v17, 0xbfb8aa3b, v16
	v_exp_f32_e32 v17, v17
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v17, v17, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v17, 1.0, v17
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v17, v17, v16
	v_rcp_f32_e32 v43, v42
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v42, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v16, v17, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v43
	v_fma_f32 v72, -v42, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v43
	v_fma_f32 v42, -v42, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v42, v42, v43, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v17, v42, v17, v16
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_mul_f32 v16, 0xbfb8aa3b, v18 :: v_dual_fmac_f32 v21, 0xbfb8aa3b, v27
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v21, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v21, v21, v27
	v_rcp_f32_e32 v43, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v25, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v27, v21, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v43
	v_fma_f32 v72, -v25, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v43
	v_fma_f32 v25, -v25, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v25, v25, v43, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v41
	v_fma_f32 v44, -v41, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v24, v23, v24
	v_mul_f32_e32 v70, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v41, v70, v44
	v_fmac_f32_e32 v70, v72, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v41, -v41, v70, v44
	v_div_fmas_f32 v41, v41, v43, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v16
	v_cndmask_b32_e64 v16, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v16, 0xbfb8aa3b, v18
	v_exp_f32_e32 v16, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v16, v16, v42
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v16
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v16, null, v42, v42, v18
	v_rcp_f32_e32 v43, v16
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v16, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v18, v42, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v43
	v_fma_f32 v72, -v16, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v43
	v_fma_f32 v16, -v16, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v16, v43, v70
	v_div_fixup_f32 v16, v25, v21, v27
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v21, 0xbfb8aa3b, v19
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v21
	v_cndmask_b32_e64 v21, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v21, 0xbfb8aa3b, v19
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v21, v21, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v25, 1.0, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v21, null, v25, v25, v19
	v_rcp_f32_e32 v27, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v21, v27, 1.0
	v_fmac_f32_e32 v27, v44, v27
	v_div_scale_f32 v44, vcc_lo, v19, v25, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v27
	v_fma_f32 v72, -v21, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v27
	v_fma_f32 v21, -v21, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v27, v21, v27, v70
	v_div_fixup_f32 v21, v41, v23, v24
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v148
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v27, v27, v25, v19
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v19, 0xbfb8aa3b, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v24, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v23, v23
	v_ldexp_f32 v23, v23, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v24, null, v23, v23, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v41, v24
	v_fma_f32 v44, -v24, v41, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v44, vcc_lo, v148, v23, v148
	v_mul_f32_e32 v70, v44, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v24, v70, v44
	v_fmac_f32_e32 v70, v72, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v24, -v24, v70, v44
	v_div_fmas_f32 v41, v24, v41, v70
	v_div_fixup_f32 v24, v43, v42, v18
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v18, v18
	v_ldexp_f32 v18, v18, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v42, null, v18, v18, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v42
	v_fma_f32 v44, -v42, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v20, v18, v20
	v_mul_f32_e32 v70, v44, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v42, v70, v44
	v_fmac_f32_e32 v70, v72, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v42, -v42, v70, v44
	v_div_fmas_f32 v42, v42, v43, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v25, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v26
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v19, v19, v25
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v25, null, v19, v19, v26
	v_rcp_f32_e32 v43, v25
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v25, v43, 1.0
	v_fmac_f32_e32 v43, v44, v43
	v_div_scale_f32 v44, vcc_lo, v26, v19, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v44, v43
	v_fma_f32 v72, -v25, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v72, v43
	v_fma_f32 v25, -v25, v70, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v43, v25, v43, v70
	v_div_fixup_f32 v25, v41, v23, v148
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v23, 0xbfb8aa3b, v22
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v23
	v_cndmask_b32_e64 v23, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v41, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, 0xbfb8aa3b, v22
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v23, v23, v41
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v23, 1.0, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v41, null, v23, v23, v22
	v_rcp_f32_e32 v44, v41
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v70, -v41, v44, 1.0
	v_fmac_f32_e32 v44, v70, v44
	v_div_scale_f32 v70, vcc_lo, v22, v23, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v70, v44
	v_fma_f32 v82, -v41, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v82, v44
	v_fma_f32 v41, -v41, v72, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v70, v41, v44, v72
	v_div_fixup_f32 v41, v42, v18, v20
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v18, 0xbfb8aa3b, v133
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v18
	v_cndmask_b32_e64 v18, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v20, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v18, 0xbfb8aa3b, v133
	v_exp_f32_e32 v18, v18
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v18, v18, v20
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v18, 1.0, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v18, v18, v133
	v_rcp_f32_e32 v42, v20
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v44, -v20, v42, 1.0
	v_fmac_f32_e32 v42, v44, v42
	v_div_scale_f32 v44, vcc_lo, v133, v18, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v72, v44, v42
	v_fma_f32 v82, -v20, v72, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v72, v82, v42
	v_fma_f32 v20, -v20, v72, v44
	v_div_fixup_f32 v44, v43, v19, v26
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v19, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v20, v20, v42, v72
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v18, v20, v18, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v89
	v_cndmask_b32_e64 v19, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v19, 0xbfb8aa3b, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v19, v19
	v_ldexp_f32 v19, v19, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v19, 1.0, v19
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v26, null, v19, v19, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v42, v26
	v_fma_f32 v43, -v26, v42, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v132, v19, v132
	v_mul_f32_e32 v72, v43, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v26, v72, v43
	v_fmac_f32_e32 v72, v82, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v26, -v26, v72, v43
	v_div_fmas_f32 v26, v26, v42, v72
	v_div_fixup_f32 v72, v70, v23, v22
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v94
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v19, v26, v19, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v94
	v_exp_f32_e32 v22, v22
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v22, v22, v23
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v22, 1.0, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v23, null, v22, v22, v94
	v_rcp_f32_e32 v42, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v43, -v23, v42, 1.0
	v_fmac_f32_e32 v42, v43, v42
	v_div_scale_f32 v43, vcc_lo, v94, v22, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v70, v43, v42
	v_fma_f32 v82, -v23, v70, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v82, v42
	v_fma_f32 v23, -v23, v70, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v23, v23, v42, v70
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v42, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v42, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v42, v42, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v43, v20
	v_fma_f32 v70, -v20, v43, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v43, v70, v43
	v_div_scale_f32 v70, vcc_lo, v89, v42, v89
	v_mul_f32_e32 v82, v70, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v20, v82, v70
	v_fmac_f32_e32 v82, v133, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v82, v70
	v_div_fmas_f32 v43, v20, v43, v82
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v20, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v20
	v_cndmask_b32_e64 v20, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v26, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v20, 0xbfb8aa3b, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v20, v20
	v_ldexp_f32 v20, v20, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v26, 1.0, v20
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v20, null, v26, v26, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v70, v20
	v_fma_f32 v82, -v20, v70, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, v82, v70
	v_div_scale_f32 v82, vcc_lo, v90, v26, v90
	v_mul_f32_e32 v132, v82, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v20, v132, v82
	v_fmac_f32_e32 v132, v133, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v20, -v20, v132, v82
	v_div_fmas_f32 v70, v20, v70, v132
	v_div_fixup_f32 v20, v23, v22, v94
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v82, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v82, v82, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v94, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v94, v23
	v_div_scale_f32 v94, vcc_lo, v91, v82, v91
	v_mul_f32_e32 v132, v94, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v22, v132, v94
	v_fmac_f32_e32 v132, v133, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v132, v94
	v_div_fmas_f32 v94, v22, v23, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v132, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v132, v132, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v133, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v133, v23
	v_div_scale_f32 v133, vcc_lo, v92, v132, v92
	v_mul_f32_e32 v138, v133, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v22, v138, v133
	v_fmac_f32_e32 v138, v142, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v138, v133
	v_div_fmas_f32 v133, v22, v23, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v22, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v22
	v_cndmask_b32_e64 v22, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v23, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v22, 0xbfb8aa3b, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v22, v22
	v_ldexp_f32 v22, v22, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v138, 1.0, v22
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v22, null, v138, v138, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v23, v22
	v_fma_f32 v142, -v22, v23, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v23, v142, v23
	v_div_scale_f32 v142, vcc_lo, v93, v138, v93
	v_mul_f32_e32 v143, v142, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v22, v143, v142
	v_fmac_f32_e32 v143, v144, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v22, -v22, v143, v142
	v_div_fmas_f32 v142, v22, v23, v143
	v_div_fixup_f32 v23, v70, v26, v90
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v70, 0xbfb8aa3b, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v26, v94, v82, v91
	v_div_fixup_f32 v22, v43, v42, v89
	v_div_fixup_f32 v42, v133, v132, v92
	v_div_fixup_f32 v43, v142, v138, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v70
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v55, v55, v2
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v70, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v70, 0xbfb8aa3b, v0
	v_exp_f32_e32 v70, v70
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v70, v70, v82
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v70, 1.0, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v70, v70, v0
	v_rcp_f32_e32 v89, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v82, v89, 1.0
	v_fmac_f32_e32 v89, v90, v89
	v_div_scale_f32 v90, vcc_lo, v0, v70, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v90, v89
	v_fma_f32 v92, -v82, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v89
	v_fma_f32 v82, -v82, v91, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v82, v82, v89, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v89, 0xbfb8aa3b, v75
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v70, v82, v70, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v89
	v_mul_f32_e32 v0, 0xbfb8aa3b, v81
	v_cndmask_b32_e64 v89, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v90, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v89, 0xbfb8aa3b, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v89, v89
	v_ldexp_f32 v89, v89, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v89, 1.0, v89
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v90, null, v89, v89, v75
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v90
	v_fma_f32 v92, -v90, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v75, v89, v75
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v90, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v90, -v90, v93, v92
	v_div_fmas_f32 v90, v90, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v82, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v81
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v82
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v0, v0, v81
	v_rcp_f32_e32 v91, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v82, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v81, v0, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v82, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v82, -v82, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v91, v82, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v82, 0xbfb8aa3b, v67
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v67
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v92, v92, v67
	v_rcp_f32_e32 v93, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v82, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v67, v92, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v94, v93
	v_fma_f32 v133, -v82, v132, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v93
	v_fma_f32 v82, -v82, v132, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v82, v93, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v82, 0xbfb8aa3b, v87
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v87
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v94, v94, v87
	v_rcp_f32_e32 v132, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v82, v132, 1.0
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v87, v94, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v133, v132
	v_fma_f32 v142, -v82, v138, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v132
	v_fma_f32 v82, -v82, v138, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v132, v82, v132, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v82, 0xbfb8aa3b, v88
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v82
	v_cndmask_b32_e64 v82, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, 0xbfb8aa3b, v88
	v_exp_f32_e32 v82, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v82, v82, v133
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v133, 1.0, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v82, null, v133, v133, v88
	v_rcp_f32_e32 v138, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v82, v138, 1.0
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v88, v133, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v138
	v_fma_f32 v144, -v82, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v138
	v_fma_f32 v82, -v82, v143, v142
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v138, v82, v138, v143
	v_div_fixup_f32 v82, v90, v89, v75
	v_div_fixup_f32 v89, v91, v0, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v0, 0xbfb8aa3b, v85
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v90, v93, v92, v67
	v_div_fixup_f32 v75, v132, v94, v87
	v_div_fixup_f32 v81, v138, v133, v88
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v57, v57, v81
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v85
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v85
	v_rcp_f32_e32 v87, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v67, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v85, v0, v85
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v88, v87
	v_fma_f32 v92, -v67, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v87
	v_fma_f32 v67, -v67, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v87, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v86
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v85, v67, v0, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_mul_f32_e32 v0, 0xbfb8aa3b, v74
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v87, v87
	v_ldexp_f32 v87, v87, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v87, 1.0, v87
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v87, v87, v86
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v88
	v_fma_f32 v92, -v88, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v86, v87, v86
	v_mul_f32_e32 v93, v92, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v88, v93, v92
	v_fmac_f32_e32 v93, v94, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v88, v93, v92
	v_div_fmas_f32 v88, v88, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v86, v88, v87, v86
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v7, v135, v7
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v78
	v_exp_f32_e32 v91, v91
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v91, v91, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v91, v91, v78
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v78, v91, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v94, v93
	v_fma_f32 v133, -v92, v132, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v93
	v_fma_f32 v92, -v92, v132, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v92, v93, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v79
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v78, v92, v91, v78
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v93, v93
	v_ldexp_f32 v93, v93, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v132, v94
	v_fma_f32 v133, -v94, v132, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v79, v93, v79
	v_mul_f32_e32 v138, v133, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v94, v138, v133
	v_fmac_f32_e32 v138, v142, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v94, v138, v133
	v_div_fmas_f32 v94, v94, v132, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v132, 0xbfb8aa3b, v80
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v79, v94, v93, v79
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v132
	v_cndmask_b32_e64 v132, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v80
	v_exp_f32_e32 v132, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v132, v132, v133
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v132, 1.0, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v133, null, v132, v132, v80
	v_rcp_f32_e32 v138, v133
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v133, v138, 1.0
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v80, v132, v80
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v138
	v_fma_f32 v144, -v133, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v138
	v_fma_f32 v133, -v133, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v133, v133, v138, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v0
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v80, v133, v132, v80
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v0, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v0, 0xbfb8aa3b, v74
	v_exp_f32_e32 v0, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v0, v0, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v0, 1.0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v0, v0, v74
	v_rcp_f32_e32 v87, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v67, v87, 1.0
	v_fmac_f32_e32 v87, v88, v87
	v_div_scale_f32 v88, vcc_lo, v74, v0, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v91, v88, v87
	v_fma_f32 v92, -v67, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v92, v87
	v_fma_f32 v67, -v67, v91, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v67, v67, v87, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v87, 0xbfb8aa3b, v45
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v87
	v_cndmask_b32_e64 v87, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v88, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v87, 0xbfb8aa3b, v45
	v_exp_f32_e32 v87, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v87, v87, v88
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v87, 1.0, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v87, v87, v45
	v_rcp_f32_e32 v91, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v88, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v45, v87, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v88, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v88, -v88, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v91, v88, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v68
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v68
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v92, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v92, v92, v68
	v_rcp_f32_e32 v93, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v88, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v68, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v94, v93
	v_fma_f32 v133, -v88, v132, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v93
	v_fma_f32 v88, -v88, v132, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v93, v88, v93, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v69
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v69
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v94, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v94, v94, v69
	v_rcp_f32_e32 v132, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v88, v132, 1.0
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v69, v94, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v133, v132
	v_fma_f32 v142, -v88, v138, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v132
	v_fma_f32 v88, -v88, v138, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v132, v88, v132, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v88, 0xbfb8aa3b, v65
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v88
	v_cndmask_b32_e64 v88, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v88, 0xbfb8aa3b, v65
	v_exp_f32_e32 v88, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v88, v88, v133
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v133, 1.0, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v88, null, v133, v133, v65
	v_rcp_f32_e32 v138, v88
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v88, v138, 1.0
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v65, v133, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v138
	v_fma_f32 v144, -v88, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v138
	v_fma_f32 v88, -v88, v143, v142
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v138, v88, v138, v143
	v_div_fixup_f32 v88, v67, v0, v74
	v_div_fixup_f32 v0, v91, v87, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v45, 0xbfb8aa3b, v84
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v74, v93, v92, v68
	v_div_fixup_f32 v87, v132, v94, v69
	v_div_fixup_f32 v65, v138, v133, v65
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v45, v45, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v84, v45, v84
	v_mul_f32_e32 v91, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v67, v91, v69
	v_fmac_f32_e32 v91, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v91, v69
	v_div_fmas_f32 v67, v67, v68, v91
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v84, v67, v45, v84
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_mul_f32_e32 v45, 0xbfb8aa3b, v47
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v46
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v46
	v_rcp_f32_e32 v91, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v69, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v46, v68, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v69, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v69, -v69, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v69, v69, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v46, v69, v68, v46
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v58, v58, v46 :: v_dual_fmac_f32 v45, 0xbfb8aa3b, v47
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v45, v45, v67
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v45, v45, v47
	v_rcp_f32_e32 v91, v67
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v67, v91, 1.0
	v_fmac_f32_e32 v91, v92, v91
	v_div_scale_f32 v92, vcc_lo, v47, v45, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v91
	v_fma_f32 v94, -v67, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v91
	v_fma_f32 v67, -v67, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v67, v67, v91, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v91, 0xbfb8aa3b, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v47, v67, v45, v47
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v91
	v_mul_f32_e32 v45, 0xbfb8aa3b, v37
	v_cndmask_b32_e64 v91, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v91, 0xbfb8aa3b, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v91, v91
	v_ldexp_f32 v91, v91, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v91, 1.0, v91
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v91, v91, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v93, v92
	v_fma_f32 v94, -v92, v93, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v83, v91, v83
	v_mul_f32_e32 v132, v94, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v92, v132, v94
	v_fmac_f32_e32 v132, v133, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v92, v132, v94
	v_div_fmas_f32 v92, v92, v93, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v83, v92, v91, v83
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v71
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v93, v93, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v71
	v_rcp_f32_e32 v132, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v94, v132, 1.0
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v71, v93, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v133, v132
	v_fma_f32 v142, -v94, v138, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v132
	v_fma_f32 v94, -v94, v138, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v94, v132, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v132, 0xbfb8aa3b, v73
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v91, v94, v93, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v132
	v_cndmask_b32_e64 v132, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v132, v132
	v_ldexp_f32 v132, v132, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v132, 1.0, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v133, null, v132, v132, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v138, v133
	v_fma_f32 v142, -v133, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v73, v132, v73
	v_mul_f32_e32 v143, v142, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v133, v143, v142
	v_fmac_f32_e32 v143, v144, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v133, v143, v142
	v_div_fmas_f32 v133, v133, v138, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v73, v133, v132, v73
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v45, v45, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v37, v45, v37
	v_mul_f32_e32 v71, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v67, v71, v69
	v_fmac_f32_e32 v71, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v71, v69
	v_div_fmas_f32 v67, v67, v68, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v37, v67, v45, v37
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v38
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v38
	v_rcp_f32_e32 v71, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v69, v71, 1.0
	v_fmac_f32_e32 v71, v92, v71
	v_div_scale_f32 v92, vcc_lo, v38, v68, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v92, v71
	v_fma_f32 v94, -v69, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v94, v71
	v_fma_f32 v69, -v69, v93, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v69, v69, v71, v93
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v71, 0xbfb8aa3b, v34
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v92, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v34
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v92
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v92, null, v71, v71, v34
	v_rcp_f32_e32 v93, v92
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v94, -v92, v93, 1.0
	v_fmac_f32_e32 v93, v94, v93
	v_div_scale_f32 v94, vcc_lo, v34, v71, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v132, v94, v93
	v_fma_f32 v133, -v92, v132, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v132, v133, v93
	v_fma_f32 v92, -v92, v132, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v92, v92, v93, v132
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v93, 0xbfb8aa3b, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v92, v92, v71, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v93
	v_mul_f32_e32 v34, 0xbfb8aa3b, v13
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v46, v105, v92
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v93, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v94, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, 0xbfb8aa3b, v39
	v_exp_f32_e32 v93, v93
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v93, v93, v94
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v93, 1.0, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v94, null, v93, v93, v39
	v_rcp_f32_e32 v132, v94
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v94, v132, 1.0
	v_fmac_f32_e32 v132, v133, v132
	v_div_scale_f32 v133, vcc_lo, v39, v93, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v138, v133, v132
	v_fma_f32 v142, -v94, v138, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v132
	v_fma_f32 v94, -v94, v138, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v94, v94, v132, v138
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v132, 0xbfb8aa3b, v40
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v93, v94, v93, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v132
	v_cndmask_b32_e64 v132, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v133, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v132, 0xbfb8aa3b, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v132, v132
	v_ldexp_f32 v132, v132, v133
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v132, 1.0, v132
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v133, null, v132, v132, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v138, v133
	v_fma_f32 v142, -v133, v138, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v138, v142, v138
	v_div_scale_f32 v142, vcc_lo, v40, v132, v40
	v_mul_f32_e32 v143, v142, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v133, v143, v142
	v_fmac_f32_e32 v143, v144, v138
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v133, -v133, v143, v142
	v_div_fmas_f32 v133, v133, v138, v143
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v138, v69, v68, v38
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v94, v133, v132, v40
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v34, v34, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v13, v34, v13
	v_mul_f32_e32 v45, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v38, v45, v40
	v_fmac_f32_e32 v45, v67, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v45, v40
	v_div_fmas_f32 v38, v38, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v39, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v39, v39, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v40
	v_fma_f32 v67, -v40, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v67, v45
	v_div_scale_f32 v67, vcc_lo, v32, v39, v32
	v_mul_f32_e32 v68, v67, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v40, v68, v67
	v_fmac_f32_e32 v68, v69, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v68, v67
	v_div_fmas_f32 v40, v40, v45, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v45, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v45, v45, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v33, v45, v33
	v_mul_f32_e32 v71, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v67, v71, v69
	v_fmac_f32_e32 v71, v132, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v71, v69
	v_div_fmas_f32 v67, v67, v68, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v35
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v33, v67, v45, v33
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v35
	v_exp_f32_e32 v68, v68
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v68, v68, v69
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v35
	v_rcp_f32_e32 v71, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v132, -v69, v71, 1.0
	v_fmac_f32_e32 v71, v132, v71
	v_div_scale_f32 v132, vcc_lo, v35, v68, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v133, v132, v71
	v_fma_f32 v142, -v69, v133, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v133, v142, v71
	v_fma_f32 v69, -v69, v133, v132
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v69, v69, v71, v133
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v71, 0xbfb8aa3b, v36
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v132, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v36
	v_exp_f32_e32 v71, v71
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v71, v71, v132
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v132, null, v71, v71, v36
	v_rcp_f32_e32 v133, v132
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v142, -v132, v133, 1.0
	v_fmac_f32_e32 v133, v142, v133
	v_div_scale_f32 v142, vcc_lo, v36, v71, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v143, v142, v133
	v_fma_f32 v144, -v132, v143, v142
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v143, v144, v133
	v_fma_f32 v132, -v132, v143, v142
	v_div_fixup_f32 v142, v40, v39, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_div_fmas_f32 v132, v132, v133, v143
	v_div_fixup_f32 v133, v38, v34, v13
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v13, 0xbfb8aa3b, v28
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v143, v69, v68, v35
	v_div_fixup_f32 v132, v132, v71, v36
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v27, v103, v27
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v13
	v_cndmask_b32_e64 v13, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v32, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v13, 0xbfb8aa3b, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v13, v13
	v_ldexp_f32 v13, v13, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v13, 1.0, v13
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v32, null, v13, v13, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v34, v32
	v_fma_f32 v35, -v32, v34, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v34, v35, v34
	v_div_scale_f32 v35, vcc_lo, v28, v13, v28
	v_mul_f32_e32 v36, v35, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v32, v36, v35
	v_fmac_f32_e32 v36, v38, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v32, -v32, v36, v35
	v_div_fmas_f32 v32, v32, v34, v36
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v34, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v34
	v_cndmask_b32_e64 v34, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v35, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v34, 0xbfb8aa3b, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v34, v34
	v_ldexp_f32 v34, v34, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v34, 1.0, v34
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v35, null, v34, v34, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v36, v35
	v_fma_f32 v38, -v35, v36, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v36, v38, v36
	v_div_scale_f32 v38, vcc_lo, v29, v34, v29
	v_mul_f32_e32 v39, v38, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v35, v39, v38
	v_fmac_f32_e32 v39, v40, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v35, -v35, v39, v38
	v_div_fmas_f32 v35, v35, v36, v39
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v36, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v36
	v_cndmask_b32_e64 v36, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v38, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v36, 0xbfb8aa3b, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v36, v36
	v_ldexp_f32 v36, v36, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v36, 1.0, v36
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v38, null, v36, v36, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v39, v38
	v_fma_f32 v40, -v38, v39, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v39, v40, v39
	v_div_scale_f32 v40, vcc_lo, v30, v36, v30
	v_mul_f32_e32 v45, v40, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v38, v45, v40
	v_fmac_f32_e32 v45, v67, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v38, -v38, v45, v40
	v_div_fmas_f32 v38, v38, v39, v45
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v39, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v39
	v_cndmask_b32_e64 v39, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v40, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v39, 0xbfb8aa3b, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v39, v39
	v_ldexp_f32 v39, v39, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v39, 1.0, v39
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v40, null, v39, v39, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v45, v40
	v_fma_f32 v67, -v40, v45, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v45, v67, v45
	v_div_scale_f32 v67, vcc_lo, v31, v39, v31
	v_mul_f32_e32 v68, v67, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v40, v68, v67
	v_fmac_f32_e32 v68, v69, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v40, -v40, v68, v67
	v_div_fmas_f32 v40, v40, v45, v68
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v45, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v45
	v_cndmask_b32_e64 v45, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v67, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v45, 0xbfb8aa3b, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v45, v45
	v_ldexp_f32 v45, v45, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v45, 1.0, v45
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v67, null, v45, v45, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v69, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v69, v68
	v_div_scale_f32 v69, vcc_lo, v8, v45, v8
	v_mul_f32_e32 v71, v69, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v67, v71, v69
	v_fmac_f32_e32 v71, v144, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v71, v69
	v_div_fmas_f32 v67, v67, v68, v71
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v68, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v68
	v_cndmask_b32_e64 v68, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v69, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v68, 0xbfb8aa3b, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v68, v68
	v_ldexp_f32 v68, v68, v69
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v68, 1.0, v68
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v69, null, v68, v68, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v71, v69
	v_fma_f32 v144, -v69, v71, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v71, v144, v71
	v_div_scale_f32 v144, vcc_lo, v9, v68, v9
	v_mul_f32_e32 v145, v144, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v146, -v69, v145, v144
	v_fmac_f32_e32 v145, v146, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v69, -v69, v145, v144
	v_div_fmas_f32 v69, v69, v71, v145
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v71, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v71
	v_cndmask_b32_e64 v71, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v144, 0, 0xffffffc0, vcc_lo
	v_fmac_f32_e32 v71, 0xbfb8aa3b, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_exp_f32_e32 v71, v71
	v_ldexp_f32 v71, v71, v144
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v71, 1.0, v71
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v144, null, v71, v71, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v145, v144
	v_fma_f32 v146, -v144, v145, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v145, v146, v145
	v_div_scale_f32 v146, vcc_lo, v10, v71, v10
	v_mul_f32_e32 v147, v146, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v148, -v144, v147, v146
	v_fmac_f32_e32 v147, v148, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v144, -v144, v147, v146
	v_div_fmas_f32 v144, v144, v145, v147
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_mul_f32_e32 v145, 0xbfb8aa3b, v1
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v144, v144, v71, v10
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cmp_gt_f32_e32 vcc_lo, 0xc2fc0000, v145
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v10, v123, v43
	.loc	1 1232 38                       ; ragged.py:1232:38
	v_cndmask_b32_e64 v145, 0, 0x42800000, vcc_lo
	v_cndmask_b32_e64 v146, 0, 0xffffffc0, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v145, 0xbfb8aa3b, v1
	v_exp_f32_e32 v145, v145
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_ldexp_f32 v145, v145, v146
	.loc	1 1232 32                       ; ragged.py:1232:32
	v_add_f32_e32 v145, 1.0, v145
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_scale_f32 v146, null, v145, v145, v1
	v_rcp_f32_e32 v147, v146
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v148, -v146, v147, 1.0
	v_fmac_f32_e32 v147, v148, v147
	v_div_scale_f32 v148, vcc_lo, v1, v145, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v149, v148, v147
	v_fma_f32 v150, -v146, v149, v148
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v149, v150, v147
	v_div_fixup_f32 v150, v40, v39, v31
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v39, v130, v14 :: v_dual_mul_f32 v14, v131, v15
	v_dual_mul_f32 v15, v134, v17 :: v_dual_mul_f32 v40, v63, v83
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_fma_f32 v146, -v146, v149, v148
	v_div_fixup_f32 v148, v35, v34, v29
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v34, v66, v6
	v_dual_mul_f32 v66, v120, v23 :: v_dual_mul_f32 v23, v126, v74
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fmas_f32 v146, v146, v147, v149
	v_div_fixup_f32 v147, v32, v13, v28
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v32, v119, v22
	v_mul_f32_e32 v22, v122, v42
	.loc	1 1232 20                       ; ragged.py:1232:20
	v_div_fixup_f32 v149, v38, v36, v30
	v_div_fixup_f32 v1, v146, v145, v1
	v_div_fixup_f32 v145, v69, v68, v9
	v_div_fixup_f32 v146, v67, v45, v8
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v67, v52, v18 :: v_dual_mul_f32 v52, v54, v19
	v_mul_f32_e32 v9, v60, v20
	v_dual_mul_f32 v45, v121, v26 :: v_dual_mul_f32 v20, v127, v87
	v_mul_f32_e32 v8, v136, v11
	v_mul_f32_e32 v54, v137, v90
	v_dual_mul_f32 v11, v141, v89 :: v_dual_mul_f32 v68, v115, v78
	v_dual_mul_f32 v13, v140, v82 :: v_dual_mul_f32 v42, v101, v21
	v_mul_f32_e32 v38, v139, v70
.Ltmp5:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v2, |v67|, |v52|
	v_max3_f32 v6, |v9|, |v66|, |v45|
.Ltmp6:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v36, v62, v86
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v18, |v54|, |v34|, |v7|
.Ltmp8:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v69, v49, v75
	v_dual_mul_f32 v49, v116, v79 :: v_dual_mul_f32 v30, v107, v94
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, |v32|, v6
	v_max3_f32 v6, |v38|, |v13|, |v11|
.Ltmp10:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v43, v125, v0
	v_mul_f32_e32 v26, v102, v24
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v0, |v69|, |v57|
.Ltmp12:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v60, v128, v12
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v18, |v8|
	v_max3_f32 v18, |v22|, |v10|, |v55|
.Ltmp14:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v19, v118, v88 :: v_dual_mul_f32 v28, v61, v47
	v_dual_mul_f32 v35, v117, v80 :: v_dual_mul_f32 v70, v110, v91
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v2, v2, v18, v6
.Ltmp16:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v18, v59, v85
	v_dual_mul_f32 v59, v129, v65 :: v_dual_mul_f32 v62, v124, v16
	v_mul_f32_e32 v71, v51, v84
	v_mul_f32_e32 v51, v112, v73
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, |v18|, |v68|, |v49|
	s_delay_alu instid0(VALU_DEP_4)
	v_max3_f32 v12, |v59|, |v39|, |v14|
.Ltmp18:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v61, v100, v133
	v_mul_f32_e32 v31, v106, v93
	v_dual_mul_f32 v29, v114, v138 :: v_dual_mul_f32 v24, v97, v144
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, |v36|, v6
	v_max3_f32 v6, |v43|, |v23|, |v20|
.Ltmp20:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v37, v113, v37
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v16, |v61|, |v42|, |v26|
.Ltmp22:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v17, v98, v44
	v_mul_f32_e32 v44, v56, v132
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, v12, |v15|
	v_max3_f32 v12, |v35|, |v19|, |v60|
.Ltmp24:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_dual_mul_f32 v63, v50, v33 :: v_dual_mul_f32 v50, v95, v146
	v_mul_f32_e32 v65, v104, v25
	v_mul_f32_e32 v25, v53, v143
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp25:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v0, v0, v12, v6
	v_max_f32_e64 v6, |v71|, |v58|
	v_max3_f32 v12, |v28|, |v70|, |v51|
.Ltmp26:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v73, v48, v142
	v_mul_f32_e32 v53, v108, v148
	v_mul_f32_e32 v47, v77, v41
	v_mul_f32_e32 v33, v96, v145
.Ltmp27:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v6, v6, |v40|, v12
	v_max3_f32 v12, |v46|, |v31|, |v30|
.Ltmp28:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v21, v111, v150
	v_dual_mul_f32 v41, v109, v149 :: v_dual_lshlrev_b32 v56, 1, v166
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max3_f32 v12, v12, v16, |v27|
	v_max3_f32 v16, |v37|, |v29|, |v62|
	v_max3_f32 v6, v6, v16, v12
.Ltmp30:
	.loc	1 1232 13                       ; ragged.py:1232:13
	v_mul_f32_e32 v12, v99, v72
	v_mul_f32_e32 v72, v64, v147
	v_mul_f32_e32 v64, v76, v1
.Ltmp31:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e64 v1, |v73|, |v63|
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_max3_f32 v16, |v25|, |v72|, |v53|
	v_max3_f32 v48, |v64|, |v47|, |v17|
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v1, v1, |v44|, v16
	v_max3_f32 v16, |v50|, |v33|, |v24|
	v_max3_f32 v16, v16, v48, |v12|
	v_max3_f32 v48, |v41|, |v21|, |v65|
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max3_f32 v1, v1, v48, v16
.Ltmp32:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v48, v0, s0, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v16, v2, s0, 0xfedcba98 op_sel:[1,0]
.Ltmp33:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v16, v16, v16
	v_max_f32_e32 v75, v0, v48
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v6, s0, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp35:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v74, v2, v16
.Ltmp36:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v16, 0x60, v164
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v76, v6, v0
.Ltmp38:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_permlanex16_b32 v0, v1, s0, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v6, 8, v164
	s_mov_b32 s0, 0xc1000000
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v0, v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_max_f32_e32 v77, v1, v0
.Ltmp40:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_and_b32_e32 v0, 3, v164
	v_and_b32_e32 v1, 4, v164
	v_lshl_add_u32 v2, v0, 9, 0
	v_lshlrev_b32_e32 v48, 5, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_add_u32 v2, v1, 2, v2
	v_xor_b32_e32 v78, v48, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_lshl_add_u32 v2, v6, 4, v2
	v_add3_u32 v2, v2, v56, v78
	v_lshl_add_u32 v56, v1, 6, 0
	ds_store_b128 v2, v[74:77]
	v_lshlrev_b32_e32 v75, 4, v164
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_and_or_b32 v2, 0x680, v75, v48
	v_lshrrev_b32_e32 v48, 3, v166
	v_xor_b32_e32 v2, v2, v16
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v2, v56, v48, v2
	ds_load_b128 v[76:79], v2
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_mov_b32_e32 v48, v76
.Ltmp41:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v2, v79, v79
.Ltmp42:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v79, v79 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp43:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
.Ltmp44:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v77
	v_mov_b32_dpp v48, v48 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp45:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v77, v77, v77
	v_dual_max_f32 v79, v79, v79 :: v_dual_mov_b32 v74, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v56, v56 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	v_max_f32_e32 v78, v78, v78
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_max_f32_e32 v2, v2, v79
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v74, v74 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v56, v56
	v_max_f32_e32 v48, v76, v48
	v_max_f32_e32 v56, v77, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp50:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_dual_mov_b32 v76, v48 :: v_dual_and_b32 v75, 0x2f0, v75
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp51:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	v_max_f32_e32 v48, v48, v76
.Ltmp52:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp53:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max_f32_e32 v56, v56, v76
.Ltmp54:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v76, v48
	v_mov_b32_e32 v77, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v76, v76 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp55:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v76, v76, v76
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max_f32_e32 v76, v48, v76
	v_max_f32_e32 v48, v74, v74
.Ltmp56:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_dpp v77, v77 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_dual_max_f32 v48, v78, v48 :: v_dual_max_f32 v77, v77, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_max_f32_e32 v77, v56, v77
.Ltmp58:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v56, v56 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v48, v48, v56
.Ltmp60:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v56, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b32_dpp v56, v56 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v56, v56, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max_f32_e32 v78, v48, v56
.Ltmp62:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v48, v2
	v_mov_b32_dpp v48, v48 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp63:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	v_max_f32_e32 v2, v2, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp64:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_mov_b32_e32 v48, v2
	v_mov_b32_dpp v48, v48 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp65:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ ragged.py:1237:20 ] ]
	v_max_f32_e32 v48, v48, v48
	v_dual_max_f32 v79, v2, v48 :: v_dual_lshlrev_b32 v2, 3, v6
.Ltmp66:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_lshrrev_b32_e32 v6, 1, v16
	v_add_nc_u32_e32 v48, 0, v166
.Ltmp67:
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v16, 5, v16
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp68:
	.loc	2 191 16                        ; standard.py:191:16 @[ ragged.py:1237:20 ]
	v_add3_u32 v6, v48, v6, v2
	v_lshlrev_b32_e32 v48, 4, v0
	v_lshlrev_b32_e32 v0, 5, v1
	ds_store_b128 v6, v[76:79]
	v_add_nc_u32_e32 v1, 0, v48
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_1)
	v_add3_u32 v0, v1, v0, v2
	ds_load_b128 v[76:79], v0
.Ltmp69:
	.loc	1 1245 22                       ; ragged.py:1245:22
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_max_f32_e32 v0, v76, v76
	v_dual_max_f32 v2, v77, v77 :: v_dual_max_f32 v1, v78, v78
	v_max_f32_e32 v6, v79, v79
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v74, 0x2b8cbccc, v0
	v_div_scale_f32 v0, null, 0x40e00000, 0x40e00000, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v56, v0
	v_fma_f32 v76, -v0, v56, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v56, v76, v56
	v_div_scale_f32 v76, vcc_lo, v74, 0x40e00000, v74
	v_mul_f32_e32 v77, v76, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v0, v77, v76
	v_fmac_f32_e32 v77, v78, v56
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v77, v76
	v_div_fmas_f32 v76, v0, v56, v77
	v_max_f32_e32 v0, 0x2b8cbccc, v1
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v1, null, 0x40e00000, 0x40e00000, v0
	v_rcp_f32_e32 v56, v1
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v77, -v1, v56, 1.0
	v_fmac_f32_e32 v56, v77, v56
	v_div_scale_f32 v77, vcc_lo, v0, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v78, v77, v56
	v_fma_f32 v79, -v1, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v78, v79, v56
	v_fma_f32 v1, -v1, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v1, v1, v56, v78
	v_max_f32_e32 v56, 0x2b8cbccc, v2
	v_div_fixup_f32 v1, v1, 0x40e00000, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_div_scale_f32 v2, null, 0x40e00000, 0x40e00000, v56
	.loc	1 1238 23 is_stmt 0             ; ragged.py:1238:23
	v_mov_b16_e32 v0.h, 0
	v_mov_b16_e32 v0.l, v1.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_rcp_f32_e32 v77, v2
	v_fma_f32 v78, -v2, v77, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v56, 0x40e00000, v56
	v_mul_f32_e32 v79, v78, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v80, -v2, v79, v78
	v_fmac_f32_e32 v79, v80, v77
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v2, -v2, v79, v78
	v_div_fmas_f32 v86, v2, v77, v79
	v_max_f32_e32 v2, 0x2b8cbccc, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v6, null, 0x40e00000, 0x40e00000, v2
	v_rcp_f32_e32 v77, v6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v6, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v2, 0x40e00000, v2
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v6, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v77
	v_fma_f32 v6, -v6, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v6, v6, v77, v79
	v_div_fixup_f32 v2, v6, 0x40e00000, v2
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_and_b32_e32 v6, 1, v0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b16_e32 v0.l, v2.h
	v_add3_u32 v1, v1, v6, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v6, 1, v0
	v_add3_u32 v2, v2, v6, 0x7fff
	.loc	1 1238 24                       ; ragged.py:1238:24
	v_div_fixup_f32 v6, v76, 0x40e00000, v74
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v74.h, v0.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mov_b16_e32 v74.l, v6.h
	v_and_b32_e32 v74, 1, v74
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v6, v6, v74, 0x7fff
	.loc	1 1240 39 is_stmt 1             ; ragged.py:1240:39
	v_and_b32_e32 v74, 0xffff0000, v6
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_scale_f32 v76, null, v74, v74, v67
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v76, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v67, v74, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v77
	v_fma_f32 v76, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v88, v76, v77, v79
	v_div_scale_f32 v76, null, v74, v74, v52
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v76, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v52, v74, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v80, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v80, v77
	v_fma_f32 v76, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v80, v76, v77, v79
	v_div_scale_f32 v76, null, v74, v74, v32
	v_rcp_f32_e32 v77, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v78, -v76, v77, 1.0
	v_fmac_f32_e32 v77, v78, v77
	v_div_scale_f32 v78, vcc_lo, v32, v74, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v79, v78, v77
	v_fma_f32 v81, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v79, v81, v77
	v_fma_f32 v76, -v76, v79, v78
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v77, v76, v77, v79
	v_div_scale_f32 v76, null, v74, v74, v9
	v_rcp_f32_e32 v78, v76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v79, -v76, v78, 1.0
	v_fmac_f32_e32 v78, v79, v78
	v_div_scale_f32 v79, vcc_lo, v9, v74, v9
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v81, v79, v78
	v_fma_f32 v82, -v76, v81, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v81, v82, v78
	v_fma_f32 v76, -v76, v81, v79
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v76, v76, v78, v81
	v_div_scale_f32 v78, null, v74, v74, v66
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, vcc_lo, v66, v74, v66
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v79
	v_fma_f32 v83, -v78, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v79
	v_fma_f32 v78, -v78, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v92, v78, v79, v82
	v_div_scale_f32 v78, null, v74, v74, v45
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v81, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v81, v79
	v_div_scale_f32 v81, vcc_lo, v45, v74, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v82, v81, v79
	v_fma_f32 v83, -v78, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v82, v83, v79
	v_fma_f32 v78, -v78, v82, v81
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v81, v78, v79, v82
	v_div_scale_f32 v78, null, v74, v74, v22
	v_rcp_f32_e32 v79, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v82, -v78, v79, 1.0
	v_fmac_f32_e32 v79, v82, v79
	v_div_scale_f32 v82, vcc_lo, v22, v74, v22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v83, v82, v79
	v_fma_f32 v84, -v78, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v83, v84, v79
	v_fma_f32 v78, -v78, v83, v82
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v79, v78, v79, v83
	v_div_scale_f32 v78, null, v74, v74, v10
	v_rcp_f32_e32 v82, v78
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v83, -v78, v82, 1.0
	v_fmac_f32_e32 v82, v83, v82
	v_div_scale_f32 v83, vcc_lo, v10, v74, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v84, v83, v82
	v_fma_f32 v85, -v78, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v84, v85, v82
	v_fma_f32 v78, -v78, v84, v83
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v78, v78, v82, v84
	v_div_scale_f32 v82, null, v74, v74, v55
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v55, v74, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v87, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v87, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v90, v82, v83, v85
	v_div_scale_f32 v82, null, v74, v74, v38
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v84, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v84, v83
	v_div_scale_f32 v84, vcc_lo, v38, v74, v38
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v85, v84, v83
	v_fma_f32 v87, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v85, v87, v83
	v_fma_f32 v82, -v82, v85, v84
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v84, v82, v83, v85
	v_div_scale_f32 v82, null, v74, v74, v13
	v_rcp_f32_e32 v83, v82
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v85, -v82, v83, 1.0
	v_fmac_f32_e32 v83, v85, v83
	v_div_scale_f32 v85, vcc_lo, v13, v74, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_mul_f32_e32 v87, v85, v83
	.loc	1 1238 24 is_stmt 1             ; ragged.py:1238:24
	v_div_fixup_f32 v56, v86, 0x40e00000, v56
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v82, v87, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_mov_b16_e32 v0.l, v56.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_dual_fmac_f32 v87, v89, v83 :: v_dual_and_b32 v0, 1, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v82, -v82, v87, v85
	.loc	1 1238 23                       ; ragged.py:1238:23
	v_add3_u32 v56, v56, v0, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v82, v82, v83, v87
	v_div_scale_f32 v83, null, v74, v74, v11
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v86, 0xffff0000, v56
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v85, v83
	v_div_scale_f32 v0, null, v86, v86, v69
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v87, -v83, v85, 1.0
	v_fmac_f32_e32 v85, v87, v85
	v_div_scale_f32 v87, vcc_lo, v11, v74, v11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v89, v87, v85
	v_fma_f32 v91, -v83, v89, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v89, v91, v85
	v_fma_f32 v83, -v83, v89, v87
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v83, v83, v85, v89
	v_div_scale_f32 v85, null, v74, v74, v54
	v_rcp_f32_e32 v87, v85
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v89, -v85, v87, 1.0
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, vcc_lo, v54, v74, v54
	v_div_fixup_f32 v67, v88, v74, v67
	v_div_fixup_f32 v66, v92, v74, v66
	v_div_fixup_f32 v55, v90, v74, v55
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v91, v89, v87
	v_div_fixup_f32 v45, v81, v74, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	v_rndne_f32_e32 v66, v66
	v_rndne_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v85, v91, v89
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v45
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	v_med3_f32 v66, v66, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v93, v87
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_cvt_i32_f32_e32 v67, v67
	v_cvt_i32_f32_e32 v66, v66
	v_cvt_i32_f32_e32 v55, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v85, -v85, v91, v89
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v45, v45
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v52, v80, v74, v52
	v_div_fixup_f32 v38, v84, v74, v38
	v_div_fixup_f32 v32, v77, v74, v32
	v_div_fmas_f32 v94, v85, v87, v91
	v_div_scale_f32 v85, null, v74, v74, v34
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v52
	v_rndne_f32_e32 v38, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v94, v74, v54
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	v_med3_f32 v38, v38, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v22, v79, v74, v22
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v32, v32, s0, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	v_cvt_i32_f32_e32 v38, v38
	v_med3_f32 v54, v54, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v89, -v85, v87, 1.0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v22
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v13, v82, v74, v13
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v89, v87
	v_div_scale_f32 v89, vcc_lo, v34, v74, v34
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v11, v83, v74, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v91, v89, v87 :: v_dual_and_b32 v66, 15, v66
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v11, v11
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v93, -v85, v91, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v93, v87
	v_fma_f32 v85, -v85, v91, v89
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v89, v85, v87, v91
	v_div_scale_f32 v85, null, v74, v74, v7
	v_div_fixup_f32 v34, v89, v74, v34
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v87, v85
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v91, -v85, v87, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v34, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v87, v91, v87
	v_div_scale_f32 v91, vcc_lo, v7, v74, v7
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v93, v91, v87
	v_fma_f32 v95, -v85, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v93, v95, v87
	v_fma_f32 v85, -v85, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v85, v85, v87, v93
	v_div_scale_f32 v87, null, v74, v74, v8
	v_rcp_f32_e32 v91, v87
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v93, -v87, v91, 1.0
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v8, v74, v8
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v95, v93, v91
	v_fma_f32 v96, -v87, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v95, v96, v91
	v_fma_f32 v87, -v87, v95, v93
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	v_div_fmas_f32 v87, v87, v91, v95
	v_rcp_f32_e32 v91, v0
	v_fma_f32 v93, -v0, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v69, v86, v69
	v_mul_f32_e32 v95, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v0, v95, v93
	v_fmac_f32_e32 v95, v96, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v95, v93
	v_div_fmas_f32 v105, v0, v91, v95
	v_div_scale_f32 v0, null, v86, v86, v57
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v69, v105, v86, v69
	v_rcp_f32_e32 v91, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v69, v69, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v93, -v0, v91, 1.0
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v57, v86, v57
	v_mul_f32_e32 v95, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v0, v95, v93
	v_fmac_f32_e32 v95, v96, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v95, v93
	v_div_fmas_f32 v97, v0, v91, v95
	v_div_scale_f32 v0, null, v86, v86, v36
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v0
	v_fma_f32 v93, -v0, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v93, v91
	v_div_scale_f32 v93, vcc_lo, v36, v86, v36
	v_mul_f32_e32 v95, v93, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v0, v95, v93
	v_fmac_f32_e32 v95, v96, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v95, v93
	v_div_fmas_f32 v93, v0, v91, v95
	v_div_scale_f32 v0, null, v86, v86, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v91, v0
	v_fma_f32 v95, -v0, v91, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v91, v95, v91
	v_div_scale_f32 v95, vcc_lo, v18, v86, v18
	v_mul_f32_e32 v96, v95, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v0, v96, v95
	v_fmac_f32_e32 v96, v98, v91
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v96, v95
	v_div_fmas_f32 v91, v0, v91, v96
	v_div_scale_f32 v0, null, v86, v86, v68
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v18, v91, v86, v18
	v_rcp_f32_e32 v95, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v18
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v18, v18, s0, 0x40e00000
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v0, v95, 1.0
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v68, v86, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v98, v96, v95
	v_fma_f32 v99, -v0, v98, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v99, v95
	v_fma_f32 v0, -v0, v98, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v109, v0, v95, v98
	v_div_scale_f32 v0, null, v86, v86, v49
	v_rcp_f32_e32 v95, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v96, -v0, v95, 1.0
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v49, v86, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v98, v96, v95
	v_fma_f32 v99, -v0, v98, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v99, v95
	v_fma_f32 v0, -v0, v98, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v100, v0, v95, v98
	v_div_scale_f32 v0, null, v86, v86, v35
	v_div_fixup_f32 v49, v100, v86, v49
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v95, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v49, v49
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v49, v49, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v96, -v0, v95, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v49, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v95, v96, v95
	v_div_scale_f32 v96, vcc_lo, v35, v86, v35
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v98, v96, v95
	v_fma_f32 v99, -v0, v98, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v98, v99, v95
	v_fma_f32 v0, -v0, v98, v96
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v96, v0, v95, v98
	v_div_scale_f32 v0, null, v86, v86, v19
	v_rcp_f32_e32 v95, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v98, -v0, v95, 1.0
	v_fmac_f32_e32 v95, v98, v95
	v_div_scale_f32 v98, vcc_lo, v19, v86, v19
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v99, v98, v95
	v_fma_f32 v101, -v0, v99, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v99, v101, v95
	v_fma_f32 v0, -v0, v99, v98
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v95, v0, v95, v99
	v_div_scale_f32 v0, null, v86, v86, v60
	v_div_fixup_f32 v19, v95, v86, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v98, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v19, v19
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v0, v98, 1.0
	v_fmac_f32_e32 v98, v99, v98
	v_div_scale_f32 v99, vcc_lo, v60, v86, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v101, v99, v98
	v_fma_f32 v102, -v0, v101, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v102, v98
	v_fma_f32 v0, -v0, v101, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v107, v0, v98, v101
	v_div_scale_f32 v0, null, v86, v86, v43
	v_div_fixup_f32 v60, v107, v86, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v98, v0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v60, v60, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v0, v98, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v60, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v99, v98
	v_div_scale_f32 v99, vcc_lo, v43, v86, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v101, v99, v98
	v_fma_f32 v102, -v0, v101, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v101, v102, v98
	v_fma_f32 v0, -v0, v101, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v101, v0, v98, v101
	v_div_scale_f32 v0, null, v86, v86, v23
	v_div_fixup_f32 v43, v101, v86, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v98, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v43, v43
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v43, v43, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v99, -v0, v98, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v43, v43
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v98, v99, v98
	v_div_scale_f32 v99, vcc_lo, v23, v86, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v102, v99, v98
	v_fma_f32 v103, -v0, v102, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v102, v103, v98
	v_fma_f32 v0, -v0, v102, v99
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v98, v0, v98, v102
	v_div_scale_f32 v0, null, v86, v86, v20
	v_rcp_f32_e32 v99, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v102, -v0, v99, 1.0
	v_fmac_f32_e32 v99, v102, v99
	v_div_scale_f32 v102, vcc_lo, v20, v86, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v103, v102, v99
	v_fma_f32 v104, -v0, v103, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v103, v104, v99
	v_fma_f32 v0, -v0, v103, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v99, v0, v99, v103
	v_div_scale_f32 v0, null, v86, v86, v59
	v_div_fixup_f32 v20, v99, v86, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v102, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v20, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v20, v20, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v103, -v0, v102, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v20, v20
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v102, v103, v102
	v_div_scale_f32 v103, vcc_lo, v59, v86, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v104, v103, v102
	v_fma_f32 v106, -v0, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v106, v102
	v_fma_f32 v0, -v0, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v111, v0, v102, v104
	v_div_scale_f32 v0, null, v86, v86, v39
	v_rcp_f32_e32 v102, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v0, v102, 1.0
	v_fmac_f32_e32 v102, v103, v102
	v_div_scale_f32 v103, vcc_lo, v39, v86, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v104, v103, v102
	v_fma_f32 v106, -v0, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v106, v102
	v_fma_f32 v0, -v0, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v106, v0, v102, v104
	v_div_scale_f32 v0, null, v86, v86, v14
	v_rcp_f32_e32 v102, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v103, -v0, v102, 1.0
	v_fmac_f32_e32 v102, v103, v102
	v_div_scale_f32 v103, vcc_lo, v14, v86, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v104, v103, v102
	v_fma_f32 v108, -v0, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v104, v108, v102
	v_fma_f32 v0, -v0, v104, v103
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v102, v0, v102, v104
	v_div_scale_f32 v0, null, v86, v86, v15
	v_div_fixup_f32 v14, v102, v86, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v103, v0
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v104, -v0, v103, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v103, v104, v103
	v_div_scale_f32 v104, vcc_lo, v15, v86, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v108, v104, v103
	v_fma_f32 v110, -v0, v108, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v110, v103
	v_fma_f32 v0, -v0, v108, v104
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v104, v0, v103, v108
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v103, 0xffff0000, v1
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v1.l, v6.h
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v15, v104, v86, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_div_scale_f32 v0, null, v103, v103, v71
	v_rcp_f32_e32 v108, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v110, -v0, v108, 1.0
	v_fmac_f32_e32 v108, v110, v108
	v_div_scale_f32 v110, vcc_lo, v71, v103, v71
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v112, v110, v108
	v_fma_f32 v113, -v0, v112, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v113, v108
	v_fma_f32 v0, -v0, v112, v110
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v124, v0, v108, v112
	v_div_scale_f32 v0, null, v103, v103, v58
	v_div_fixup_f32 v71, v124, v103, v71
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v0
	v_fma_f32 v110, -v0, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v110, v108
	v_div_scale_f32 v110, vcc_lo, v58, v103, v58
	v_mul_f32_e32 v112, v110, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v0, v112, v110
	v_fmac_f32_e32 v112, v113, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v112, v110
	v_div_fmas_f32 v115, v0, v108, v112
	v_div_scale_f32 v0, null, v103, v103, v40
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v0
	v_fma_f32 v110, -v0, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v110, v108
	v_div_scale_f32 v110, vcc_lo, v40, v103, v40
	v_mul_f32_e32 v112, v110, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v113, -v0, v112, v110
	v_fmac_f32_e32 v112, v113, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v112, v110
	v_div_fmas_f32 v110, v0, v108, v112
	v_div_scale_f32 v0, null, v103, v103, v28
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v108, v0
	v_fma_f32 v112, -v0, v108, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v108, v112, v108
	v_div_scale_f32 v112, vcc_lo, v28, v103, v28
	v_mul_f32_e32 v113, v112, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v114, -v0, v113, v112
	v_fmac_f32_e32 v113, v114, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v113, v112
	v_div_fmas_f32 v108, v0, v108, v113
	v_div_scale_f32 v0, null, v103, v103, v70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v113, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, vcc_lo, v70, v103, v70
	v_mul_f32_e32 v114, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v0, v114, v113
	v_fmac_f32_e32 v114, v116, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v114, v113
	v_div_fmas_f32 v126, v0, v112, v114
	v_div_scale_f32 v0, null, v103, v103, v51
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v113, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, vcc_lo, v51, v103, v51
	v_mul_f32_e32 v114, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v0, v114, v113
	v_fmac_f32_e32 v114, v116, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v114, v113
	v_div_fmas_f32 v118, v0, v112, v114
	v_div_scale_f32 v0, null, v103, v103, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v113, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, vcc_lo, v37, v103, v37
	v_mul_f32_e32 v114, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v0, v114, v113
	v_fmac_f32_e32 v114, v116, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v114, v113
	v_div_fmas_f32 v114, v0, v112, v114
	v_div_scale_f32 v0, null, v103, v103, v29
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v113, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v113, v112
	v_div_scale_f32 v113, vcc_lo, v29, v103, v29
	v_mul_f32_e32 v116, v113, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v117, -v0, v116, v113
	v_fmac_f32_e32 v116, v117, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v116, v113
	v_div_fmas_f32 v113, v0, v112, v116
	v_div_scale_f32 v0, null, v103, v103, v62
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v116, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v116, v112
	v_div_scale_f32 v116, vcc_lo, v62, v103, v62
	v_mul_f32_e32 v117, v116, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v117, v116
	v_fmac_f32_e32 v117, v119, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v117, v116
	v_div_fmas_f32 v125, v0, v112, v117
	v_div_scale_f32 v0, null, v103, v103, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v62, v125, v103, v62
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v116, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v116, v112
	v_div_scale_f32 v116, vcc_lo, v46, v103, v46
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v117, v116, v112
	v_fma_f32 v119, -v0, v117, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v117, v119, v112
	v_fma_f32 v0, -v0, v117, v116
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v120, v0, v112, v117
	v_div_scale_f32 v0, null, v103, v103, v31
	v_div_fixup_f32 v46, v120, v103, v46
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v116, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v116, v112
	v_div_scale_f32 v116, vcc_lo, v31, v103, v31
	v_mul_f32_e32 v117, v116, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v117, v116
	v_fmac_f32_e32 v117, v119, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v117, v116
	v_div_fmas_f32 v116, v0, v112, v117
	v_div_scale_f32 v0, null, v103, v103, v30
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v117, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v117, v112
	v_div_scale_f32 v117, vcc_lo, v30, v103, v30
	v_mul_f32_e32 v119, v117, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v121, -v0, v119, v117
	v_fmac_f32_e32 v119, v121, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v119, v117
	v_div_fmas_f32 v117, v0, v112, v119
	v_div_scale_f32 v0, null, v103, v103, v61
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v119, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v119, v112
	v_div_scale_f32 v119, vcc_lo, v61, v103, v61
	v_mul_f32_e32 v121, v119, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v122, -v0, v121, v119
	v_fmac_f32_e32 v121, v122, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v121, v119
	v_div_fmas_f32 v127, v0, v112, v121
	v_div_scale_f32 v0, null, v103, v103, v42
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v61, v127, v103, v61
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v119, v112
	v_div_scale_f32 v119, vcc_lo, v42, v103, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v121, v119, v112
	v_fma_f32 v122, -v0, v121, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v121, v122, v112
	v_fma_f32 v0, -v0, v121, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v123, v0, v112, v121
	v_div_scale_f32 v0, null, v103, v103, v26
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v119, v112
	v_div_scale_f32 v119, vcc_lo, v26, v103, v26
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v121, v119, v112
	v_fma_f32 v122, -v0, v121, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v121, v122, v112
	v_fma_f32 v0, -v0, v121, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v121, v0, v112, v121
	v_div_scale_f32 v0, null, v103, v103, v27
	v_rcp_f32_e32 v112, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v119, -v0, v112, 1.0
	v_fmac_f32_e32 v112, v119, v112
	v_div_scale_f32 v119, vcc_lo, v27, v103, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v122, v119, v112
	v_fma_f32 v128, -v0, v122, v119
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v122, v128, v112
	v_fma_f32 v0, -v0, v122, v119
	.loc	1 1240 39 is_stmt 0             ; ragged.py:1240:39
	v_and_b32_e32 v119, 0xffff0000, v2
	.loc	1 1253 9 is_stmt 1              ; ragged.py:1253:9
	v_mov_b16_e32 v2.l, v56.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v122, v0, v112, v122
	v_div_scale_f32 v0, null, v119, v119, v73
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v112, v0
	v_fma_f32 v128, -v0, v112, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v112, v128, v112
	v_div_scale_f32 v128, vcc_lo, v73, v119, v73
	v_mul_f32_e32 v129, v128, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v130, -v0, v129, v128
	v_fmac_f32_e32 v129, v130, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v0, -v0, v129, v128
	v_div_fmas_f32 v128, v0, v112, v129
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_b32_e32 v112, 16, v164
	v_lshlrev_b32_e32 v0, 13, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v73, v128, v119, v73
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v129, 8, v112
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v128, 15, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v71
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v0, 0xe000, v0, v129
	v_and_b32_e32 v129, 64, v164
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v75, v75, v129
	v_lshlrev_b32_e32 v129, 3, v166
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v67, v67
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v75, v0, v129, v75
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v0, null, v119, v119, v63
	v_rcp_f32_e32 v129, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v130, -v0, v129, 1.0
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v63, v119, v63
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v131, v130, v129
	v_fma_f32 v132, -v0, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v132, v129
	v_fma_f32 v0, -v0, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v132, v0, v129, v131
	v_div_scale_f32 v0, null, v119, v119, v44
	v_rcp_f32_e32 v129, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v130, -v0, v129, 1.0
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v44, v119, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v131, v130, v129
	v_fma_f32 v133, -v0, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v133, v129
	v_fma_f32 v0, -v0, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_div_fmas_f32 v133, v0, v129, v131
	v_div_scale_f32 v0, null, v119, v119, v25
	v_rcp_f32_e32 v129, v0
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v130, -v0, v129, 1.0
	v_fmac_f32_e32 v129, v130, v129
	v_div_scale_f32 v130, vcc_lo, v25, v119, v25
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v131, v130, v129
	v_fma_f32 v134, -v0, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v131, v134, v129
	v_fma_f32 v0, -v0, v131, v130
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v0, v0, v129, v131
	v_div_scale_f32 v129, null, v119, v119, v72
	v_div_fixup_f32 v0, v0, v119, v25
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_rcp_f32_e32 v130, v129
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v0, v0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v0, v0, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v131, -v129, v130, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v130, v131, v130
	v_div_scale_f32 v131, vcc_lo, v72, v119, v72
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v134, v131, v130
	v_fma_f32 v135, -v129, v134, v131
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v134, v135, v130
	v_fma_f32 v129, -v129, v134, v131
	s_delay_alu instid0(VALU_DEP_1)
	v_div_fmas_f32 v134, v129, v130, v134
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v130, 15, v67
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v67, v109, v86, v68
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v73
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v129, 15, v69
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v69, v134, v119, v72
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v67, v67
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v68, v68, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v69, v69
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v67, v67, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v68, v68
	v_med3_f32 v69, v69, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v67, v67
	v_and_b32_e32 v131, 15, v68
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v68, v126, v103, v70
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v69, v69
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_add_nc_u32_e32 v70, 0, v75
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v67, 15, v67
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v68, v68
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v69, 15, v69
	v_med3_f32 v68, v68, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v68, v68
	v_and_b32_e32 v68, 15, v68
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v70, v[128:131]
	ds_store_b128 v70, v[66:69] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v66, null, v119, v119, v53
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v53, v119, v53
	v_mul_f32_e32 v69, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v71, -v66, v69, v68
	v_fmac_f32_e32 v69, v71, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v69, v68
	v_div_fmas_f32 v69, v66, v67, v69
	v_div_scale_f32 v66, null, v119, v119, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v41, v119, v41
	v_mul_f32_e32 v71, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v72, -v66, v71, v68
	v_fmac_f32_e32 v71, v72, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v71, v68
	v_div_fmas_f32 v71, v66, v67, v71
	v_div_scale_f32 v66, null, v119, v119, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v21, v119, v21
	v_mul_f32_e32 v72, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v73, -v66, v72, v68
	v_fmac_f32_e32 v72, v73, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v72, v68
	v_div_fmas_f32 v72, v66, v67, v72
	v_div_scale_f32 v66, null, v119, v119, v65
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v67, v66
	v_fma_f32 v68, -v66, v67, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v67, v68, v67
	v_div_scale_f32 v68, vcc_lo, v65, v119, v65
	v_mul_f32_e32 v73, v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v88, -v66, v73, v68
	v_fmac_f32_e32 v73, v88, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v66, -v66, v73, v68
	v_div_fmas_f32 v66, v66, v67, v73
	v_div_scale_f32 v67, null, v119, v119, v50
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v73, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v73, v68
	v_div_scale_f32 v73, vcc_lo, v50, v119, v50
	v_mul_f32_e32 v88, v73, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v92, -v67, v88, v73
	v_fmac_f32_e32 v88, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v88, v73
	v_div_fmas_f32 v73, v67, v68, v88
	v_div_scale_f32 v67, null, v119, v119, v33
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v88, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v88, v68
	v_div_scale_f32 v88, vcc_lo, v33, v119, v33
	v_mul_f32_e32 v92, v88, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v105, -v67, v92, v88
	v_fmac_f32_e32 v92, v105, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v92, v88
	v_div_fmas_f32 v88, v67, v68, v92
	v_div_scale_f32 v67, null, v119, v119, v24
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_rcp_f32_e32 v68, v67
	v_fma_f32 v92, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v92, v68
	v_div_scale_f32 v92, vcc_lo, v24, v119, v24
	v_mul_f32_e32 v105, v92, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v109, -v67, v105, v92
	v_fmac_f32_e32 v105, v109, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v105, v92
	v_div_fmas_f32 v92, v67, v68, v105
	v_div_scale_f32 v67, null, v119, v119, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v24, v92, v119, v24
	v_rcp_f32_e32 v68, v67
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v24
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v105, -v67, v68, 1.0
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v68, v105, v68
	v_div_scale_f32 v105, vcc_lo, v64, v119, v64
	v_mul_f32_e32 v109, v105, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v124, -v67, v109, v105
	v_fmac_f32_e32 v109, v124, v68
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v67, -v67, v109, v105
	v_div_fmas_f32 v105, v67, v68, v109
	v_div_fixup_f32 v68, v66, v119, v65
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_and_b32_e32 v65, 15, v55
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v55, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v66, 15, v60
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v62, v105, v119, v64
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v55, v55, s0, 0x40e00000
	v_cvt_i32_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v67, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v111, v86, v59
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v59, v68
	v_rndne_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v59, v59, s0, 0x40e00000
	v_med3_f32 v55, v55, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v59, v59
	v_cvt_i32_f32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v68, 15, v59
	v_and_b32_e32 v59, 15, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v61
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v60, 15, v55
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v115, v103, v58
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v54, v54
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v61, 15, v54
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v62
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v54, v54, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v54, v54
	v_and_b32_e32 v62, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v97, v86, v57
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v55
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v70, v[65:68] offset:2048
	ds_store_b128 v70, v[59:62] offset:2304
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v60, v132, v119, v63
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v54, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v55, v69, v119, v53
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v54, v54, s0, 0x40e00000
	v_cvt_i32_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v54, v54
	v_and_b32_e32 v59, 15, v52
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v52, v60
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v54
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v54, v118, v103, v51
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v51, 15, v45
	v_med3_f32 v52, v52, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v54
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_and_b32_e32 v60, 15, v52
	v_and_b32_e32 v52, 15, v49
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_scale_f32 v49, null, v119, v119, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v45, v45
	v_and_b32_e32 v53, 15, v45
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v45, v55
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v45, v45, s0, 0x40e00000
	v_cvt_i32_f32_e32 v45, v45
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v54, 15, v45
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v45, v75, 16, 0
	ds_store_b128 v45, v[57:60]
	ds_store_b128 v45, v[51:54] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_rcp_f32_e32 v51, v49
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v57, 15, v34
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v52, -v49, v51, 1.0
	v_fmac_f32_e32 v51, v52, v51
	v_div_scale_f32 v52, vcc_lo, v47, v119, v47
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v53, v52, v51
	v_fma_f32 v54, -v49, v53, v52
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fmac_f32_e32 v53, v54, v51
	v_fma_f32 v49, -v49, v53, v52
	v_div_fixup_f32 v52, v73, v119, v50
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v50, 15, v43
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v53, v49, v51, v53
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v49, 15, v38
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v38, v46
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v38, v38, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v38, v38
	v_and_b32_e32 v51, 15, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v106, v86, v39
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v39, v52
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_rndne_f32_e32 v38, v38
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v39, v39, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v38, v38, s0, 0x40e00000
	v_cvt_i32_f32_e32 v39, v39
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v38, v38
	v_and_b32_e32 v52, 15, v39
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v39, v123, v103, v42
	v_div_fixup_f32 v42, v53, v119, v47
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v58, 15, v38
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v38, v133, v119, v44
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v39
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_cvt_i32_f32_e32 v34, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v59, 15, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v42
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v42, 15, v32
	v_med3_f32 v34, v34, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v34, v34
	v_and_b32_e32 v60, 15, v34
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v34, v93, v86, v36
	v_div_fixup_f32 v36, v110, v103, v40
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v45, v[49:52] offset:2048
	ds_store_b128 v45, v[57:60] offset:2304
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v34
	v_rndne_f32_e32 v32, v36
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_div_fixup_f32 v36, v114, v103, v37
	v_div_fixup_f32 v37, v71, v119, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v34, v34
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_and_b32_e32 v43, 15, v34
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v34, v38
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v44, 15, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v96, v86, v35
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v38, v75, 32, 0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v34, v34, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v34, v34
	v_med3_f32 v32, v32, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v45, 15, v34
	v_and_b32_e32 v34, 15, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v36
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v32, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_and_b32_e32 v35, 15, v32
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v32, v78, v74, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v22, v22
	v_and_b32_e32 v36, 15, v22
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v22, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v22, v22, s0, 0x40e00000
	v_cvt_i32_f32_e32 v22, v22
	s_delay_alu instid0(VALU_DEP_1)
	v_and_b32_e32 v37, 15, v22
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_store_b128 v38, v[42:45]
	ds_store_b128 v38, v[34:37] offset:256
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v35, v87, v74, v8
	v_div_scale_f32 v8, null, v119, v119, v17
	v_div_fixup_f32 v36, v121, v103, v26
	v_div_fixup_f32 v37, v122, v103, v27
	v_div_fixup_f32 v34, v85, v74, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_rcp_f32_e32 v10, v8
	v_div_fixup_f32 v7, v98, v86, v23
	v_div_fixup_f32 v23, v108, v103, v28
	v_div_fixup_f32 v28, v113, v103, v29
	v_div_fixup_f32 v22, v76, v74, v9
	v_div_fixup_f32 v9, v116, v103, v31
	v_div_fixup_f32 v31, v117, v103, v30
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v7, v7
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v26, -v8, v10, 1.0
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v9, v9
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v7, v7, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v10, v26, v10
	v_div_scale_f32 v26, vcc_lo, v17, v119, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v9, v9, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_mul_f32_e32 v27, v26, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v9, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v29, -v8, v27, v26
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v9, 15, v9
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v27, v29, v10
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v8, -v8, v27, v26
	v_div_fmas_f32 v26, v8, v10, v27
	v_div_scale_f32 v8, null, v119, v119, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_div_fixup_f32 v39, v26, v119, v17
	v_rcp_f32_e32 v10, v8
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v17, v18
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v18, v32
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v26, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v15
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fma_f32 v27, -v8, v10, 1.0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_fmac_f32_e32 v10, v27, v10
	v_div_scale_f32 v27, vcc_lo, v12, v119, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mul_f32_e32 v29, v27, v10
	v_fma_f32 v30, -v8, v29, v27
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v29, v30, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v30, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v28
	v_rndne_f32_e32 v28, v39
	.loc	1 1240 33 is_stmt 0             ; ragged.py:1240:33
	v_fma_f32 v8, -v8, v29, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fmas_f32 v27, v8, v10, v29
	.loc	1 1240 13 is_stmt 0             ; ragged.py:1240:13
	v_rndne_f32_e32 v8, v13
	.loc	1 1239 13 is_stmt 1             ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v13, v7
	s_delay_alu instid0(VALU_DEP_4)
	v_cvt_i32_f32_e32 v14, v14
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v10, v88, v119, v33
	v_div_fixup_f32 v32, v27, v119, v12
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v8, v8, s0, 0x40e00000
	v_med3_f32 v12, v18, s0, 0x40e00000
	v_med3_f32 v18, v19, s0, 0x40e00000
	v_med3_f32 v19, v11, s0, 0x40e00000
	.loc	1 1240 33                       ; ragged.py:1240:33
	v_div_fixup_f32 v33, v72, v119, v21
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v8, v8
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v10, v10
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v18, v18
	v_cvt_i32_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_and_b32_e32 v7, 15, v8
	v_and_b32_e32 v8, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v22
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v21, 15, v19
	v_and_b32_e32 v19, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v31
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v10, v10, s0, 0x40e00000
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_and_b32_e32 v22, 15, v20
	v_and_b32_e32 v18, 15, v18
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v10, v10
	v_cvt_i32_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cvt_i32_f32_e32 v14, v14
	v_and_b32_e32 v10, 15, v10
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v11, 15, v13
	v_cvt_i32_f32_e32 v13, v12
	v_and_b32_e32 v12, 15, v17
	v_and_b32_e32 v17, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_cvt_i32_f32_e32 v13, v13
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_and_b32_e32 v25, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v35
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cvt_i32_f32_e32 v13, v13
	v_and_b32_e32 v29, 15, v13
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v13, v23
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v23, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v36
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v13, v13, s0, 0x40e00000
	v_med3_f32 v14, v14, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cvt_i32_f32_e32 v13, v13
	v_cvt_i32_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v13, 15, v13
	v_and_b32_e32 v27, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v37
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	v_cvt_i32_f32_e32 v14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_and_b32_e32 v31, 15, v14
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v14, v33
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v33, 2, v112
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v14, v14, s0, 0x40e00000
	s_delay_alu instid0(VALU_DEP_1)
	v_cvt_i32_f32_e32 v15, v14
	v_and_b32_e32 v14, 15, v0
	v_med3_f32 v0, v24, s0, 0x40e00000
	.loc	1 1240 13                       ; ragged.py:1240:13
	v_rndne_f32_e32 v24, v32
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_cndmask_b32_e64 v32, 0x2010, 0, s3
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v20, 15, v15
	v_med3_f32 v15, v28, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_lshlrev_b32_e32 v28, 6, v164
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_med3_f32 v24, v24, s0, 0x40e00000
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xor_b32_e32 v32, v32, v48
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v0, v0
	v_cvt_i32_f32_e32 v15, v15
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_and_or_b32 v16, 0x300, v28, v16
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_cvt_i32_f32_e32 v34, v24
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v24, 15, v0
	v_and_b32_e32 v28, 15, v15
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_or3_b32 v43, v32, v16, v33
	v_xad_u32 v0, v75, 48, 0
	ds_store_b128 v38, v[7:10] offset:2048
	ds_store_b128 v38, v[25:28] offset:2304
	ds_store_b128 v0, v[11:14]
	ds_store_b128 v0, v[17:20] offset:256
	v_add_nc_u32_e32 v27, 0, v43
	.loc	1 1239 13                       ; ragged.py:1239:13
	v_and_b32_e32 v32, 15, v34
	.loc	1 1245 22                       ; ragged.py:1245:22
	v_xad_u32 v35, 0x4020, v43, 0
	ds_store_b128 v0, v[21:24] offset:2048
	ds_store_b128 v0, v[29:32] offset:2304
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[7:10], v27
	ds_load_b128 v[11:14], v27 offset:4096
	ds_load_b128 v[15:18], v35
	ds_load_b128 v[19:22], v35 offset:4096
	v_xad_u32 v39, 0x8040, v43, 0
	ds_load_b128 v[23:26], v27 offset:128
	ds_load_b128 v[27:30], v27 offset:4224
	ds_load_b128 v[31:34], v35 offset:128
	ds_load_b128 v[35:38], v35 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(6)
	v_lshl_or_b32 v51, v11, 4, v7
	v_lshl_or_b32 v52, v12, 4, v8
	v_lshl_or_b32 v53, v13, 4, v9
	v_lshl_or_b32 v0, v14, 4, v10
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v54, v19, 4, v15
	v_lshl_or_b32 v55, v20, 4, v16
	v_lshl_or_b32 v57, v21, 4, v17
	v_lshl_or_b32 v9, v22, 4, v18
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[10:13], v39 offset:4096
	ds_load_b128 v[14:17], v39
	ds_load_b128 v[18:21], v39 offset:128
	ds_load_b128 v[39:42], v39 offset:4224
	v_xad_u32 v8, 0xc060, v43, 0
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v22, v10, 4, v14
	v_lshl_or_b32 v58, v11, 4, v15
	v_lshl_or_b32 v59, v12, 4, v16
	v_lshl_or_b32 v7, v13, 4, v17
	.loc	1 1245 22                       ; ragged.py:1245:22
	ds_load_b128 v[10:13], v8 offset:4096
	ds_load_b128 v[14:17], v8
	ds_load_b128 v[43:46], v8 offset:128
	ds_load_b128 v[47:50], v8 offset:4224
	.loc	1 1246 19                       ; ragged.py:1246:19
	s_waitcnt lgkmcnt(4)
	v_lshl_or_b32 v18, v39, 4, v18
	v_lshl_or_b32 v19, v40, 4, v19
	s_waitcnt lgkmcnt(2)
	v_lshl_or_b32 v60, v10, 4, v14
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_lshrrev_b32_e32 v14, 7, v166
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v16, v12, 4, v16
	v_lshl_or_b32 v10, v13, 4, v17
	v_lshl_or_b32 v17, v28, 4, v24
	v_lshl_or_b32 v24, v35, 4, v31
	.loc	1 1044 32                       ; ragged.py:1044:32
	v_or_b32_e32 v12, 62, v14
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v31, v14, v4
	v_lshl_or_b32 v4, s80, 7, v5
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v61, v11, 4, v15
	v_lshl_or_b32 v15, v27, 4, v23
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s0, s74, v12
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s75, 0, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v28, v41, 4, v20
	s_waitcnt lgkmcnt(0)
	v_lshl_or_b32 v20, v47, 4, v43
	v_lshl_or_b32 v23, v29, 4, v25
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e32 vcc_lo, s[76:77], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s0, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 60, v14
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v25, v36, 4, v32
	v_lshl_or_b32 v29, v42, 4, v21
	v_lshl_or_b32 v21, v48, 4, v44
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v32, 60, v31
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s1, s74, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_add_co_ci_u32_e64 v13, null, s75, 0, s1
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v11, v30, 4, v26
	v_lshl_or_b32 v26, v37, 4, v33
	v_lshl_or_b32 v30, v49, 4, v45
	.loc	1 1046 21                       ; ragged.py:1046:21
	v_cmp_le_i64_e64 s1, s[76:77], v[12:13]
	.loc	1 1046 48 is_stmt 0             ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s3, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 58, v14
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v27, v38, 4, v34
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 vcc_lo, vcc_lo, s0
	.loc	1 1246 19                       ; ragged.py:1246:19
	v_lshl_or_b32 v8, v50, 4, v46
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18                       ; ragged.py:1044:18
	v_add_co_u32 v12, s4, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s4
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s1, s1, s3
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s4, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s5, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 56, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s6, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s6
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s4, s4, s5
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s6, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s7, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 54, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s8, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s8
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s6, s6, s7
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s8, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s9, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 52, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s10, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s10
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s8, s8, s9
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s10, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s11, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 50, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s12, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s12
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s10, s10, s11
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s12, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s13, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 48, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s14, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s14
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s12, s12, s13
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s14, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s15, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 46, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s16, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s16
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s14, s14, s15
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s16, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s17, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 44, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s18, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s18
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s16, s16, s17
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s18, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s19, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 42, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s20, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s20
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s18, s18, s19
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s20, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s21, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 40, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s22, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s22
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s20, s20, s21
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s22, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s23, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 38, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s24, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s24
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s22, s22, s23
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s24, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s25, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 36, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s26, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s26
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s24, s24, s25
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s26, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s27, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 34, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s28, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s28
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s26, s26, s27
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s28, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s29, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 32, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s30, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s30
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s28, s28, s29
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s30, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s31, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 30, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s33, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s33
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s30, s30, s31
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s33, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s34, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 28, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s35, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s35
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s33, s33, s34
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s35, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s36, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 26, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s37, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s37
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s35, s35, s36
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s37, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s38, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 24, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s39, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s39
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s37, s37, s38
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s39, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s40, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 22, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s41, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s41
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s39, s39, s40
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s41, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s42, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 20, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s43, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s43
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s41, s41, s42
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s43, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s44, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 18, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s45, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s45
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s43, s43, s44
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s45, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s46, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 16, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s47, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s47
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s45, s45, s46
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s47, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s48, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 14, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s49, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s49
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s47, s47, s48
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s49, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s50, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 12, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s51, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s51
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s49, s49, s50
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s51, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s52, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 10, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s53, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s53
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s51, s51, s52
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s53, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s54, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 8, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s55, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s55
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s53, s53, s54
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s55, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s56, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 6, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s57, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s57
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s55, s55, s56
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s57, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s58, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 4, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s59, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s59
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s57, s57, s58
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s59, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s60, s[78:79], v[12:13]
	.loc	1 1044 32 is_stmt 1             ; ragged.py:1044:32
	v_or_b32_e32 v12, 2, v14
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 1044 18 is_stmt 0             ; ragged.py:1044:18
	v_add_co_u32 v12, s61, s74, v12
	v_add_co_ci_u32_e64 v13, null, s75, 0, s61
	.loc	1 1046 20 is_stmt 1             ; ragged.py:1046:20
	s_and_b32 s59, s59, s60
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s61, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s62, s[78:79], v[12:13]
	.loc	1 1044 18 is_stmt 1             ; ragged.py:1044:18
	v_add_co_u32 v12, s63, s74, v14
	s_delay_alu instid0(VALU_DEP_1)
	v_add_co_ci_u32_e64 v13, null, s75, 0, s63
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s61, s61, s62
	.loc	1 1046 21 is_stmt 0             ; ragged.py:1046:21
	v_cmp_le_i64_e64 s63, s[76:77], v[12:13]
	.loc	1 1046 48                       ; ragged.py:1046:48
	v_cmp_gt_i64_e64 s64, s[78:79], v[12:13]
	.loc	1 1249 13 is_stmt 1             ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v31, s73, v[4:5]
	.loc	1 1046 20                       ; ragged.py:1046:20
	s_and_b32 s63, s63, s64
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_mov_b32 s64, s68
	v_cndmask_b32_e64 v5, 0x80000000, v12, s63
	buffer_store_b8 v51, v5, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 2, v31
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v12, s61
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 4, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v54, v5, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v12, s73, v[4:5]
	v_add_nc_u32_e32 v5, 6, v31
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s59
	buffer_store_b8 v22, v12, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	v_add_nc_u32_e32 v5, 8, v31
	v_mad_u64_u32 v[13:14], null, v5, s73, v[4:5]
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v12, s57
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 10, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v60, v5, s[64:67], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v13, s55
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v12, s73, v[4:5]
	v_add_nc_u32_e32 v13, 12, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v15, v5, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v5, 14, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v12, 0x80000000, v12, s53
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v13, s73, v[4:5]
	v_mad_u64_u32 v[14:15], null, v5, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v24, v12, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 16, v31
	v_add_nc_u32_e32 v15, 20, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v13, s51
	v_cndmask_b32_e64 v22, 0x80000000, v14, s49
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 18, v31
	s_delay_alu instid0(VALU_DEP_3)
	v_mad_u64_u32 v[12:13], null, v12, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v18, v5, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s73, v[4:5]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v20, v22, s[64:67], 0 offen
	v_cndmask_b32_e64 v5, 0x80000000, v12, s47
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v12, 22, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v15, 0x80000000, v13, s45
	v_cndmask_b32_e64 v18, 0x80000000, v14, s43
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v14, 24, v31
	s_delay_alu instid0(VALU_DEP_4)
	v_mad_u64_u32 v[12:13], null, v12, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x2
	buffer_store_b8 v52, v5, s[64:67], 0 offen
	buffer_store_b8 v55, v15, s[64:67], 0 offen
	buffer_store_b8 v58, v18, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[13:14], null, v14, s73, v[4:5]
	v_add_nc_u32_e32 v5, 26, v31
	v_add_nc_u32_e32 v15, 28, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v12, s41
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v18, 0x80000000, v13, s39
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	v_add_nc_u32_e32 v5, 30, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v61, v14, s[64:67], 0 offen
	buffer_store_b8 v17, v18, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v18, 36, v31
	v_mad_u64_u32 v[13:14], null, v15, s73, v[4:5]
	v_add_nc_u32_e32 v14, 32, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v17, 0x80000000, v12, s37
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 34, v31
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v20, 0x80000000, v13, s35
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	v_add_nc_u32_e32 v5, 38, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v25, v17, s[64:67], 0 offen
	buffer_store_b8 v19, v20, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v17, 40, v31
	v_add_nc_u32_e32 v19, 42, v31
	v_mad_u64_u32 v[13:14], null, v14, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v12, s33
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v20, 44, v31
	v_add_nc_u32_e32 v25, 58, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v21, v14, s[64:67], 0 offen
	v_cndmask_b32_e64 v22, 0x80000000, v13, s30
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v15, s73, v[4:5]
	v_mad_u64_u32 v[13:14], null, v18, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v53, v22, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v15, 46, v31
	v_add_nc_u32_e32 v18, 48, v31
	v_add_nc_u32_e32 v21, 50, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v12, s28
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v22, 52, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v24, 0x80000000, v13, s26
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v5, s73, v[4:5]
	v_add_nc_u32_e32 v5, 54, v31
	.loc	1 1248 9                        ; ragged.py:1248:9
	s_clause 0x1
	buffer_store_b8 v57, v14, s[64:67], 0 offen
	buffer_store_b8 v59, v24, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_add_nc_u32_e32 v24, 56, v31
	v_add_nc_u32_e32 v31, 62, v31
	v_mad_u64_u32 v[13:14], null, v17, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v14, 0x80000000, v12, s24
	buffer_store_b8 v16, v14, s[64:67], 0 offen
	v_cndmask_b32_e64 v17, 0x80000000, v13, s22
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[12:13], null, v19, s73, v[4:5]
	v_mad_u64_u32 v[13:14], null, v20, s73, v[4:5]
	v_mad_u64_u32 v[14:15], null, v15, s73, v[4:5]
	v_mad_u64_u32 v[15:16], null, v18, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v23, v17, s[64:67], 0 offen
	.loc	1 1249 13                       ; ragged.py:1249:13
	v_mad_u64_u32 v[16:17], null, v21, s73, v[4:5]
	v_mad_u64_u32 v[17:18], null, v22, s73, v[4:5]
	v_mad_u64_u32 v[18:19], null, v5, s73, v[4:5]
	v_mad_u64_u32 v[19:20], null, v24, s73, v[4:5]
	v_mad_u64_u32 v[20:21], null, v25, s73, v[4:5]
	v_mad_u64_u32 v[21:22], null, v32, s73, v[4:5]
	v_mad_u64_u32 v[4:5], null, v31, s73, v[4:5]
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e64 v5, 0x80000000, v12, s20
	v_cndmask_b32_e64 v12, 0x80000000, v13, s18
	v_cndmask_b32_e64 v13, 0x80000000, v14, s16
	v_cndmask_b32_e64 v14, 0x80000000, v15, s14
	v_cndmask_b32_e64 v15, 0x80000000, v16, s12
	s_clause 0x4
	buffer_store_b8 v26, v5, s[64:67], 0 offen
	buffer_store_b8 v28, v12, s[64:67], 0 offen
	buffer_store_b8 v30, v13, s[64:67], 0 offen
	buffer_store_b8 v0, v14, s[64:67], 0 offen
	buffer_store_b8 v9, v15, s[64:67], 0 offen
	v_cndmask_b32_e64 v0, 0x80000000, v17, s10
	v_cndmask_b32_e64 v5, 0x80000000, v18, s8
	v_cndmask_b32_e64 v9, 0x80000000, v19, s6
	v_cndmask_b32_e64 v12, 0x80000000, v20, s4
	v_cndmask_b32_e64 v13, 0x80000000, v21, s1
	s_clause 0x4
	buffer_store_b8 v7, v0, s[64:67], 0 offen
	buffer_store_b8 v10, v5, s[64:67], 0 offen
	buffer_store_b8 v11, v9, s[64:67], 0 offen
	buffer_store_b8 v27, v12, s[64:67], 0 offen
	buffer_store_b8 v29, v13, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshrrev_b32_e32 v5, 4, v164
	v_lshrrev_b32_e32 v7, 2, v112
	.loc	1 1248 9                        ; ragged.py:1248:9
	v_cndmask_b32_e32 v0, 0x80000000, v4, vcc_lo
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_lshlrev_b32_e32 v4, 3, v165
	.loc	1 1249 38                       ; ragged.py:1249:38
	s_ashr_i32 s1, s72, 31
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v5, 2, v5
	v_add_nc_u32_e32 v7, 0, v7
	.loc	1 1248 9                        ; ragged.py:1248:9
	buffer_store_b8 v8, v0, s[64:67], 0 offen
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_add_nc_u32_e32 v0, 0, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_lshr_b32 s0, s1, 24
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_waitcnt lgkmcnt(0)
	v_add3_u32 v4, v7, v5, v4
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_add_i32 s0, s72, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	s_barrier
	.loc	1 1254 35                       ; ragged.py:1254:35
	s_ashr_i32 s0, s0, 8
	.loc	1 1253 9                        ; ragged.py:1253:9
	ds_store_b64 v0, v[1:2]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16 v0, v4
	.loc	1 1254 13                       ; ragged.py:1254:13
	v_mul_lo_u32 v1, v3, s0
	.loc	1 1253 9                        ; ragged.py:1253:9
	v_and_b32_e32 v2, 0xc0, v164
	s_and_b32 s65, s71, 0xffff
	s_mov_b32 s64, s70
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_eq_u32_e32 vcc_lo, 0, v2
	v_add_lshl_u32 v1, v1, s80, 1
	s_and_b32 vcc_lo, vcc_lo, s2
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b16 v0, v1, s[64:67], 0 offen
	.loc	1 1001 5                        ; ragged.py:1001:5
	s_endpgm
.Ltmp70:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 504
		.amdhsa_kernarg_size 120
		.amdhsa_user_sgpr_count 2
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_wavefront_size32 1
		.amdhsa_uses_dynamic_stack 0
		.amdhsa_enable_private_segment 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 256
		.amdhsa_next_free_sgpr 81
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
	.size	amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3, .Lfunc_end0-amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_vgpr, 256
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_agpr, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.numbered_sgpr, 81
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.private_seg_size, 504
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_vcc, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.uses_flat_scratch, 1
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_recursion, 0
	.set amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 35872
; TotalNumSgprs: 83
; NumVgprs: 256
; ScratchSize: 504
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 83
; NumVGPRsForWavesPerEU: 256
; Occupancy: 5
; WaveLimiterHint : 0
; COMPUTE_PGM_RSRC2:SCRATCH_EN: 1
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
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3"                        ; string offset=85 ; amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
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
    .name:           amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3
    .private_segment_fixed_size: 504
    .sgpr_count:     83
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_ragged_int4_fwd_tt_pc_evenk_int4_swiglu_outsc256_bm64_bn256_bk64_gst1_w8_s3.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     256
    .vgpr_spill_count: 149
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
