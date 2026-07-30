	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x2
	s_load_b32 s5, s[0:1], 0x60
	s_load_b32 s7, s[0:1], 0x88
	s_load_b64 s[12:13], s[0:1], 0x0
.Ltmp0:
	.loc	1 570 31 prologue_end           ; attention.py:570:31
	v_lshrrev_b32_e32 v34, 1, v0
	.loc	1 584 86                        ; attention.py:584:86
	v_lshlrev_b32_e32 v35, 4, v0
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s8, s2, 6
	.loc	1 583 26                        ; attention.py:583:26
	s_lshl_b32 s6, s3, 9
	s_mov_b32 s15, 0x31027000
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v1, s8, v34
	.loc	1 584 86                        ; attention.py:584:86
	v_and_b32_e32 v41, 16, v35
	.loc	1 584 26 is_stmt 0              ; attention.py:584:26
	s_add_i32 s9, s8, s6
	s_mov_b32 s14, 0x7ffffffe
	.loc	1 570 31 is_stmt 1              ; attention.py:570:31
	v_bfe_u32 v72, v0, 4, 1
	.loc	1 587 23                        ; attention.py:587:23
	v_cmp_gt_i32_e32 vcc_lo, 0x200, v1
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v42, 15, v0
	v_and_b32_e32 v70, 16, v0
	.loc	1 585 26                        ; attention.py:585:26
	v_lshlrev_b32_e32 v36, 1, v0
	.loc	1 584 26                        ; attention.py:584:26
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v2, s5, v34
	s_mul_i32 s2, s5, s9
	.loc	1 587 61                        ; attention.py:587:61
	v_cmp_gt_i32_e64 s4, s5, v41
	.loc	1 585 26                        ; attention.py:585:26
	s_and_b32 s13, s13, 0xffff
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s16, s8, s7
	.loc	1 585 26                        ; attention.py:585:26
	v_cmp_eq_u32_e64 s36, 0, v70
	.loc	1 621 48                        ; attention.py:621:48
	s_add_i32 s16, s16, 64
	.loc	1 587 22                        ; attention.py:587:22
	s_and_b32 vcc_lo, vcc_lo, s4
	.loc	1 584 26                        ; attention.py:584:26
	v_add3_u32 v1, v2, v41, s2
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_gt_i32 s16, 0
	.loc	1 585 26                        ; attention.py:585:26
	v_and_or_b32 v5, v36, 30, v72
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	v_lshlrev_b32_e32 v5, 2, v5
	buffer_load_b128 v[1:4], v1, s[12:15], 0 offen
	v_xor_b32_e32 v6, 4, v5
	s_waitcnt vmcnt(0)
	ds_bpermute_b32 v37, v5, v1
	ds_bpermute_b32 v38, v5, v2
	ds_bpermute_b32 v39, v5, v3
	ds_bpermute_b32 v43, v5, v4
	ds_bpermute_b32 v40, v6, v1
	ds_bpermute_b32 v44, v6, v2
	ds_bpermute_b32 v45, v6, v3
	ds_bpermute_b32 v46, v6, v4
	.loc	1 570 31                        ; attention.py:570:31
	v_and_or_b32 v1, v34, 48, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	.loc	1 570 21 is_stmt 0              ; attention.py:570:21
	v_or_b32_e32 v47, s8, v1
	v_or_b32_e32 v71, s9, v1
	s_mov_b32 s8, 0
	.loc	1 587 23 is_stmt 1              ; attention.py:587:23
	v_cmp_gt_i32_e64 s2, 0x200, v47
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_2
; %bb.1:                                ; %.._crit_edge_crit_edge
	.loc	1 846 36                        ; attention.py:846:36
	v_mov_b32_e32 v2, 0x5410
	v_mov_b32_e32 v3, 0x7632
	.loc	1 843 24                        ; attention.py:843:24
	v_or_b32_e32 v33, s9, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v2, 0x1054, v2, s36
	v_cndmask_b32_e64 v3, 0x3276, v3, s36
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 8, v2
	v_lshl_or_b32 v3, v3, 8, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v2, 0x540054, v2
	v_and_b32_e32 v3, 0x760076, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_lshl_or_b32 v2, v2, 4, v2
	v_lshl_or_b32 v3, v3, 4, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v68, 0x5040504, v2
	v_and_b32_e32 v69, 0x7060706, v3
	s_branch .LBB0_3
.LBB0_2:
	.loc	1 0 36 is_stmt 0                ; attention.py:0:36
	s_mov_b32 s8, -1
                                        ; implicit-def: $vgpr68
                                        ; implicit-def: $vgpr69
                                        ; implicit-def: $vgpr33
.LBB0_3:                                ; %Flow330
	s_clause 0x1
	s_load_b64 s[48:49], s[0:1], 0x38
	s_load_b32 s38, s[0:1], 0x64
	v_mov_b32_e32 v8, 0
	s_and_not1_b32 vcc_lo, exec_lo, s8
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v16, v8
	v_mov_b32_e32 v15, v8
	v_mov_b32_e32 v14, v8
	v_mov_b32_e32 v13, v8
	v_mov_b32_e32 v12, v8
	v_mov_b32_e32 v11, v8
	v_mov_b32_e32 v10, v8
	v_mov_b32_e32 v9, v8
	v_mov_b32_e32 v24, v8
	v_mov_b32_e32 v23, v8
	v_mov_b32_e32 v22, v8
	v_mov_b32_e32 v21, v8
	v_mov_b32_e32 v20, v8
	v_mov_b32_e32 v19, v8
	v_mov_b32_e32 v18, v8
	v_mov_b32_e32 v17, v8
	v_mov_b32_e32 v32, v8
	v_mov_b32_e32 v31, v8
	v_mov_b32_e32 v30, v8
	v_mov_b32_e32 v29, v8
	v_mov_b32_e32 v28, v8
	v_mov_b32_e32 v27, v8
	v_mov_b32_e32 v26, v8
	v_mov_b32_e32 v25, v8
	v_mov_b32_e32 v78, v8
	s_cbranch_vccnz .LBB0_7
; %bb.4:                                ; %.lr.ph
	s_load_b256 s[8:15], s[0:1], 0x8
	v_dual_mov_b32 v6, 0x5410 :: v_dual_lshlrev_b32 v1, 1, v71
	s_mov_b32 s55, 0x31027000
	s_mov_b32 s54, 0x7ffffffe
	v_dual_mov_b32 v7, 0x7632 :: v_dual_and_b32 v4, 24, v0
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 590 31 is_stmt 1              ; attention.py:590:31
	v_cndmask_b32_e64 v1, 0x80000000, v1, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v2, 3, v0
	s_mov_b32 s40, 0
	s_load_b32 s0, s[0:1], 0x68
	.loc	1 585 26                        ; attention.py:585:26
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v61, v43, v46, s36
	v_cndmask_b32_e64 v60, v39, v45, s36
	v_cndmask_b32_e64 v65, v46, v43, s36
	v_cndmask_b32_e64 v64, v45, v39, s36
	s_mov_b32 s41, s40
	s_mov_b32 s42, s40
	s_mov_b32 s43, s40
	s_mov_b32 s44, s40
	s_mov_b32 s45, s40
	.loc	1 590 31                        ; attention.py:590:31
	s_and_b32 s53, s13, 0xffff
	s_mov_b32 s52, s12
	s_mov_b32 s46, s40
	buffer_load_u16 v48, v1, s[52:55], 0 offen
	s_mov_b32 s47, s40
	.loc	1 693 86                        ; attention.py:693:86
	v_lshlrev_b32_e32 v1, 3, v0
	v_and_b32_e32 v3, 0x7f0, v35
	v_and_b32_e32 v5, 24, v36
	v_cndmask_b32_e64 v45, 0x1054, v6, s36
	v_cndmask_b32_e64 v46, 0x3276, v7, s36
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v73, s7, v47
	v_dual_mov_b32 v25, 0 :: v_dual_and_b32 v0, 7, v0
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v47, s6, v2
	.loc	1 585 26                        ; attention.py:585:26
	v_cndmask_b32_e64 v63, v38, v44, s36
	v_cndmask_b32_e64 v62, v37, v40, s36
	v_cndmask_b32_e64 v67, v44, v38, s36
	v_cndmask_b32_e64 v66, v40, v37, s36
	v_dual_mov_b32 v26, v25 :: v_dual_add_nc_u32 v9, s6, v34
	v_dual_mov_b32 v33, s40 :: v_dual_lshlrev_b32 v76, 4, v0
	v_lshl_add_u32 v74, v42, 1, 0
	v_mov_b32_e32 v36, s43
	v_mov_b32_e32 v38, s45
	v_dual_mov_b32 v40, s47 :: v_dual_and_b32 v43, 56, v1
	v_mov_b32_e32 v18, v25
	v_xor_b32_e32 v44, v3, v4
	v_lshl_or_b32 v42, v42, 5, v5
	v_lshl_or_b32 v45, v45, 8, v45
	v_lshl_or_b32 v46, v46, 8, v46
	v_mov_b32_e32 v20, v25
	v_dual_mov_b32 v27, v25 :: v_dual_add_nc_u32 v52, 32, v47
	v_dual_mov_b32 v24, v25 :: v_dual_add_nc_u32 v51, 48, v47
	v_dual_mov_b32 v10, v25 :: v_dual_add_nc_u32 v53, 16, v47
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[0:1], null, s5, v9, v[41:42]
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v80, 0, v42
	v_mov_b32_e32 v31, v25
	v_mov_b32_e32 v17, v25
	v_dual_mov_b32 v12, v25 :: v_dual_add_nc_u32 v79, 0, v44
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e32 vcc_lo, s38, v43
	v_xor_b32_e32 v41, 8, v44
	v_xor_b32_e32 v43, 8, v42
	v_xor_b32_e32 v49, 16, v42
	v_xor_b32_e32 v50, 24, v42
	v_and_b32_e32 v42, 0x540054, v45
	v_and_b32_e32 v44, 0x760076, v46
	.loc	1 629 13                        ; attention.py:629:13
	v_mul_lo_u32 v47, s38, v47
	v_mul_lo_u32 v45, s38, v51
	v_mul_lo_u32 v46, s38, v52
	v_mul_lo_u32 v51, s38, v53
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s1, s16, 0x200
	v_dual_mov_b32 v93, 0xff800000 :: v_dual_lshlrev_b32 v8, 1, v72
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s1, s1, 63
	v_dual_mov_b32 v14, v25 :: v_dual_add_nc_u32 v81, 0, v41
	v_mov_b32_e32 v6, v25
	v_lshl_or_b32 v41, v42, 4, v42
	v_lshl_or_b32 v42, v44, 4, v44
	.loc	1 622 34 is_stmt 0              ; attention.py:622:34
	s_ashr_i32 s7, s1, 31
	v_dual_mov_b32 v34, s41 :: v_dual_mov_b32 v35, s42
	v_dual_mov_b32 v28, v25 :: v_dual_mov_b32 v37, s44
	v_dual_mov_b32 v30, v25 :: v_dual_mov_b32 v39, s46
	v_mov_b32_e32 v32, v25
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_lshl_or_b32 v75, s3, 10, v8
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s3, s7, 26
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s42, s0, 0x3fb8aa3b
	v_dual_mov_b32 v22, v25 :: v_dual_add_nc_u32 v77, 0, v3
	v_dual_mov_b32 v19, v25 :: v_dual_add_nc_u32 v82, 0, v43
	v_dual_mov_b32 v21, v25 :: v_dual_add_nc_u32 v84, 0, v50
	v_dual_mov_b32 v23, v25 :: v_dual_lshlrev_b32 v86, 1, v45
	v_dual_mov_b32 v9, v25 :: v_dual_lshlrev_b32 v88, 1, v51
	v_dual_mov_b32 v11, v25 :: v_dual_and_b32 v68, 0x5040504, v41
	v_mov_b32_e32 v13, v25
	v_mov_b32_e32 v15, v25
	v_dual_mov_b32 v16, v25 :: v_dual_add_nc_u32 v83, 0, v49
	v_mov_b32_e32 v1, v25
	v_dual_mov_b32 v2, v25 :: v_dual_lshlrev_b32 v85, 1, v47
	v_mov_b32_e32 v3, v25
	v_dual_mov_b32 v4, v25 :: v_dual_lshlrev_b32 v87, 1, v46
	v_mov_b32_e32 v5, v25
	v_mov_b32_e32 v7, v25
	v_dual_mov_b32 v8, v25 :: v_dual_and_b32 v69, 0x7060706, v42
	v_mov_b32_e32 v78, v25
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s41, s1, s3
	s_and_b32 s9, s9, 0xffff
	s_and_b32 s15, s15, 0xffff
	.loc	1 629 13                        ; attention.py:629:13
	s_lshl_b32 s39, s38, 7
	s_lshl_b32 s50, s5, 6
	s_mov_b32 s51, 0x76543210
	s_mov_b32 s58, s54
	s_mov_b32 s59, s55
	.loc	1 622 33                        ; attention.py:622:33
	s_and_not1_b32 s41, s41, 63
	s_and_b32 s45, s11, 0xffff
	s_mov_b32 s56, s14
	s_mov_b32 s44, s10
	s_mov_b32 s52, s8
	s_mov_b32 s53, s9
	s_mov_b32 s57, s15
	.loc	1 664 17                        ; attention.py:664:17
	s_mov_b32 s43, s42
	s_mov_b32 s60, s42
	s_mov_b32 s61, s42
	s_mov_b32 s46, s54
	s_mov_b32 s47, s55
	.loc	1 590 31                        ; attention.py:590:31
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v89, 16, v48
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 654 30                        ; attention.py:654:30
	v_mov_b32_e32 v90, v89
	v_mov_b32_e32 v91, v89
	v_mov_b32_e32 v92, v89
.LBB0_5:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 634 32                        ; attention.py:634:32
	v_cndmask_b32_e64 v41, 0x80000000, v0, s4
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v49, v87, v76
	v_add_nc_u32_e32 v45, v85, v76
	v_add_nc_u32_e32 v50, v86, v76
	v_add_nc_u32_e32 v46, v88, v76
	.loc	1 634 32                        ; attention.py:634:32
	buffer_load_b128 v[41:44], v41, s[52:55], 0 offen
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v114, s40, v72
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 694 30                        ; attention.py:694:30
	v_dual_cndmask_b32 v47, 0x80000000, v46 :: v_dual_cndmask_b32 v46, 0x80000000, v49
	v_dual_cndmask_b32 v48, 0x80000000, v45 :: v_dual_cndmask_b32 v45, 0x80000000, v50
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v109, 52, v114
	v_add_nc_u32_e32 v108, 50, v114
	v_add_nc_u32_e32 v107, 48, v114
	v_add_nc_u32_e32 v106, 46, v114
	v_add_nc_u32_e32 v105, 44, v114
	v_add_nc_u32_e32 v104, 42, v114
	v_add_nc_u32_e32 v103, 40, v114
	v_add_nc_u32_e32 v102, 38, v114
	v_add_nc_u32_e32 v101, 36, v114
	v_add_nc_u32_e32 v100, 34, v114
	v_add_nc_u32_e32 v99, 32, v114
	v_add_nc_u32_e32 v98, 30, v114
	v_add_nc_u32_e32 v97, 28, v114
	v_add_nc_u32_e32 v96, 26, v114
	v_add_nc_u32_e32 v95, 24, v114
	v_add_nc_u32_e32 v59, 22, v114
	v_add_nc_u32_e32 v58, 20, v114
	v_add_nc_u32_e32 v57, 18, v114
	v_add_nc_u32_e32 v56, 16, v114
	v_add_nc_u32_e32 v55, 14, v114
	v_add_nc_u32_e32 v54, 12, v114
	v_add_nc_u32_e32 v53, 10, v114
	v_add_nc_u32_e32 v52, 8, v114
	v_add_nc_u32_e32 v51, 6, v114
	v_add_nc_u32_e32 v50, 4, v114
	v_add_nc_u32_e32 v49, 2, v114
	.loc	1 633 32                        ; attention.py:633:32
	v_add_nc_u32_e32 v113, 62, v114
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v112, 60, v114
	v_add_nc_u32_e32 v111, 58, v114
	v_add_nc_u32_e32 v110, 56, v114
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s0, v114, v73
	.loc	1 630 31                        ; attention.py:630:31
	v_add_nc_u32_e32 v114, 54, v114
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s20, v113, v73
	v_cmp_le_i32_e64 s13, v112, v73
	v_cmp_le_i32_e64 s21, v111, v73
	v_cmp_le_i32_e64 s15, v56, v73
	v_cmp_le_i32_e64 s16, v114, v73
	v_cmp_le_i32_e64 s19, v55, v73
	v_cmp_le_i32_e64 s17, v54, v73
	v_cmp_le_i32_e64 s22, v53, v73
	v_cmp_le_i32_e64 s29, v52, v73
	v_cmp_le_i32_e64 s27, v51, v73
	v_cmp_le_i32_e64 s25, v50, v73
	v_cmp_le_i32_e64 s24, v49, v73
	v_cmp_le_i32_e64 s10, v102, v73
	v_cmp_le_i32_e64 s11, v101, v73
	v_cmp_le_i32_e64 s12, v100, v73
	v_cmp_le_i32_e64 s14, v99, v73
	v_cmp_le_i32_e64 s33, v98, v73
	v_cmp_le_i32_e64 s23, v97, v73
	v_cmp_le_i32_e64 s34, v96, v73
	v_cmp_le_i32_e64 s5, v109, v73
	v_cmp_le_i32_e64 s1, v108, v73
	v_cmp_le_i32_e64 s8, v104, v73
	v_cmp_le_i32_e64 s26, v57, v73
	.loc	1 668 21 is_stmt 0              ; attention.py:668:21
	s_and_b32 s37, s2, s0
	s_and_b32 s10, s2, s10
	s_and_b32 s12, s2, s12
	s_and_b32 s8, s2, s8
	s_and_b32 s14, s2, s14
	s_and_b32 s33, s2, s33
	s_and_b32 s34, s2, s34
	s_and_b32 s26, s2, s26
	s_and_b32 s23, s2, s23
	s_and_b32 s29, s2, s29
	s_and_b32 s27, s2, s27
	s_and_b32 s24, s2, s24
	s_and_b32 s22, s2, s22
	s_and_b32 s0, s2, s5
	s_and_b32 s11, s2, s11
	s_and_b32 s25, s2, s25
	s_and_b32 s19, s2, s19
	s_and_b32 s3, s2, s15
	s_and_b32 s15, s2, s20
	s_and_b32 s16, s2, s16
	s_and_b32 s13, s2, s13
	s_and_b32 s1, s2, s1
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v94.h, 0
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s20, 0xff800000, v93
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s40, s40, 64
	.loc	1 634 32                        ; attention.py:634:32
	s_waitcnt vmcnt(0)
	ds_store_b64 v79, v[41:42]
	ds_store_b64 v81, v[43:44]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[41:44], v80 offset1:1
	ds_load_2addr_stride64_b64 v[111:114], v80 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[119:122], v82 offset1:1
	ds_load_2addr_stride64_b64 v[127:130], v82 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[131:134], v83 offset1:1
	ds_load_2addr_stride64_b64 v[135:138], v83 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[139:142], v84 offset1:1
	ds_load_2addr_stride64_b64 v[143:146], v84 offset0:2 offset1:3
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v115.h, v94.h
	v_mov_b16_e32 v117.h, v94.h
	v_mov_b16_e32 v118.h, v94.h
	v_mov_b16_e32 v116.h, v94.h
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v76, s39, v76
	v_add_nc_u32_e32 v0, s50, v0
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[41:42], v[66:67], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[119:120], v[64:65], v[49:56] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[131:132], v[62:63], v[49:56] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1
	buffer_load_u16 v131, v75, s[56:59], 0 offen offset:108
	buffer_load_u16 v132, v75, s[56:59], 0 offen offset:124
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[49:56], v[139:140], v[60:61], v[49:56] neg_lo:[1,1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v56, v56
	v_cvt_f32_i32_e32 v52, v52
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cvt_f32_i32_e32 v50, v50
	v_cvt_f32_i32_e32 v54, v54
	v_cvt_f32_i32_e32 v53, v53
	v_mul_f32_e32 v140, v92, v56
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s31, v95, v73
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[95:102], v[43:44], v[66:67], v[33:40] neg_lo:[1,1,0]
	.loc	1 649 37                        ; attention.py:649:37
	buffer_load_u16 v173, v75, s[56:59], 0 offen offset:120
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[41:44], v48, s[44:47], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v139, v89, v53
	v_cvt_f32_i32_e32 v51, v51
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[95:102], v[121:122], v[64:65], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[113:114], v[66:67], v[33:40] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v49, v49
	v_cvt_f32_i32_e32 v55, v55
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[95:102], v[133:134], v[62:63], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[129:130], v[64:65], v[119:126] neg_lo:[1,1,0]
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s31, s2, s31
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[95:102], v[141:142], v[60:61], v[95:102] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[119:126], v[137:138], v[62:63], v[119:126] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v138, v89, v49 :: v_dual_mul_f32 v141, v91, v55
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_cvt_f32_i32_e32 v96, v96
	.loc	1 639 33                        ; attention.py:639:33
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[119:126], v[145:146], v[60:61], v[119:126] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v100, v100
	v_cvt_f32_i32_e32 v98, v98
	v_cvt_f32_i32_e32 v99, v99
	v_mul_f32_e32 v96, v89, v96
	v_cvt_f32_i32_e32 v120, v120
	v_cvt_f32_i32_e32 v119, v119
	v_cvt_f32_i32_e32 v123, v123
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s7, v105, v73
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v100, v89, v100
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s9, v103, v73
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v120, v92, v120
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s35, v107, v73
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v119, v91, v119
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s6, v106, v73
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v123, v90, v123
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s18, v110, v73
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[103:110], v[111:112], v[66:67], v[33:40] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v124, v124
	.loc	1 694 30                        ; attention.py:694:30
	buffer_load_b128 v[111:114], v47, s[44:47], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v102, v102
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[103:110], v[127:128], v[64:65], v[103:110] neg_lo:[1,1,0]
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x1
	buffer_load_b128 v[127:130], v46, s[44:47], 0 offen
	buffer_load_b128 v[45:48], v45, s[44:47], 0 offen
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v142, v91, v124
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s30, v59, v73
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[103:110], v[135:136], v[62:63], v[103:110] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v136, v92, v52
	v_cvt_f32_i32_e32 v97, v97
	v_cvt_f32_i32_e32 v101, v101
	v_cvt_f32_i32_e32 v122, v122
	.loc	1 639 33                        ; attention.py:639:33
	v_wmma_i32_16x16x16_iu4 v[103:110], v[143:144], v[60:61], v[103:110] neg_lo:[1,1,0]
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v121, v121
	v_mul_f32_e32 v99, v92, v99
	v_mul_f32_e32 v97, v90, v97
	v_mul_f32_e32 v101, v90, v101
	v_cvt_f32_i32_e32 v103, v103
	v_cvt_f32_i32_e32 v108, v108
	v_cvt_f32_i32_e32 v107, v107
	v_cvt_f32_i32_e32 v106, v106
	v_cvt_f32_i32_e32 v110, v110
	v_mul_f32_e32 v103, v92, v103
	.loc	1 668 30                        ; attention.py:668:30
	v_cmp_le_i32_e64 s28, v58, v73
	.loc	1 649 37                        ; attention.py:649:37
	s_clause 0x1c
	buffer_load_u16 v57, v75, s[56:59], 0 offen
	buffer_load_u16 v58, v75, s[56:59], 0 offen offset:4
	buffer_load_u16 v59, v75, s[56:59], 0 offen offset:8
	buffer_load_u16 v147, v75, s[56:59], 0 offen offset:12
	buffer_load_u16 v148, v75, s[56:59], 0 offen offset:16
	buffer_load_u16 v149, v75, s[56:59], 0 offen offset:20
	buffer_load_u16 v150, v75, s[56:59], 0 offen offset:24
	buffer_load_u16 v151, v75, s[56:59], 0 offen offset:28
	buffer_load_u16 v152, v75, s[56:59], 0 offen offset:32
	buffer_load_u16 v153, v75, s[56:59], 0 offen offset:36
	buffer_load_u16 v154, v75, s[56:59], 0 offen offset:40
	buffer_load_u16 v155, v75, s[56:59], 0 offen offset:44
	buffer_load_u16 v156, v75, s[56:59], 0 offen offset:48
	buffer_load_u16 v157, v75, s[56:59], 0 offen offset:52
	buffer_load_u16 v158, v75, s[56:59], 0 offen offset:56
	buffer_load_u16 v159, v75, s[56:59], 0 offen offset:60
	buffer_load_u16 v160, v75, s[56:59], 0 offen offset:64
	buffer_load_u16 v161, v75, s[56:59], 0 offen offset:68
	buffer_load_u16 v162, v75, s[56:59], 0 offen offset:72
	buffer_load_u16 v163, v75, s[56:59], 0 offen offset:76
	buffer_load_u16 v164, v75, s[56:59], 0 offen offset:80
	buffer_load_u16 v165, v75, s[56:59], 0 offen offset:84
	buffer_load_u16 v166, v75, s[56:59], 0 offen offset:88
	buffer_load_u16 v167, v75, s[56:59], 0 offen offset:92
	buffer_load_u16 v168, v75, s[56:59], 0 offen offset:96
	buffer_load_u16 v169, v75, s[56:59], 0 offen offset:100
	buffer_load_u16 v170, v75, s[56:59], 0 offen offset:104
	buffer_load_u16 v171, v75, s[56:59], 0 offen offset:112
	buffer_load_u16 v172, v75, s[56:59], 0 offen offset:116
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v105, v105
	v_cvt_f32_i32_e32 v109, v109
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v108, v92, v108 :: v_dual_mul_f32 v107, v91, v107
	v_mul_f32_e32 v106, v90, v106
	v_mul_f32_e32 v110, v90, v110
	v_mul_f32_e32 v98, v91, v98
	v_mul_f32_e32 v137, v90, v50
	v_mul_f32_e32 v54, v90, v54
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(32)
	ds_store_b128 v77, v[41:44]
	s_waitcnt vmcnt(31)
	ds_store_b128 v77, v[111:114] offset:2048
	s_waitcnt vmcnt(30)
	ds_store_b128 v77, v[127:130] offset:4096
	s_waitcnt vmcnt(29)
	ds_store_b128 v77, v[45:48] offset:6144
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v105, v89, v105
	v_dual_mul_f32 v109, v89, v109 :: v_dual_mul_f32 v102, v91, v102
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(19)
	v_lshlrev_b32_e32 v153, 16, v153
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v121, v91, v121 :: v_dual_mul_f32 v122, v89, v122
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(16)
	v_lshlrev_b32_e32 v145, 16, v156
	v_lshlrev_b32_e32 v154, 16, v154
	.loc	1 654 30                        ; attention.py:654:30
	v_cvt_f32_i32_e32 v95, v95
	v_cvt_f32_i32_e32 v104, v104
	v_cvt_f32_i32_e32 v125, v125
	v_mul_f32_e32 v99, v99, v145
	s_waitcnt vmcnt(15)
	v_dual_mul_f32 v97, v97, v154 :: v_dual_lshlrev_b32 v156, 16, v157
	.loc	1 649 37                        ; attention.py:649:37
	s_waitcnt vmcnt(8)
	v_lshlrev_b32_e32 v42, 16, v164
	s_waitcnt vmcnt(7)
	v_lshlrev_b32_e32 v41, 16, v165
	v_lshlrev_b32_e32 v43, 16, v163
	v_lshlrev_b32_e32 v147, 16, v147
	s_waitcnt vmcnt(4)
	v_lshlrev_b32_e32 v113, 16, v168
	v_lshlrev_b32_e32 v149, 16, v149
	v_lshlrev_b32_e32 v111, 16, v162
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v41, v108, v41 :: v_dual_mul_f32 v42, v107, v42
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v148, 16, v148
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v108, v119, v113 :: v_dual_mul_f32 v113, v136, v147
	v_dual_mul_f32 v54, v54, v149 :: v_dual_lshlrev_b32 v133, 16, v166
	s_waitcnt vmcnt(3)
	v_dual_mul_f32 v105, v105, v111 :: v_dual_lshlrev_b32 v112, 16, v169
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v114, 16, v167
	v_lshlrev_b32_e32 v157, 16, v160
	s_waitcnt vmcnt(0)
	v_lshlrev_b32_e32 v163, 16, v172
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v107, v120, v112
	v_mul_f32_e32 v120, v139, v148
	v_dual_mul_f32 v109, v109, v133 :: v_dual_lshlrev_b32 v134, 16, v170
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v146, 16, v155
	v_lshlrev_b32_e32 v155, 16, v158
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v103, v103, v157 :: v_dual_lshlrev_b32 v158, 16, v159
	v_cvt_f32_i32_e32 v126, v126
	v_mul_f32_e32 v135, v91, v51
	v_mul_f32_e32 v111, v121, v134
	v_dual_mul_f32 v98, v98, v146 :: v_dual_lshlrev_b32 v151, 16, v151
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v150, 16, v150
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v102, v102, v158
	v_mul_f32_e32 v136, v142, v163
	v_dual_mul_f32 v101, v101, v155 :: v_dual_lshlrev_b32 v162, 16, v57
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v160, 16, v59
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v104, v90, v104 :: v_dual_mul_f32 v95, v89, v95
	v_mul_f32_e32 v143, v92, v125
	v_dual_mul_f32 v144, v92, v126 :: v_dual_lshlrev_b32 v159, 16, v161
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v132, 16, v132
	v_lshlrev_b32_e32 v161, 16, v58
	.loc	1 654 30                        ; attention.py:654:30
	v_dual_mul_f32 v119, v138, v162 :: v_dual_mul_f32 v112, v135, v160
	v_dual_mul_f32 v121, v140, v151 :: v_dual_lshlrev_b32 v152, 16, v152
	v_dual_mul_f32 v135, v141, v150 :: v_dual_lshlrev_b32 v164, 16, v173
	v_mul_f32_e32 v106, v106, v43
	v_mul_f32_e32 v110, v110, v114
	v_mul_f32_e32 v96, v96, v153
	v_mul_f32_e32 v100, v100, v156
	v_dual_mul_f32 v104, v104, v159 :: v_dual_mul_f32 v95, v95, v152
	.loc	1 649 37                        ; attention.py:649:37
	v_lshlrev_b32_e32 v166, 16, v131
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v132, v144, v132
	v_dual_mul_f32 v114, v137, v161 :: v_dual_mul_f32 v137, v143, v164
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v122, v122, v166 :: v_dual_lshlrev_b32 v165, 16, v171
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v119, s42, v119 :: v_dual_mul_f32 v108, s60, v108
	v_dual_mul_f32 v109, s42, v109 :: v_dual_mul_f32 v42, s60, v42
	.loc	1 654 30                        ; attention.py:654:30
	v_mul_f32_e32 v123, v123, v165
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v41, s61, v41 :: v_dual_mul_f32 v106, s43, v106
	v_dual_mul_f32 v105, s42, v105 :: v_dual_mul_f32 v138, s43, v104
	v_dual_mul_f32 v139, s61, v103 :: v_dual_mul_f32 v140, s60, v102
	v_dual_mul_f32 v141, s42, v100 :: v_dual_mul_f32 v142, s61, v99
	v_dual_mul_f32 v143, s60, v98 :: v_dual_mul_f32 v144, s43, v97
	v_dual_mul_f32 v96, s42, v96 :: v_dual_mul_f32 v145, s43, v101
	v_dual_mul_f32 v120, s42, v120 :: v_dual_mul_f32 v113, s61, v113
	v_dual_mul_f32 v114, s43, v114 :: v_dual_mul_f32 v135, s60, v135
	v_dual_mul_f32 v54, s43, v54 :: v_dual_mul_f32 v95, s42, v95
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s9, s2, s9
	s_and_b32 s30, s2, s30
	s_and_b32 s28, s2, s28
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v111, s60, v111 :: v_dual_mul_f32 v110, s43, v110
	v_dual_mul_f32 v112, s60, v112 :: v_dual_mul_f32 v121, s61, v121
	v_dual_mul_f32 v132, s61, v132 :: v_dual_mul_f32 v123, s43, v123
	v_dual_mul_f32 v136, s60, v136 :: v_dual_mul_f32 v97, s61, v107
	v_dual_mul_f32 v122, s42, v122 :: v_dual_mul_f32 v137, s61, v137
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v102, 0xff800000, v42, s9
	v_cndmask_b32_e64 v104, 0xff800000, v106, s10
	v_cndmask_b32_e64 v103, 0xff800000, v41, s8
	v_cndmask_b32_e64 v171, 0xff800000, v145, s23
	v_cndmask_b32_e64 v172, 0xff800000, v141, s34
	v_cndmask_b32_e64 v106, 0xff800000, v139, s14
	v_cndmask_b32_e64 v173, 0xff800000, v140, s33
	v_cndmask_b32_e64 v107, 0xff800000, v138, s12
	v_cndmask_b32_e64 v174, 0xff800000, v143, s30
	v_cndmask_b32_e64 v175, 0xff800000, v144, s28
	v_cndmask_b32_e64 v176, 0xff800000, v96, s26
	v_cndmask_b32_e64 v177, 0xff800000, v142, s31
	v_cndmask_b32_e64 v41, 0xff800000, v54, s22
	v_cndmask_b32_e64 v42, 0xff800000, v120, s29
	v_cndmask_b32_e64 v114, 0xff800000, v114, s24
	v_cndmask_b32_e64 v119, 0xff800000, v119, s37
	v_cndmask_b32_e64 v113, 0xff800000, v113, s27
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s5, s2, s35
	s_and_b32 s6, s2, s6
	s_and_b32 s7, s2, s7
	s_and_b32 s35, s2, s17
	s_and_b32 s18, s2, s18
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v97, 0xff800000, v97, s1
	v_cndmask_b32_e64 v98, 0xff800000, v108, s5
	v_cndmask_b32_e64 v99, 0xff800000, v110, s6
	v_cndmask_b32_e64 v100, 0xff800000, v109, s7
	v_cndmask_b32_e64 v105, 0xff800000, v105, s11
	v_cndmask_b32_e64 v101, 0xff800000, v111, s0
	v_cndmask_b32_e64 v120, 0xff800000, v112, s25
	v_cndmask_b32_e64 v178, 0xff800000, v95, s3
	v_cndmask_b32_e64 v95, 0xff800000, v121, s19
	v_cndmask_b32_e64 v121, 0xff800000, v135, s35
	v_cndmask_b32_e64 v108, 0xff800000, v137, s13
	v_cndmask_b32_e64 v110, 0xff800000, v123, s18
	v_cndmask_b32_e64 v112, 0xff800000, v122, s16
	v_cndmask_b32_e64 v109, 0xff800000, v132, s15
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v139, v173, v106, v107
	v_max3_f32 v140, v176, v175, v174
	v_max3_f32 v141, v177, v172, v171
	v_max_f32_e32 v142, v119, v114
	v_max3_f32 v143, v113, v42, v41
.Ltmp2:
	.loc	1 668 21                        ; attention.py:668:21
	s_and_b32 s17, s2, s21
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v96, v105, v104, v102
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v111, 0xff800000, v136, s17
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v122, v103, v100, v99
	v_max3_f32 v123, v98, v97, v101
	v_max3_f32 v144, v121, v95, v178
	v_max_f32_e32 v145, v112, v110
	v_max_f32_e32 v146, v108, v109
	v_max3_f32 v139, v140, v141, v139
	v_max3_f32 v140, v142, v120, v143
	v_max3_f32 v96, v96, v122, v123
.Ltmp6:
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v122, v145, v111, v146
.Ltmp8:
	.loc	1 694 30                        ; attention.py:694:30
	s_barrier
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v123, v140, v144, v139
.Ltmp10:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v134, v74 offset:608
	ds_load_u16_d16 v133, v74 offset:352
	ds_load_u16_d16 v127, v74 offset:832
	ds_load_u16_d16 v48, v74 offset:1024
	ds_load_u16_d16 v55, v74 offset:800
	ds_load_u16_d16 v128, v74 offset:1088
	ds_load_u16_d16 v49, v74 offset:1280
	ds_load_u16_d16 v56, v74 offset:1056
	ds_load_u16_d16 v129, v74 offset:1344
	ds_load_u16_d16 v50, v74 offset:1536
	ds_load_u16_d16 v57, v74 offset:1312
	ds_load_u16_d16 v130, v74 offset:1600
	ds_load_u16_d16 v51, v74 offset:1792
	ds_load_u16_d16 v58, v74 offset:1568
	ds_load_u16_d16 v131, v74 offset:1856
	ds_load_u16_d16 v45, v74 offset:256
	ds_load_u16_d16 v44, v74
	ds_load_u16_d16 v52, v74 offset:32
	ds_load_u16_d16 v126, v74 offset:576
	ds_load_u16_d16 v124, v74 offset:64
	ds_load_u16_d16 v125, v74 offset:320
	ds_load_u16_d16 v47, v74 offset:768
	ds_load_u16_d16 v46, v74 offset:512
	ds_load_u16_d16 v53, v74 offset:288
	ds_load_u16_d16 v59, v74 offset:1824
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v133, v74 offset:480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v126, v74 offset:704
	ds_load_u16_d16 v54, v74 offset:544
	ds_load_u16_d16_hi v130, v74 offset:1728
	ds_load_u16_d16_hi v51, v74 offset:1920
	ds_load_u16_d16_hi v131, v74 offset:1984
	ds_load_u16_d16 v132, v74 offset:96
	s_waitcnt lgkmcnt(10)
	ds_load_u16_d16_hi v47, v74 offset:896
	ds_load_u16_d16_hi v127, v74 offset:960
	ds_load_u16_d16 v135, v74 offset:864
	ds_load_u16_d16_hi v48, v74 offset:1152
	ds_load_u16_d16_hi v128, v74 offset:1216
	ds_load_u16_d16 v136, v74 offset:1120
	ds_load_u16_d16_hi v49, v74 offset:1408
	ds_load_u16_d16_hi v129, v74 offset:1472
	ds_load_u16_d16 v137, v74 offset:1376
	ds_load_u16_d16_hi v50, v74 offset:1664
	ds_load_u16_d16 v138, v74 offset:1632
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v96, v123, v96, v122
.Ltmp12:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v43, v74 offset:2368
	ds_load_u16_d16 v164, v74 offset:2144
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s40, s41
.Ltmp13:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v122, v96, s51, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp14:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v96, v93, v96, v122
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v114, v114, v96
	v_sub_f32_e32 v119, v119, v96
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v122, v93, v96
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v113, v113, v96
	v_sub_f32_e32 v42, v42, v96
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v114, v114
	v_exp_f32_e32 v119, v119
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v121, v121, v96
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v123, v113
	v_exp_f32_e32 v42, v42
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v95, v95, v96
	v_sub_f32_e32 v105, v105, v96
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v139, v121
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v104, v104, v96
	v_sub_f32_e32 v102, v102, v96
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v114, s24
	v_cndmask_b32_e64 v113, 0, v119, s37
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v95, v95
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v119, 0, v123, s27
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v103, v103, v96
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v94.l, v93.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v41, v96
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v115.l, v113.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v120, v120, v96
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s21, v113, v113
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v100, v100, v96
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v123, 0, v95, s19
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cmp_o_f32_e64 s19, v93, v93
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v99, v99, v96
	v_sub_f32_e32 v98, v98, v96
	v_sub_f32_e32 v97, v97, v96
	v_sub_f32_e32 v101, v101, v96
	v_sub_f32_e32 v110, v110, v96
	v_sub_f32_e32 v111, v111, v96
	v_sub_f32_e32 v108, v108, v96
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v121, 0, v41, s22
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v41, 1, v115
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v120, v120
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s22, v119, v119
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v102, v102
	v_exp_f32_e32 v103, v103
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v41, v113, v41, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v104, v104
	v_exp_f32_e32 v98, v98
	v_exp_f32_e32 v97, v97
	v_exp_f32_e32 v101, v101
	v_exp_f32_e32 v110, v110
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v120, s25
	v_cndmask_b32_e64 v120, 0, v42, s29
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v42, 1, v94
	v_mov_b16_e32 v94.l, v119.h
	v_cmp_o_f32_e64 s29, v123, v123
	v_mov_b16_e32 v116.l, v114.h
	v_mov_b16_e32 v117.l, v120.h
	v_add3_u32 v42, v93, v42, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s21
	v_cmp_o_f32_e64 s24, v114, v114
	v_and_b32_e32 v95, 1, v116
	v_and_b32_e32 v115, 1, v117
	v_and_b32_e32 v117, 1, v94
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v149, v122
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v122, 0, v139, s35
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v94.l, v121.h
	v_add3_u32 v95, v114, v95, 0x7fff
	v_add3_u32 v117, v119, v117, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s19
	v_mov_b16_e32 v118.l, v122.h
	v_and_b32_e32 v41, 1, v94
	v_mov_b16_e32 v94.l, v123.h
	v_cmp_o_f32_e64 s35, v122, v122
	v_cndmask_b16 v95.l, 0x7fff, v95.h, s24
	v_and_b32_e32 v116, 1, v118
	v_cndmask_b16 v95.h, 0x7fff, v117.h, s22
	v_and_b32_e32 v118, 1, v94
	v_permlanex16_b32 v139, v42, s51, 0xfedcba98 op_sel:[1,0]
	v_cmp_o_f32_e64 s25, v121, v121
	v_add3_u32 v116, v122, v116, 0x7fff
	v_cmp_o_f32_e64 s27, v120, v120
	v_add3_u32 v117, v123, v118, 0x7fff
	v_permlanex16_b32 v118, v95, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v140, v139, v42, v68
	v_cndmask_b16 v116.l, 0x7fff, v116.h, s35
	v_perm_b32 v141, v139, v42, v69
	v_cndmask_b16 v116.h, 0x7fff, v117.h, s29
	v_perm_b32 v142, v118, v95, v68
	v_perm_b32 v143, v118, v95, v69
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v95, 0, v149, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v115, v120, v115, 0x7fff
	v_permlanex16_b32 v42, v116, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v111, v111
	v_exp_f32_e32 v108, v108
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v26, v26, v95
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v41, v121, v41, 0x7fff
	v_perm_b32 v146, v42, v116, v68
	v_perm_b32 v147, v42, v116, v69
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v148, v74 offset:2048
	ds_load_u16_d16 v42, v74 offset:2112
	ds_load_u16_d16 v139, v74 offset:1888
	s_waitcnt lgkmcnt(25)
	ds_load_u16_d16_hi v46, v74 offset:640
	ds_load_u16_d16_hi v45, v74 offset:384
	ds_load_u16_d16_hi v44, v74 offset:128
	ds_load_u16_d16_hi v52, v74 offset:160
	ds_load_u16_d16_hi v124, v74 offset:192
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v132, v74 offset:224
	ds_load_u16_d16_hi v53, v74 offset:416
	ds_load_u16_d16_hi v125, v74 offset:448
	ds_load_u16_d16_hi v54, v74 offset:672
	ds_load_u16_d16_hi v134, v74 offset:736
	ds_load_u16_d16_hi v55, v74 offset:928
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v135, v74 offset:992
	ds_load_u16_d16_hi v56, v74 offset:1184
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v74 offset:1248
	ds_load_u16_d16_hi v57, v74 offset:1440
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v137, v74 offset:1504
	ds_load_u16_d16_hi v58, v74 offset:1696
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v138, v74 offset:1760
	ds_load_u16_d16_hi v59, v74 offset:1952
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v115.l, 0x7fff, v115.h, s27
	v_cndmask_b16 v115.h, 0x7fff, v41.h, s25
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v95
	v_mul_f32_e32 v18, v18, v95
	v_dual_mul_f32 v19, v19, v95 :: v_dual_sub_f32 v116, v173, v96
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v41, v115, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v20, v20, v95
	v_mul_f32_e32 v21, v21, v95
	v_mul_f32_e32 v22, v22, v95
	v_mul_f32_e32 v23, v23, v95
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v144, v41, v115, v68
	v_perm_b32 v145, v41, v115, v69
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v24, v24, v95
	v_dual_mul_f32 v30, v30, v95 :: v_dual_sub_f32 v115, v171, v96
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v139, v74 offset:2016
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v28, v28, v95
	v_mul_f32_e32 v29, v29, v95
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[52:59], v[140:147], v[17:24]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v55, v176, v96
	v_sub_f32_e32 v54, v178, v96
	v_sub_f32_e32 v57, v174, v96
	.loc	1 699 23                        ; attention.py:699:23
	v_dual_mul_f32 v31, v31, v95 :: v_dual_mov_b32 v58, v78
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v55, v55
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v56, v175, v96
	v_sub_f32_e32 v78, v172, v96
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v57, v57
	.loc	1 699 23 is_stmt 1              ; attention.py:699:23
	v_mul_f32_e32 v25, v25, v95
	v_mul_f32_e32 v27, v27, v95
	v_dual_mul_f32 v32, v32, v95 :: v_dual_sub_f32 v59, v177, v96
	v_mul_f32_e32 v10, v10, v95
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v118, 0, v55, s26
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v11, v11, v95
	v_mul_f32_e32 v12, v12, v95
	v_mul_f32_e32 v13, v13, v95
	v_mul_f32_e32 v14, v14, v95
	v_mul_f32_e32 v15, v15, v95
	v_mul_f32_e32 v16, v16, v95
	v_mul_f32_e32 v1, v1, v95
	v_mul_f32_e32 v2, v2, v95
	v_mul_f32_e32 v3, v3, v95
	v_mul_f32_e32 v4, v4, v95
	v_mul_f32_e32 v5, v5, v95
	v_mul_f32_e32 v6, v6, v95
	v_mul_f32_e32 v7, v7, v95
	v_mul_f32_e32 v8, v8, v95
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v78, v78
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v94.l, v118.h
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v9, v9, v95
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[44:51], v[140:147], v[25:32]
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v163, v74 offset:3872
	ds_load_u16_d16 v150, v74 offset:2560
	ds_load_u16_d16 v157, v74 offset:2336
	ds_load_u16_d16 v44, v74 offset:2624
	ds_load_u16_d16 v151, v74 offset:2816
	ds_load_u16_d16 v158, v74 offset:2592
	ds_load_u16_d16 v45, v74 offset:2880
	ds_load_u16_d16 v152, v74 offset:3072
	ds_load_u16_d16 v159, v74 offset:2848
	ds_load_u16_d16 v46, v74 offset:3136
	ds_load_u16_d16 v154, v74 offset:3584
	ds_load_u16_d16 v161, v74 offset:3360
	ds_load_u16_d16 v48, v74 offset:3648
	ds_load_u16_d16 v155, v74 offset:3840
	ds_load_u16_d16 v162, v74 offset:3616
	ds_load_u16_d16 v49, v74 offset:3904
	ds_load_u16_d16 v153, v74 offset:3328
	ds_load_u16_d16 v160, v74 offset:3104
	ds_load_u16_d16 v47, v74 offset:3392
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(19)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[132:139], v[140:147], v[1:8]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v59, v59
	v_exp_f32_e32 v115, v115
	v_exp_f32_e32 v116, v116
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v117, 0, v54, s3
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v54, 1, v94
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[124:131], v[140:147], v[9:16]
	.loc	1 690 33 is_stmt 1              ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v57, s30
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v50.h, v94.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v143, 0, v56, s28
	v_cndmask_b32_e64 v78, 0, v78, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v50.l, v117.h
	v_mov_b16_e64 v94.l, v144.h
	v_mov_b16_e32 v51.h, v94.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v59, 0, v59, s31
	v_cndmask_b32_e64 v145, 0, v115, s23
	v_cndmask_b32_e64 v116, 0, v116, s33
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v51.l, v143.h
	v_and_b32_e32 v50, 1, v50
	v_and_b32_e32 v55, 1, v94
	v_mov_b16_e32 v94.l, v78.h
	v_mov_b16_e32 v52.h, v94.h
	v_mov_b16_e32 v53.h, v94.h
	v_cmp_o_f32_e64 s3, v118, v118
	v_cmp_o_f32_e64 s19, v117, v117
	v_mov_b16_e32 v52.l, v59.h
	v_mov_b16_e64 v53.l, v145.h
	v_and_b32_e32 v51, 1, v51
	v_add3_u32 v50, v117, v50, 0x7fff
	v_add3_u32 v54, v118, v54, 0x7fff
	v_and_b32_e32 v56, 1, v94
	v_mov_b16_e32 v94.l, v116.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v41, v74 offset:4160
	ds_load_u16_d16 v149, v74 offset:2304
	ds_load_u16_d16_hi v148, v74 offset:2176
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v48, v74 offset:3776
	s_waitcnt lgkmcnt(9)
	ds_load_u16_d16_hi v155, v74 offset:3968
	s_waitcnt lgkmcnt(8)
	ds_load_u16_d16_hi v49, v74 offset:4032
	ds_load_u16_d16_hi v43, v74 offset:2496
	ds_load_u16_d16 v165, v74 offset:2400
	ds_load_u16_d16_hi v150, v74 offset:2688
	ds_load_u16_d16_hi v44, v74 offset:2752
	ds_load_u16_d16 v166, v74 offset:2656
	ds_load_u16_d16_hi v151, v74 offset:2944
	ds_load_u16_d16_hi v45, v74 offset:3008
	ds_load_u16_d16 v167, v74 offset:2912
	ds_load_u16_d16_hi v152, v74 offset:3200
	ds_load_u16_d16_hi v46, v74 offset:3264
	ds_load_u16_d16 v168, v74 offset:3168
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v153, v74 offset:3456
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v47, v74 offset:3520
	ds_load_u16_d16 v169, v74 offset:3424
	ds_load_u16_d16_hi v154, v74 offset:3712
	ds_load_u16_d16 v170, v74 offset:3680
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s20, v144, v144
	v_cmp_o_f32_e64 s21, v143, v143
	v_and_b32_e32 v52, 1, v52
	v_and_b32_e32 v53, 1, v53
	v_add3_u32 v51, v143, v51, 0x7fff
	v_cndmask_b16 v50.l, 0x7fff, v50.h, s19
	v_cndmask_b16 v50.h, 0x7fff, v54.h, s3
	v_add3_u32 v54, v144, v55, 0x7fff
	v_and_b32_e32 v55, 1, v94
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v156, v74 offset:2080
	ds_load_u16_d16_hi v42, v74 offset:2240
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s22, v78, v78
	v_cmp_o_f32_e64 s23, v59, v59
	v_cmp_o_f32_e64 s24, v116, v116
	v_cmp_o_f32_e64 s25, v145, v145
	v_add3_u32 v52, v59, v52, 0x7fff
	v_add3_u32 v53, v145, v53, 0x7fff
	v_cndmask_b16 v51.l, 0x7fff, v51.h, s21
	v_cndmask_b16 v51.h, 0x7fff, v54.h, s20
	v_add3_u32 v54, v78, v56, 0x7fff
	v_add3_u32 v55, v116, v55, 0x7fff
	v_cndmask_b16 v52.l, 0x7fff, v52.h, s23
	v_cndmask_b16 v53.l, 0x7fff, v53.h, s25
	v_permlanex16_b32 v57, v50, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v56, v51, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v52.h, 0x7fff, v54.h, s22
	v_cndmask_b16 v53.h, 0x7fff, v55.h, s24
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v105, v105
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v124, v57, v50, v68
	v_perm_b32 v125, v57, v50, v69
	v_perm_b32 v126, v56, v51, v68
	v_permlanex16_b32 v50, v52, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v127, v56, v51, v69
	v_permlanex16_b32 v51, v53, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v100, v100
	v_exp_f32_e32 v99, v99
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v128, v50, v52, v68
	v_perm_b32 v129, v50, v52, v69
	v_perm_b32 v130, v51, v53, v68
	v_perm_b32 v131, v51, v53, v69
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v50, v74 offset:4096
	ds_load_u16_d16 v171, v74 offset:3936
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v149, v74 offset:2432
	s_waitcnt lgkmcnt(4)
	ds_load_u16_d16_hi v156, v74 offset:2208
	ds_load_u16_d16_hi v164, v74 offset:2272
	ds_load_u16_d16_hi v157, v74 offset:2464
	ds_load_u16_d16_hi v165, v74 offset:2528
	ds_load_u16_d16_hi v158, v74 offset:2720
	ds_load_u16_d16_hi v166, v74 offset:2784
	ds_load_u16_d16_hi v159, v74 offset:2976
	ds_load_u16_d16_hi v167, v74 offset:3040
	ds_load_u16_d16_hi v160, v74 offset:3232
	ds_load_u16_d16_hi v168, v74 offset:3296
	ds_load_u16_d16_hi v161, v74 offset:3488
	ds_load_u16_d16_hi v169, v74 offset:3552
	ds_load_u16_d16_hi v162, v74 offset:3744
	ds_load_u16_d16_hi v170, v74 offset:3808
	ds_load_u16_d16_hi v163, v74 offset:4000
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v171, v74 offset:4064
	ds_load_u16_d16_hi v50, v74 offset:4224
	ds_load_u16_d16_hi v41, v74 offset:4288
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[42:49], v[124:131], v[9:16]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v49, v106, v96
	v_sub_f32_e32 v106, v107, v96
	v_sub_f32_e32 v107, v112, v96
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v105, 0, v105, s11
	v_cndmask_b32_e64 v112, 0, v100, s7
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v49, v49
	v_exp_f32_e32 v106, v106
	v_exp_f32_e32 v107, v107
.Ltmp15:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v100, v117, v118
.Ltmp16:
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(18)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[148:155], v[124:131], v[25:32]
	.loc	1 700 30 is_stmt 0              ; attention.py:700:30
	v_mov_b16_e64 v148.h, v94.h
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	v_add_nc_u32_e32 v75, 0x80, v75
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v150.h, v94.h
	v_mov_b16_e64 v152.h, v94.h
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[156:163], v[124:131], v[17:24]
	.loc	1 690 33 is_stmt 1              ; attention.py:690:33
	v_cndmask_b32_e64 v158, 0, v103, s8
	v_cndmask_b32_e64 v156, 0, v106, s12
	v_cndmask_b32_e64 v106, 0, v102, s9
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v109, v109, v96
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v157, 0, v104, s10
	.loc	1 700 23 is_stmt 1              ; attention.py:700:23
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[164:171], v[124:131], v[1:8]
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v160, 0, v98, s5
.Ltmp17:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v104, v106, v158
.Ltmp18:
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v109, v109
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v161, 0, v97, s1
	v_cndmask_b32_e64 v162, 0, v101, s0
	v_cndmask_b32_e64 v163, 0, v107, s16
	v_cndmask_b32_e64 v164, 0, v110, s18
	v_cndmask_b32_e64 v165, 0, v111, s17
	v_cndmask_b32_e64 v166, 0, v108, s13
	v_cndmask_b32_e64 v49, 0, v49, s14
	v_cndmask_b32_e64 v159, 0, v99, s6
.Ltmp19:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v97, v114, v119
.Ltmp20:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v167, 0, v109, s15
.Ltmp21:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v101, v143, v144 :: v_dual_add_f32 v108, v160, v161
	v_dual_add_f32 v109, v162, v163 :: v_dual_add_f32 v110, v164, v165
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_add_f32 v111, v166, v167 :: v_dual_add_f32 v114, v100, v101
	v_dual_add_f32 v98, v120, v121 :: v_dual_add_f32 v99, v122, v123
	v_dual_add_f32 v59, v59, v78 :: v_dual_add_f32 v102, v49, v156
	v_add_f32_e32 v78, v145, v116
	v_dual_add_f32 v103, v105, v157 :: v_dual_add_f32 v168, v110, v111
	v_add_f32_e32 v93, v113, v93
.Ltmp22:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v148.l, v49.h
.Ltmp23:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v107, v112, v159
.Ltmp24:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v153.h, v94.h
	v_mov_b16_e64 v154.h, v94.h
	v_mov_b16_e64 v150.l, v106.h
	v_mov_b16_e64 v152.l, v160.h
.Ltmp25:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v113, v98, v99
.Ltmp26:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v153.l, v162.h
	v_mov_b16_e64 v154.l, v164.h
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v123, v108, v109 :: v_dual_and_b32 v108, 1, v148
	v_add_f32_e32 v107, v104, v107
	v_dual_add_f32 v59, v59, v78 :: v_dual_add_f32 v78, v102, v103
	v_dual_add_f32 v93, v93, v97 :: v_dual_and_b32 v110, 1, v150
.Ltmp28:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v149.h, v94.h
	v_mov_b16_e64 v155.h, v94.h
	v_mov_b16_e64 v149.l, v105.h
	v_and_b32_e32 v116, 1, v152
	v_mov_b16_e64 v155.l, v166.h
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v113, v93, v113
	v_dual_mov_b32 v93, v96 :: v_dual_and_b32 v96, 1, v153
	v_add_f32_e32 v78, v78, v107
	v_dual_add_f32 v59, v114, v59 :: v_dual_and_b32 v114, 1, v154
	v_add_f32_e32 v123, v123, v168
.Ltmp30:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v109, 1, v149
	v_and_b32_e32 v152, 1, v155
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp31:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v59, v113, v59
.Ltmp32:
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v124, v74 offset:6208
	ds_load_u16_d16 v139, v74 offset:5984
	ds_load_u16_d16 v140, v74 offset:6144
	ds_load_u16_d16 v142, v74 offset:6656
	ds_load_u16_d16 v126, v74 offset:6720
	ds_load_u16_d16 v125, v74 offset:6464
	ds_load_u16_d16 v141, v74 offset:6400
.Ltmp33:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v78, v123
.Ltmp34:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v151.h, v94.h
	v_mov_b16_e64 v151.l, v112.h
	v_mov_b16_e64 v94.l, v156.h
	v_cmp_o_f32_e64 s1, v105, v105
.Ltmp35:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v59, v59, v78
.Ltmp36:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v148, v105, v109, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v132, v74 offset:4192
	ds_load_u16_d16 v42, v74 offset:4416
	ds_load_u16_d16 v51, v74 offset:4352
	ds_load_u16_d16 v52, v74 offset:4608
	ds_load_u16_d16 v43, v74 offset:4672
	ds_load_u16_d16 v133, v74 offset:4448
	ds_load_u16_d16 v53, v74 offset:4864
	ds_load_u16_d16 v44, v74 offset:4928
	ds_load_u16_d16 v134, v74 offset:4704
	ds_load_u16_d16 v54, v74 offset:5120
	ds_load_u16_d16 v45, v74 offset:5184
	ds_load_u16_d16 v135, v74 offset:4960
	ds_load_u16_d16 v55, v74 offset:5376
	ds_load_u16_d16 v46, v74 offset:5440
	ds_load_u16_d16 v136, v74 offset:5216
	ds_load_u16_d16 v56, v74 offset:5632
	ds_load_u16_d16 v47, v74 offset:5696
	ds_load_u16_d16 v137, v74 offset:5472
	ds_load_u16_d16 v57, v74 offset:5888
	ds_load_u16_d16 v48, v74 offset:5952
	ds_load_u16_d16 v138, v74 offset:5728
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v96, v162, v96, 0x7fff
	v_cmp_o_f32_e64 s0, v49, v49
.Ltmp37:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v78, v59, s51, 0xfedcba98 op_sel:[1,0]
.Ltmp38:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v111, 1, v151
	v_cmp_o_f32_e64 s3, v106, v106
	v_add3_u32 v49, v49, v108, 0x7fff
	v_add3_u32 v149, v106, v110, 0x7fff
.Ltmp39:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v78, v59, v78
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v59, 1, v94
	v_mov_b16_e64 v94.l, v157.h
	v_cmp_o_f32_e64 s7, v156, v156
	v_cndmask_b16 v96.l, 0x7fff, v148.h, s1
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v98, v74 offset:6496
	ds_load_u16_d16 v143, v74 offset:6912
	ds_load_u16_d16 v127, v74 offset:6976
	ds_load_u16_d16 v99, v74 offset:6752
	ds_load_u16_d16 v144, v74 offset:7168
	ds_load_u16_d16 v128, v74 offset:7232
	ds_load_u16_d16 v100, v74 offset:7008
	ds_load_u16_d16 v145, v74 offset:7424
	ds_load_u16_d16 v129, v74 offset:7488
	ds_load_u16_d16 v101, v74 offset:7264
	ds_load_u16_d16 v146, v74 offset:7680
	ds_load_u16_d16 v130, v74 offset:7744
	ds_load_u16_d16 v102, v74 offset:7520
	ds_load_u16_d16 v147, v74 offset:7936
	ds_load_u16_d16 v131, v74 offset:8000
	ds_load_u16_d16 v103, v74 offset:7776
	ds_load_u16_d16 v104, v74 offset:8032
	ds_load_u16_d16 v97, v74 offset:6240
	s_waitcnt lgkmcnt(45)
	ds_load_u16_d16_hi v124, v74 offset:6336
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v125, v74 offset:6592
	s_waitcnt lgkmcnt(41)
	ds_load_u16_d16_hi v141, v74 offset:6528
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v59, v156, v59, 0x7fff
	v_and_b32_e32 v148, 1, v94
	v_mov_b16_e64 v94.l, v158.h
	v_cmp_o_f32_e64 s5, v112, v112
	v_add3_u32 v150, v112, v111, 0x7fff
	v_cmp_o_f32_e64 s8, v157, v157
	v_cmp_o_f32_e64 s12, v162, v162
	v_cndmask_b16 v49.l, 0x7fff, v49.h, s0
	v_cndmask_b16 v113.l, 0x7fff, v149.h, s3
	v_and_b32_e32 v149, 1, v94
	v_mov_b16_e64 v94.l, v159.h
	v_cndmask_b16 v49.h, 0x7fff, v59.h, s7
	v_add3_u32 v59, v157, v148, 0x7fff
	v_add3_u32 v114, v164, v114, 0x7fff
	v_cmp_o_f32_e64 s6, v160, v160
	v_add3_u32 v151, v160, v116, 0x7fff
	v_cmp_o_f32_e64 s9, v158, v158
	v_cndmask_b16 v114.l, 0x7fff, v150.h, s5
	v_cndmask_b16 v160.l, 0x7fff, v96.h, s12
	v_and_b32_e32 v148, 1, v94
	v_permlanex16_b32 v150, v49, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v96.h, 0x7fff, v59.h, s8
	v_add3_u32 v59, v158, v149, 0x7fff
	v_mov_b16_e64 v94.l, v161.h
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v115, v74 offset:4128
	ds_load_u16_d16 v106, v74 offset:6432
	ds_load_u16_d16_hi v142, v74 offset:6784
	ds_load_u16_d16_hi v126, v74 offset:6848
	ds_load_u16_d16 v107, v74 offset:6688
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v143, v74 offset:7040
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v127, v74 offset:7104
	ds_load_u16_d16 v108, v74 offset:6944
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v144, v74 offset:7296
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v128, v74 offset:7360
	ds_load_u16_d16 v109, v74 offset:7200
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v145, v74 offset:7552
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v129, v74 offset:7616
	ds_load_u16_d16 v110, v74 offset:7456
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v146, v74 offset:7808
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v130, v74 offset:7872
	ds_load_u16_d16 v111, v74 offset:7712
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v147, v74 offset:8064
	s_waitcnt lgkmcnt(24)
	ds_load_u16_d16_hi v131, v74 offset:8128
	ds_load_u16_d16 v112, v74 offset:7968
	ds_load_u16_d16_hi v51, v74 offset:4480
	ds_load_u16_d16_hi v42, v74 offset:4544
	ds_load_u16_d16 v116, v74 offset:4384
	ds_load_u16_d16_hi v52, v74 offset:4736
	ds_load_u16_d16_hi v43, v74 offset:4800
	ds_load_u16_d16 v117, v74 offset:4640
	ds_load_u16_d16_hi v53, v74 offset:4992
	ds_load_u16_d16_hi v44, v74 offset:5056
	ds_load_u16_d16 v118, v74 offset:4896
	ds_load_u16_d16_hi v54, v74 offset:5248
	ds_load_u16_d16_hi v45, v74 offset:5312
	ds_load_u16_d16 v119, v74 offset:5152
	ds_load_u16_d16_hi v55, v74 offset:5504
	ds_load_u16_d16_hi v46, v74 offset:5568
	ds_load_u16_d16 v120, v74 offset:5408
	ds_load_u16_d16_hi v56, v74 offset:5760
	ds_load_u16_d16_hi v47, v74 offset:5824
	ds_load_u16_d16 v121, v74 offset:5664
	ds_load_u16_d16_hi v57, v74 offset:6016
	ds_load_u16_d16_hi v48, v74 offset:6080
	ds_load_u16_d16 v122, v74 offset:5920
	ds_load_u16_d16_hi v140, v74 offset:6272
	ds_load_u16_d16 v105, v74 offset:6176
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s10, v159, v159
	v_cmp_o_f32_e64 s13, v164, v164
	v_cndmask_b16 v123.l, 0x7fff, v151.h, s6
	v_add3_u32 v151, v159, v148, 0x7fff
	v_perm_b32 v148, v150, v49, v68
	v_perm_b32 v149, v150, v49, v69
	v_permlanex16_b32 v49, v96, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v113.h, 0x7fff, v59.h, s9
	v_and_b32_e32 v59, 1, v94
	v_mov_b16_e64 v94.l, v163.h
	v_cmp_o_f32_e64 s14, v166, v166
	v_add3_u32 v152, v166, v152, 0x7fff
	v_cndmask_b16 v162.l, 0x7fff, v114.h, s13
	v_cndmask_b16 v114.h, 0x7fff, v151.h, s10
	v_perm_b32 v150, v49, v96, v68
	v_perm_b32 v151, v49, v96, v69
	v_permlanex16_b32 v49, v113, s51, 0xfedcba98 op_sel:[1,0]
	v_and_b32_e32 v96, 1, v94
	v_mov_b16_e64 v94.l, v165.h
	v_cmp_o_f32_e64 s15, v163, v163
	v_cndmask_b16 v164.l, 0x7fff, v152.h, s14
	v_permlanex16_b32 v155, v114, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v152, v49, v113, v68
	v_perm_b32 v153, v49, v113, v69
	v_add3_u32 v49, v163, v96, 0x7fff
	v_and_b32_e32 v96, 1, v94
	v_mov_b16_e64 v94.l, v167.h
	v_perm_b32 v154, v155, v114, v68
	v_perm_b32 v155, v155, v114, v69
	v_cndmask_b16 v160.h, 0x7fff, v49.h, s15
	v_cmp_o_f32_e64 s11, v161, v161
	v_and_b32_e32 v49, 1, v94
	v_cmp_o_f32_e64 s16, v165, v165
	v_cmp_o_f32_e64 s17, v167, v167
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(42)
	ds_load_u16_d16_hi v115, v74 offset:4256
	ds_load_u16_d16_hi v132, v74 offset:4320
	s_waitcnt lgkmcnt(22)
	ds_load_u16_d16_hi v116, v74 offset:4512
	ds_load_u16_d16_hi v133, v74 offset:4576
	s_waitcnt lgkmcnt(21)
	ds_load_u16_d16_hi v117, v74 offset:4768
	ds_load_u16_d16_hi v134, v74 offset:4832
	s_waitcnt lgkmcnt(20)
	ds_load_u16_d16_hi v118, v74 offset:5024
	ds_load_u16_d16_hi v135, v74 offset:5088
	s_waitcnt lgkmcnt(19)
	ds_load_u16_d16_hi v119, v74 offset:5280
	ds_load_u16_d16_hi v136, v74 offset:5344
	s_waitcnt lgkmcnt(18)
	ds_load_u16_d16_hi v120, v74 offset:5536
	ds_load_u16_d16_hi v137, v74 offset:5600
	s_waitcnt lgkmcnt(17)
	ds_load_u16_d16_hi v121, v74 offset:5792
	ds_load_u16_d16_hi v138, v74 offset:5856
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v122, v74 offset:6048
	ds_load_u16_d16_hi v139, v74 offset:6112
	s_waitcnt lgkmcnt(16)
	ds_load_u16_d16_hi v105, v74 offset:6304
	ds_load_u16_d16_hi v97, v74 offset:6368
	ds_load_u16_d16_hi v106, v74 offset:6560
	ds_load_u16_d16_hi v98, v74 offset:6624
	ds_load_u16_d16_hi v107, v74 offset:6816
	ds_load_u16_d16_hi v99, v74 offset:6880
	ds_load_u16_d16_hi v108, v74 offset:7072
	ds_load_u16_d16_hi v100, v74 offset:7136
	ds_load_u16_d16_hi v109, v74 offset:7328
	ds_load_u16_d16_hi v101, v74 offset:7392
	ds_load_u16_d16_hi v110, v74 offset:7584
	ds_load_u16_d16_hi v102, v74 offset:7648
	ds_load_u16_d16_hi v111, v74 offset:7840
	ds_load_u16_d16_hi v103, v74 offset:7904
	ds_load_u16_d16_hi v112, v74 offset:8096
	ds_load_u16_d16_hi v104, v74 offset:8160
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v59, v161, v59, 0x7fff
	v_add3_u32 v94, v165, v96, 0x7fff
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[9:16], v[41:48], v[148:155], v[9:16]
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v43, v167, v49, 0x7fff
	v_permlanex16_b32 v44, v160, s51, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v123.h, 0x7fff, v59.h, s11
	v_cndmask_b16 v162.h, 0x7fff, v94.h, s16
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[50:57], v[148:155], v[25:32]
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v164.h, 0x7fff, v43.h, s17
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(17)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[115:122], v[148:155], v[17:24]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v59, v123, s51, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v46, v162, s51, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[132:139], v[148:155], v[1:8]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v48, v164, s51, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v43, v44, v160, v68
	v_perm_b32 v41, v59, v123, v68
	v_perm_b32 v42, v59, v123, v69
	v_perm_b32 v44, v44, v160, v69
	v_perm_b32 v45, v46, v162, v68
	v_perm_b32 v46, v46, v162, v69
	v_perm_b32 v47, v48, v164, v68
	v_perm_b32 v48, v48, v164, v69
	.loc	1 701 23 is_stmt 1              ; attention.py:701:23
	v_fmac_f32_e32 v78, v58, v95
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 700 23                        ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[140:147], v[41:48], v[25:32]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[105:112], v[41:48], v[17:24]
	v_wmma_f32_16x16x16_bf16 v[9:16], v[124:131], v[41:48], v[9:16]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[97:104], v[41:48], v[1:8]
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_5
; %bb.6:                                ; %Flow
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_mov_b32_e32 v33, v71
.LBB0_7:                                ; %._crit_edge
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 841 48 is_stmt 1              ; attention.py:841:48
	v_div_scale_f32 v0, null, v78, v78, v25
	v_div_scale_f32 v34, null, v78, v78, v26
	v_div_scale_f32 v35, null, v78, v78, v27
	v_rcp_f32_e32 v36, v0
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v39, vcc_lo, v25, v78, v25
	v_rcp_f32_e32 v38, v35
	v_div_scale_f32 v40, s0, v26, v78, v26
	v_div_scale_f32 v43, null, v78, v78, v28
	v_div_scale_f32 v49, s3, v28, v78, v28
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_fma_f32 v41, -v0, v36, 1.0
	v_fma_f32 v42, -v34, v37, 1.0
	.loc	1 843 24                        ; attention.py:843:24
	v_mul_lo_u32 v33, s38, v33
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v44, -v35, v38, 1.0
	.loc	1 846 17                        ; attention.py:846:17
	s_and_b32 s49, s49, 0xffff
	.loc	1 841 48                        ; attention.py:841:48
	v_dual_fmac_f32 v36, v41, v36 :: v_dual_fmac_f32 v37, v42, v37
	v_rcp_f32_e32 v42, v43
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v38, v44, v38
	v_div_scale_f32 v41, s1, v27, v78, v27
	v_dual_mul_f32 v44, v39, v36 :: v_dual_mul_f32 v45, v40, v37
	s_mov_b32 s51, 0x31027000
	s_mov_b32 s50, 0x7ffffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v47, -v0, v44, v39
	v_fma_f32 v48, -v34, v45, v40
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_fma_f32 v50, -v43, v42, 1.0
	v_dual_fmac_f32 v44, v47, v36 :: v_dual_fmac_f32 v45, v48, v37
	v_div_scale_f32 v47, null, v78, v78, v29
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v42, v50, v42
	v_fma_f32 v0, -v0, v44, v39
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v34, v45, v40
	v_rcp_f32_e32 v39, v47
	v_div_scale_f32 v40, null, v78, v78, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_div_fmas_f32 v0, v0, v36, v44
	s_mov_b32 vcc_lo, s0
	v_mul_f32_e32 v36, v49, v42
	v_div_fmas_f32 v34, v34, v37, v45
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v0, v0, v78, v25
	v_rcp_f32_e32 v44, v40
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_fma_f32 v45, -v47, v39, 1.0
	v_div_fixup_f32 v25, v34, v78, v26
	v_div_scale_f32 v34, s4, v29, v78, v29
	v_fma_f32 v37, -v43, v36, v49
	v_fmac_f32_e32 v39, v45, v39
	v_mul_f32_e32 v46, v41, v38
	v_div_scale_f32 v45, null, v78, v78, v32
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v36, v37, v42
	v_div_scale_f32 v37, null, v78, v78, v31
	v_fma_f32 v51, -v35, v46, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_rcp_f32_e32 v48, v45
	.loc	1 841 28 is_stmt 0              ; attention.py:841:28
	v_cmp_lt_f32_e64 s0, 0, v78
	.loc	1 841 48                        ; attention.py:841:48
	v_fmac_f32_e32 v46, v51, v38
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v0, 0, v0, s0
	v_cndmask_b32_e64 v25, 0, v25, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v26, -v35, v46, v41
	v_mul_f32_e32 v41, v34, v39
	v_fma_f32 v35, -v40, v44, 1.0
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v26, v26, v38, v46
	v_fma_f32 v38, -v43, v36, v49
	s_mov_b32 vcc_lo, s3
	v_div_scale_f32 v43, s1, v30, v78, v30
	v_div_fixup_f32 v26, v26, v78, v27
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	v_div_fmas_f32 v36, v38, v42, v36
	v_fma_f32 v38, -v47, v41, v34
	s_mov_b32 vcc_lo, s4
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v26, 0, v26, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v27, v36, v78, v28
	v_fmac_f32_e32 v41, v38, v39
	v_div_scale_f32 v38, null, v78, v78, v17
	v_div_scale_f32 v36, s3, v31, v78, v31
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v34, -v47, v41, v34
	v_rcp_f32_e32 v49, v38
	v_fmac_f32_e32 v44, v35, v44
	v_rcp_f32_e32 v35, v37
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v27, 0, v27, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cmp_o_f32_e64 s6, v26, v26
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 841 48                        ; attention.py:841:48
	v_mul_f32_e32 v42, v43, v44
	v_fma_f32 v28, -v40, v42, v43
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_fma_f32 v46, -v37, v35, 1.0
	v_dual_fmac_f32 v42, v28, v44 :: v_dual_fmac_f32 v35, v46, v35
	v_fma_f32 v46, -v45, v48, 1.0
	v_div_fmas_f32 v28, v34, v39, v41
	v_fma_f32 v41, -v38, v49, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v34, -v40, v42, v43
	v_dual_mul_f32 v47, v36, v35 :: v_dual_fmac_f32 v48, v46, v48
	v_div_scale_f32 v46, s5, v32, v78, v32
	v_div_scale_f32 v43, null, v78, v78, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v39, -v37, v47, v36
	v_mul_f32_e32 v40, v46, v48
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v49, v41, v49
	v_div_fmas_f32 v34, v34, v44, v42
	v_fmac_f32_e32 v47, v39, v35
	v_rcp_f32_e32 v39, v43
	v_fma_f32 v42, -v45, v40, v46
	v_div_scale_f32 v41, s1, v17, v78, v17
	v_div_fixup_f32 v28, v28, v78, v29
	v_div_fixup_f32 v29, v34, v78, v30
	v_fma_f32 v30, -v37, v47, v36
	v_fmac_f32_e32 v40, v42, v48
	v_div_scale_f32 v37, null, v78, v78, v19
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v36, -v43, v39, 1.0
	s_mov_b32 vcc_lo, s3
	v_mul_f32_e32 v34, v41, v49
	v_div_fmas_f32 v30, v30, v35, v47
	v_fma_f32 v35, -v45, v40, v46
	v_fmac_f32_e32 v39, v36, v39
	v_rcp_f32_e32 v36, v37
	v_div_scale_f32 v45, null, v78, v78, v20
	s_mov_b32 vcc_lo, s5
	v_fma_f32 v42, -v38, v34, v41
	v_div_scale_f32 v44, s3, v18, v78, v18
	v_div_fmas_f32 v35, v35, v48, v40
	v_rcp_f32_e32 v40, v45
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fmac_f32_e32 v34, v42, v49
	v_mul_f32_e32 v42, v44, v39
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v37, v36, 1.0
	v_div_fixup_f32 v30, v30, v78, v31
	v_div_fixup_f32 v31, v35, v78, v32
	v_fma_f32 v32, -v38, v34, v41
	v_fma_f32 v35, -v43, v42, v44
	v_fmac_f32_e32 v36, v46, v36
	v_div_scale_f32 v38, s4, v19, v78, v19
	v_fma_f32 v41, -v45, v40, 1.0
	v_div_scale_f32 v46, null, v78, v78, v21
	s_mov_b32 vcc_lo, s1
	v_fmac_f32_e32 v42, v35, v39
	v_div_fmas_f32 v32, v32, v49, v34
	v_mul_f32_e32 v34, v38, v36
	v_fmac_f32_e32 v40, v41, v40
	v_rcp_f32_e32 v35, v46
	v_div_scale_f32 v41, s1, v20, v78, v20
	v_div_scale_f32 v47, null, v78, v78, v22
	v_div_fixup_f32 v17, v32, v78, v17
	v_fma_f32 v32, -v43, v42, v44
	v_fma_f32 v43, -v37, v34, v38
	v_mul_f32_e32 v44, v41, v40
	v_rcp_f32_e32 v48, v47
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v49, -v46, v35, 1.0
	v_div_fmas_f32 v32, v32, v39, v42
	v_fmac_f32_e32 v34, v43, v36
	v_fma_f32 v39, -v45, v44, v41
	v_div_scale_f32 v42, s3, v21, v78, v21
	v_fmac_f32_e32 v35, v49, v35
	v_div_fixup_f32 v18, v32, v78, v18
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v43, -v47, v48, 1.0
	v_fma_f32 v32, -v37, v34, v38
	v_fmac_f32_e32 v44, v39, v40
	v_div_scale_f32 v39, null, v78, v78, v23
	s_mov_b32 vcc_lo, s4
	v_dual_mul_f32 v37, v42, v35 :: v_dual_fmac_f32 v48, v43, v48
	v_div_scale_f32 v38, s5, v22, v78, v22
	v_div_fmas_f32 v32, v32, v36, v34
	v_fma_f32 v34, -v45, v44, v41
	v_rcp_f32_e32 v41, v39
	v_fma_f32 v36, -v46, v37, v42
	v_mul_f32_e32 v43, v38, v48
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v45, null, v78, v78, v24
	v_div_fmas_f32 v34, v34, v40, v44
	v_fmac_f32_e32 v37, v36, v35
	v_fma_f32 v40, -v47, v43, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v36, v45
	v_fma_f32 v44, -v39, v41, 1.0
	v_div_fixup_f32 v19, v32, v78, v19
	v_div_fixup_f32 v20, v34, v78, v20
	v_fma_f32 v32, -v46, v37, v42
	v_fmac_f32_e32 v43, v40, v48
	v_fmac_f32_e32 v41, v44, v41
	v_div_scale_f32 v34, s1, v23, v78, v23
	s_mov_b32 vcc_lo, s3
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v40, -v45, v36, 1.0
	v_div_fmas_f32 v32, v32, v35, v37
	v_fma_f32 v35, -v47, v43, v38
	v_mul_f32_e32 v37, v34, v41
	v_div_scale_f32 v38, null, v78, v78, v9
	s_mov_b32 vcc_lo, s5
	v_fmac_f32_e32 v36, v40, v36
	v_div_fmas_f32 v35, v35, v48, v43
	v_rcp_f32_e32 v42, v38
	v_fma_f32 v43, -v39, v37, v34
	v_div_scale_f32 v40, s3, v24, v78, v24
	v_div_scale_f32 v46, null, v78, v78, v10
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_fmac_f32 v37, v43, v41 :: v_dual_mul_f32 v44, v40, v36
	v_div_fixup_f32 v22, v35, v78, v22
	v_rcp_f32_e32 v35, v46
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_fma_f32 v43, -v38, v42, 1.0
	v_fma_f32 v34, -v39, v37, v34
	v_div_scale_f32 v39, null, v78, v78, v11
	v_div_fixup_f32 v21, v32, v78, v21
	v_fma_f32 v32, -v45, v44, v40
	v_fmac_f32_e32 v42, v43, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	v_rcp_f32_e32 v43, v39
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v47, -v46, v35, 1.0
	v_fmac_f32_e32 v44, v32, v36
	v_div_fmas_f32 v34, v34, v41, v37
	v_div_scale_f32 v41, s1, v10, v78, v10
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v35, v47, v35
	v_fma_f32 v37, -v45, v44, v40
	v_div_scale_f32 v32, s4, v9, v78, v9
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_fma_f32 v45, -v39, v43, 1.0
	v_div_scale_f32 v48, null, v78, v78, v12
	v_dual_mul_f32 v49, v41, v35 :: v_dual_mul_f32 v40, v32, v42
	s_delay_alu instid0(VALU_DEP_3)
	v_fmac_f32_e32 v43, v45, v43
	v_div_scale_f32 v45, s5, v11, v78, v11
	s_mov_b32 vcc_lo, s3
	v_rcp_f32_e32 v50, v48
	v_div_fmas_f32 v36, v37, v36, v44
	v_fma_f32 v37, -v46, v49, v41
	v_mul_f32_e32 v44, v45, v43
	v_fma_f32 v47, -v38, v40, v32
	v_div_fixup_f32 v23, v34, v78, v23
	v_div_fixup_f32 v24, v36, v78, v24
	v_fmac_f32_e32 v49, v37, v35
	v_fma_f32 v34, -v39, v44, v45
	v_div_scale_f32 v37, null, v78, v78, v13
	v_fmac_f32_e32 v40, v47, v42
	v_fma_f32 v36, -v48, v50, 1.0
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v44, v34, v43
	v_rcp_f32_e32 v34, v37
	s_mov_b32 vcc_lo, s4
	v_fma_f32 v32, -v38, v40, v32
	v_fma_f32 v38, -v46, v49, v41
	v_fmac_f32_e32 v50, v36, v50
	v_div_scale_f32 v36, s3, v12, v78, v12
	s_delay_alu instid0(VALU_DEP_4)
	v_div_fmas_f32 v32, v32, v42, v40
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v40, null, v78, v78, v14
	v_div_fmas_f32 v35, v38, v35, v49
	v_fma_f32 v38, -v39, v44, v45
	v_mul_f32_e32 v39, v36, v50
	v_fma_f32 v41, -v37, v34, 1.0
	s_mov_b32 vcc_lo, s5
	v_rcp_f32_e32 v42, v40
	v_div_fmas_f32 v38, v38, v43, v44
	v_fma_f32 v43, -v48, v39, v36
	v_fmac_f32_e32 v34, v41, v34
	v_div_scale_f32 v41, s1, v13, v78, v13
	v_div_fixup_f32 v9, v32, v78, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_fmac_f32_e32 v39, v43, v50
	v_div_fixup_f32 v10, v35, v78, v10
	v_mul_f32_e32 v32, v41, v34
	s_delay_alu instid0(TRANS32_DEP_1)
	v_fma_f32 v35, -v40, v42, 1.0
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v36, -v48, v39, v36
	v_div_fixup_f32 v11, v38, v78, v11
	v_fma_f32 v43, -v37, v32, v41
	v_div_scale_f32 v38, null, v78, v78, v15
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, s4, v14, v78, v14
	v_div_fmas_f32 v36, v36, v50, v39
	v_fmac_f32_e32 v32, v43, v34
	v_rcp_f32_e32 v44, v38
	s_delay_alu instid0(VALU_DEP_3)
	v_mul_f32_e32 v39, v35, v42
	s_mov_b32 vcc_lo, s1
	v_div_fixup_f32 v12, v36, v78, v12
	v_fma_f32 v36, -v37, v32, v41
	v_div_scale_f32 v43, null, v78, v78, v16
	v_fma_f32 v37, -v40, v39, v35
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v28, 0, v28, s0
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v32, v36, v34, v32
	v_div_scale_f32 v34, null, v78, v78, v1
	v_fma_f32 v41, -v38, v44, 1.0
	v_rcp_f32_e32 v45, v43
	v_fmac_f32_e32 v39, v37, v42
	v_rcp_f32_e32 v37, v34
	v_div_scale_f32 v36, s1, v15, v78, v15
	v_fmac_f32_e32 v44, v41, v44
	v_div_scale_f32 v41, null, v78, v78, v2
	v_div_fixup_f32 v13, v32, v78, v13
	v_fma_f32 v35, -v40, v39, v35
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_fma_f32 v32, -v43, v45, 1.0
	v_rcp_f32_e32 v47, v41
	s_delay_alu instid0(TRANS32_DEP_2)
	v_fma_f32 v46, -v34, v37, 1.0
	v_mul_f32_e32 v40, v36, v44
	s_mov_b32 vcc_lo, s4
	v_fmac_f32_e32 v45, v32, v45
	v_div_scale_f32 v32, s3, v16, v78, v16
	v_fmac_f32_e32 v37, v46, v37
	v_div_scale_f32 v46, null, v78, v78, v3
	v_div_fmas_f32 v35, v35, v42, v39
	v_fma_f32 v39, -v38, v40, v36
	v_mul_f32_e32 v42, v32, v45
	v_div_scale_f32 v48, s4, v1, v78, v1
	v_fma_f32 v49, -v41, v47, 1.0
	v_rcp_f32_e32 v50, v46
	v_fmac_f32_e32 v40, v39, v44
	v_fma_f32 v39, -v43, v42, v32
	v_mul_f32_e32 v51, v48, v37
	v_fmac_f32_e32 v47, v49, v47
	v_div_scale_f32 v49, s5, v2, v78, v2
	v_div_fixup_f32 v14, v35, v78, v14
	v_fma_f32 v35, -v38, v40, v36
	v_fmac_f32_e32 v42, v39, v45
	v_fma_f32 v36, -v34, v51, v48
	v_mul_f32_e32 v38, v49, v47
	v_fma_f32 v39, -v46, v50, 1.0
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v32, -v43, v42, v32
	v_fmac_f32_e32 v51, v36, v37
	v_fma_f32 v36, -v41, v38, v49
	v_fmac_f32_e32 v50, v39, v50
	v_div_scale_f32 v39, s1, v3, v78, v3
	v_div_fmas_f32 v35, v35, v44, v40
	v_div_scale_f32 v40, null, v78, v78, v4
	s_mov_b32 vcc_lo, s3
	v_fma_f32 v34, -v34, v51, v48
	v_fmac_f32_e32 v38, v36, v47
	v_mul_f32_e32 v36, v39, v50
	v_div_fmas_f32 v32, v32, v45, v42
	v_rcp_f32_e32 v42, v40
	s_mov_b32 vcc_lo, s4
	v_div_fixup_f32 v15, v35, v78, v15
	v_div_fmas_f32 v34, v34, v37, v51
	v_fma_f32 v37, -v41, v38, v49
	v_fma_f32 v41, -v46, v36, v39
	s_mov_b32 vcc_lo, s5
	v_div_fixup_f32 v16, v32, v78, v16
	v_div_fixup_f32 v1, v34, v78, v1
	v_div_scale_f32 v34, null, v78, v78, v5
	v_fmac_f32_e32 v36, v41, v50
	v_fma_f32 v35, -v40, v42, 1.0
	v_div_fmas_f32 v37, v37, v47, v38
	s_mov_b32 vcc_lo, s1
	v_div_scale_f32 v44, null, v78, v78, v8
	v_fma_f32 v32, -v46, v36, v39
	v_fmac_f32_e32 v42, v35, v42
	v_div_scale_f32 v35, null, v78, v78, v6
	v_div_fixup_f32 v2, v37, v78, v2
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	v_div_fmas_f32 v32, v32, v50, v36
	v_rcp_f32_e32 v36, v34
	v_div_scale_f32 v37, null, v78, v78, v7
	v_rcp_f32_e32 v39, v35
	v_div_scale_f32 v38, vcc_lo, v4, v78, v4
	v_rcp_f32_e32 v41, v37
	v_div_fixup_f32 v3, v32, v78, v3
	v_rcp_f32_e32 v46, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(TRANS32_DEP_3)
	v_mul_f32_e32 v43, v38, v42
	v_fma_f32 v32, -v34, v36, 1.0
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v29, 0, v29, s0
	v_cndmask_b32_e64 v30, 0, v30, s0
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v45, -v35, v39, 1.0
	v_fma_f32 v47, -v40, v43, v38
	v_fmac_f32_e32 v36, v32, v36
	v_div_scale_f32 v32, s1, v5, v78, v5
	v_fma_f32 v48, -v37, v41, 1.0
	v_fmac_f32_e32 v39, v45, v39
	v_div_scale_f32 v45, s3, v6, v78, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mul_f32_e32 v49, v32, v36
	v_fmac_f32_e32 v41, v48, v41
	v_div_scale_f32 v48, s4, v7, v78, v7
	v_fma_f32 v50, -v44, v46, 1.0
	v_fmac_f32_e32 v43, v47, v42
	v_mul_f32_e32 v51, v45, v39
	v_fma_f32 v47, -v34, v49, v32
	v_mul_f32_e32 v52, v48, v41
	v_fmac_f32_e32 v46, v50, v46
	v_div_scale_f32 v50, s5, v8, v78, v8
	v_fma_f32 v38, -v40, v43, v38
	v_fma_f32 v40, -v35, v51, v45
	v_fmac_f32_e32 v49, v47, v36
	v_fma_f32 v47, -v37, v52, v48
	v_mul_f32_e32 v53, v50, v46
	v_div_fmas_f32 v38, v38, v42, v43
	v_fmac_f32_e32 v51, v40, v39
	v_fma_f32 v32, -v34, v49, v32
	v_fmac_f32_e32 v52, v47, v41
	v_fma_f32 v34, -v44, v53, v50
	s_mov_b32 vcc_lo, s1
	v_fma_f32 v35, -v35, v51, v45
	v_div_fmas_f32 v32, v32, v36, v49
	s_mov_b32 vcc_lo, s3
	v_fmac_f32_e32 v53, v34, v46
	v_fma_f32 v34, -v37, v52, v48
	v_div_fmas_f32 v35, v35, v39, v51
	v_div_fixup_f32 v4, v38, v78, v4
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_bfe_u32 v37, v0, 16, 1
	v_bfe_u32 v38, v25, 16, 1
	v_bfe_u32 v39, v26, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	s_mov_b32 vcc_lo, s4
	.loc	1 846 36                        ; attention.py:846:36
	v_cmp_o_f32_e64 s4, v0, v0
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v34, v34, v41, v52
	s_mov_b32 vcc_lo, s5
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v37, v0, v37, 0x7fff
	v_add3_u32 v0, v25, v38, 0x7fff
	v_cmp_o_f32_e64 s5, v25, v25
	v_add3_u32 v25, v26, v39, 0x7fff
	v_bfe_u32 v26, v27, 16, 1
	v_cndmask_b16 v0.l, 0x7fff, v37.h, s4
	v_bfe_u32 v37, v28, 16, 1
	v_bfe_u32 v38, v29, 16, 1
	v_cmp_o_f32_e64 s4, v27, v27
	v_add3_u32 v26, v27, v26, 0x7fff
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v31, 0, v31, s0
	v_cndmask_b32_e64 v17, 0, v17, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v0.h, 0x7fff, v0.h, s5
	v_cndmask_b16 v25.l, 0x7fff, v25.h, s6
	v_add3_u32 v27, v28, v37, 0x7fff
	v_cmp_o_f32_e64 s5, v28, v28
	v_add3_u32 v28, v29, v38, 0x7fff
	v_cmp_o_f32_e64 s6, v29, v29
	v_cndmask_b16 v25.h, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v30, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v18, 0, v18, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v27.l, 0x7fff, v27.h, s5
	v_bfe_u32 v29, v31, 16, 1
	v_cndmask_b16 v27.h, 0x7fff, v28.h, s6
	v_bfe_u32 v28, v17, 16, 1
	v_add3_u32 v26, v30, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v30, v30
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v19, 0, v19, s0
	v_cndmask_b32_e64 v20, 0, v20, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v29, v31, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v31, v31
	v_add3_u32 v28, v17, v28, 0x7fff
	v_cmp_o_f32_e64 s6, v17, v17
	v_cndmask_b16 v17.l, 0x7fff, v26.h, s4
	v_bfe_u32 v26, v18, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v21, 0, v21, s0
	v_cndmask_b32_e64 v22, 0, v22, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v17.h, 0x7fff, v29.h, s5
	v_bfe_u32 v29, v19, 16, 1
	v_bfe_u32 v30, v20, 16, 1
	v_add3_u32 v26, v18, v26, 0x7fff
	v_cmp_o_f32_e64 s4, v18, v18
	v_cndmask_b16 v28.l, 0x7fff, v28.h, s6
	v_add3_u32 v18, v19, v29, 0x7fff
	v_cmp_o_f32_e64 s5, v19, v19
	v_add3_u32 v19, v20, v30, 0x7fff
	v_cmp_o_f32_e64 s6, v20, v20
	v_cndmask_b16 v28.h, 0x7fff, v26.h, s4
	v_bfe_u32 v20, v21, 16, 1
	v_bfe_u32 v26, v22, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v23, 0, v23, s0
	v_cndmask_b32_e64 v9, 0, v9, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.l, 0x7fff, v18.h, s5
	v_add3_u32 v20, v21, v20, 0x7fff
	v_cmp_o_f32_e64 s4, v21, v21
	v_add3_u32 v21, v22, v26, 0x7fff
	v_cmp_o_f32_e64 s5, v22, v22
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v24, 0, v24, s0
	v_cndmask_b32_e64 v10, 0, v10, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v18.h, 0x7fff, v19.h, s6
	v_bfe_u32 v19, v23, 16, 1
	v_cndmask_b16 v20.l, 0x7fff, v20.h, s4
	v_cndmask_b16 v20.h, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v9, 16, 1
	v_bfe_u32 v22, v24, 16, 1
	v_add3_u32 v19, v23, v19, 0x7fff
	v_cmp_o_f32_e64 s6, v23, v23
	v_bfe_u32 v23, v10, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v11, 0, v11, s0
	v_cndmask_b32_e64 v12, 0, v12, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v21, v9, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v9, v9
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v13, 0, v13, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v22, v24, v22, 0x7fff
	v_cmp_o_f32_e64 s4, v24, v24
	v_add3_u32 v9, v10, v23, 0x7fff
	v_cndmask_b16 v19.l, 0x7fff, v19.h, s6
	v_cmp_o_f32_e64 s6, v10, v10
	v_bfe_u32 v10, v11, 16, 1
	v_cndmask_b16 v9.l, 0x7fff, v21.h, s5
	v_bfe_u32 v21, v12, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v14, 0, v14, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v19.h, 0x7fff, v22.h, s4
	v_bfe_u32 v22, v13, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v15, 0, v15, s0
	v_cndmask_b32_e64 v16, 0, v16, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v10, v11, v10, 0x7fff
	v_cmp_o_f32_e64 s4, v11, v11
	v_add3_u32 v11, v12, v21, 0x7fff
	v_cmp_o_f32_e64 s5, v12, v12
	v_cndmask_b16 v9.h, 0x7fff, v9.h, s6
	v_add3_u32 v12, v13, v22, 0x7fff
	v_cmp_o_f32_e64 s6, v13, v13
	v_bfe_u32 v13, v14, 16, 1
	v_cndmask_b16 v10.l, 0x7fff, v10.h, s4
	v_cndmask_b16 v10.h, 0x7fff, v11.h, s5
	v_bfe_u32 v11, v15, 16, 1
	v_bfe_u32 v21, v16, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_fma_f32 v36, -v44, v53, v50
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v1, 0, v1, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v13, v14, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v14, v14
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v2, 0, v2, s0
	v_cndmask_b32_e64 v3, 0, v3, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.l, 0x7fff, v12.h, s6
	v_add3_u32 v11, v15, v11, 0x7fff
	v_cmp_o_f32_e64 s5, v15, v15
	v_add3_u32 v14, v16, v21, 0x7fff
	v_cmp_o_f32_e64 s6, v16, v16
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fmas_f32 v36, v36, v46, v53
	v_div_fixup_f32 v5, v32, v78, v5
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v12.h, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v1, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v6, v35, v78, v6
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v4, 0, v4, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_cndmask_b16 v11.l, 0x7fff, v11.h, s5
	v_bfe_u32 v15, v2, 16, 1
	v_cndmask_b16 v11.h, 0x7fff, v14.h, s6
	v_bfe_u32 v14, v3, 16, 1
	.loc	1 841 48                        ; attention.py:841:48
	v_div_fixup_f32 v7, v34, v78, v7
	v_div_fixup_f32 v8, v36, v78, v8
	.loc	1 841 19 is_stmt 0              ; attention.py:841:19
	v_cndmask_b32_e64 v5, 0, v5, s0
	.loc	1 846 36 is_stmt 1              ; attention.py:846:36
	v_add3_u32 v13, v1, v13, 0x7fff
	v_cmp_o_f32_e64 s4, v1, v1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v6, 0, v6, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_add3_u32 v1, v2, v15, 0x7fff
	v_cmp_o_f32_e64 s5, v2, v2
	v_add3_u32 v2, v3, v14, 0x7fff
	v_cmp_o_f32_e64 s6, v3, v3
	v_bfe_u32 v3, v4, 16, 1
	.loc	1 841 19                        ; attention.py:841:19
	v_cndmask_b32_e64 v7, 0, v7, s0
	v_cndmask_b32_e64 v8, 0, v8, s0
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b16 v1.l, 0x7fff, v13.h, s4
	v_bfe_u32 v13, v5, 16, 1
	v_add3_u32 v3, v4, v3, 0x7fff
	v_cmp_o_f32_e64 s4, v4, v4
	v_bfe_u32 v4, v6, 16, 1
	v_cndmask_b16 v1.h, 0x7fff, v1.h, s5
	v_add3_u32 v13, v5, v13, 0x7fff
	v_bfe_u32 v14, v7, 16, 1
	v_cmp_o_f32_e64 s5, v5, v5
	v_bfe_u32 v5, v8, 16, 1
	v_cndmask_b16 v2.l, 0x7fff, v2.h, s6
	v_add3_u32 v4, v6, v4, 0x7fff
	v_cmp_o_f32_e64 s6, v6, v6
	v_add3_u32 v6, v7, v14, 0x7fff
	v_cmp_o_f32_e64 s7, v7, v7
	v_add3_u32 v5, v8, v5, 0x7fff
	v_cmp_o_f32_e64 s8, v8, v8
	v_cndmask_b16 v2.h, 0x7fff, v3.h, s4
	v_cndmask_b16 v3.l, 0x7fff, v13.h, s5
	v_cndmask_b16 v3.h, 0x7fff, v4.h, s6
	v_cndmask_b16 v4.l, 0x7fff, v6.h, s7
	v_cndmask_b16 v4.h, 0x7fff, v5.h, s8
	.loc	1 843 74                        ; attention.py:843:74
	v_lshrrev_b32_e32 v32, 1, v70
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v5, v27, v0, s36
	v_cndmask_b32_e64 v0, v0, v27, s36
	v_cndmask_b32_e64 v6, v17, v25, s36
	v_cndmask_b32_e64 v7, v25, v17, s36
	v_cndmask_b32_e64 v13, v28, v20, s36
	v_cndmask_b32_e64 v15, v18, v19, s36
	v_cndmask_b32_e64 v16, v12, v9, s36
	v_cndmask_b32_e64 v9, v9, v12, s36
	v_cndmask_b32_e64 v12, v11, v10, s36
	v_cndmask_b32_e64 v10, v10, v11, s36
	v_cndmask_b32_e64 v17, v3, v1, s36
	v_cndmask_b32_e64 v1, v1, v3, s36
	v_cndmask_b32_e64 v14, v19, v18, s36
	v_cndmask_b32_e64 v18, v4, v2, s36
	v_cndmask_b32_e64 v2, v2, v4, s36
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v34, 16, v32
	s_mov_b32 s4, 0x76543210
	v_or_b32_e32 v35, 32, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_cndmask_b32_e64 v8, v20, v28, s36
	v_permlanex16_b32 v3, v0, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v4, v7, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v7, v13, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v11, v15, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v13, v10, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v15, v1, s4, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v9, v9, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 843 74                        ; attention.py:843:74
	v_or_b32_e32 v36, 48, v32
	.loc	1 846 36                        ; attention.py:846:36
	v_permlanex16_b32 v19, v2, s4, 0xfedcba98 op_sel:[1,0]
	.loc	1 844 63                        ; attention.py:844:63
	v_cmp_gt_i32_e32 vcc_lo, s38, v34
	v_cmp_gt_i32_e64 s3, s38, v32
	v_cmp_gt_i32_e64 s0, s38, v35
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v0, v3, v5, v68
	v_perm_b32 v1, v3, v5, v69
	v_perm_b32 v2, v4, v6, v68
	v_perm_b32 v3, v4, v6, v69
	v_perm_b32 v4, v7, v8, v68
	v_perm_b32 v5, v7, v8, v69
	v_perm_b32 v6, v11, v14, v68
	v_perm_b32 v7, v11, v14, v69
	v_perm_b32 v10, v13, v12, v68
	v_perm_b32 v11, v13, v12, v69
	v_perm_b32 v12, v15, v17, v68
	v_perm_b32 v13, v15, v17, v69
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v17, v33, v34, 1
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v8, v9, v16, v68
	v_perm_b32 v9, v9, v16, v69
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v16, v33, v32, 1
	.loc	1 844 63 is_stmt 1              ; attention.py:844:63
	v_cmp_gt_i32_e64 s1, s38, v36
	.loc	1 846 36                        ; attention.py:846:36
	v_perm_b32 v14, v19, v18, v68
	v_perm_b32 v15, v19, v18, v69
	.loc	1 846 17 is_stmt 0              ; attention.py:846:17
	v_add_lshl_u32 v18, v33, v35, 1
	.loc	1 844 24 is_stmt 1              ; attention.py:844:24
	s_and_b32 vcc_lo, s2, vcc_lo
	s_and_b32 s3, s2, s3
	.loc	1 846 17                        ; attention.py:846:17
	v_add_lshl_u32 v19, v33, v36, 1
	v_cndmask_b32_e32 v17, 0x80000000, v17, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s0
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e64 v16, 0x80000000, v16, s3
	v_cndmask_b32_e32 v18, 0x80000000, v18, vcc_lo
	.loc	1 844 24                        ; attention.py:844:24
	s_and_b32 vcc_lo, s2, s1
	.loc	1 846 17                        ; attention.py:846:17
	v_cndmask_b32_e32 v19, 0x80000000, v19, vcc_lo
	s_clause 0x3
	buffer_store_b128 v[0:3], v16, s[48:51], 0 offen
	buffer_store_b128 v[4:7], v17, s[48:51], 0 offen
	buffer_store_b128 v[8:11], v18, s[48:51], 0 offen
	buffer_store_b128 v[12:15], v19, s[48:51], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp41:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 160
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
		.amdhsa_next_free_vgpr 179
		.amdhsa_next_free_sgpr 62
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_vgpr, 179
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.numbered_sgpr, 62
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 13692
; TotalNumSgprs: 64
; NumVgprs: 179
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 22
; NumSGPRsForWavesPerEU: 64
; NumVGPRsForWavesPerEU: 179
; Occupancy: 8
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
	.byte	5                               ; Abbreviation Code
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
	.byte	5                               ; DW_FORM_data2
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
	.byte	1                               ; Abbrev [1] 0xb:0x6d DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x47 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	687                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x5b:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	691                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x68:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"triton"                        ; string offset=0 ; triton
.Linfo_string1:
	.asciz	"attention.py"                  ; string offset=7 ; attention.py
.Linfo_string2:
	.asciz	"<repo>/src/amd_strix_halo_kernels" ; string offset=20 ; <repo>/src/amd_strix_halo_kernels
.Linfo_string3:
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
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
      - .offset:         72
        .size:           4
        .value_kind:     by_value
      - .offset:         76
        .size:           4
        .value_kind:     by_value
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
      - .offset:         100
        .size:           4
        .value_kind:     by_value
      - .offset:         104
        .size:           4
        .value_kind:     by_value
      - .offset:         108
        .size:           4
        .value_kind:     by_value
      - .offset:         112
        .size:           4
        .value_kind:     by_value
      - .offset:         116
        .size:           4
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           1
        .value_kind:     by_value
      - .offset:         125
        .size:           1
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         152
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 160
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1
    .private_segment_fixed_size: 0
    .sgpr_count:     64
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_causal_bfloat16_d64_dv64_hq8_hkv8_lq512_lk512_bm64_bn64_w4_s1_ds1.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     179
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
