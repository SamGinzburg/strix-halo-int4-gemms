	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s68, s[0:1], 0x60
	s_load_b64 s[46:47], s[0:1], 0x58
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v84, 3, v0
	s_clause 0x1
	s_load_b64 s[56:57], s[0:1], 0x40
	s_load_b64 s[60:61], s[0:1], 0x0
	s_mov_b32 s63, 0x31027000
	s_mov_b32 s62, 0x7ffffffe
	s_clause 0x1
	s_load_b64 s[12:13], s[0:1], 0x78
	s_load_b32 s15, s[0:1], 0x80
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v81, 1, v0
	v_lshlrev_b32_e32 v86, 4, v0
	v_and_b32_e32 v85, 15, v0
	v_lshlrev_b32_e32 v82, 2, v0
	v_lshlrev_b32_e32 v83, 5, v0
	v_and_b32_e32 v7, 0x70, v81
	s_mov_b32 s48, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_xor_b32_e32 v7, v86, v7
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s5, s68
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s68
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s4, s5
	s_sub_i32 s6, 0, s5
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v87, 0, v7
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s4
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s4, v1
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s4, s4, 0x4f7ffffe
	.loc	1 571 21                        ; attention.py:571:21
	v_lshlrev_b32_e32 v77, 3, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s4, s4
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[78:79], null, s46, v84, v[77:78]
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s4
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e32 vcc_lo, s46, v77
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s6, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s4, s7, s6
	s_mul_i32 s9, s4, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s4, 1
	s_sub_i32 s10, s7, s5
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s4, 1
	s_cmp_ge_u32 s7, s5
	s_cselect_b32 s4, s9, s4
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s61, s61, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s4, s4, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_sub_i32 s7, s4, s8
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s14, s7, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s7, s7, s68
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s14, v84
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s4, s14, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s45, s2, s7
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s4, s4, s46
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v3, s4, v78, 1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s44, 1, v2
	.loc	1 601 22 is_stmt 0              ; attention.py:601:22
	s_and_b32 s4, vcc_lo, s44
	.loc	1 599 26 is_stmt 1              ; attention.py:599:26
	v_cndmask_b32_e64 v3, 0x80000000, v3, s4
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s4, s68, 31
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s8, s4, s68
	s_abs_i32 s4, s4
	.loc	1 599 26                        ; attention.py:599:26
	buffer_load_b128 v[3:6], v3, s[60:63], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s4, s6
	s_ashr_i32 s8, s8, 31
	s_mul_i32 s9, s6, s5
	s_add_i32 s10, s6, 1
	s_sub_i32 s4, s4, s9
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s4, s5
	s_cmp_ge_u32 s4, s5
	s_cselect_b32 s6, s10, s6
	s_cselect_b32 s2, s2, s4
	s_add_i32 s4, s6, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s2, s4, s6
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s13, s15
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s8
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, s14
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s15, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s8
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s5, s5, 0x800
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s14
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s5, s5, 63
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s6, s45, s2
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s7, s5, 31
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s4, s4, 0
	.loc	1 619 34                        ; attention.py:619:34
	s_lshr_b32 s7, s7, 26
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s6, s6, 6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s5, s7
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s4, s4, 0x7fffffc0
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s6, s2
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s69, s6, s4
	.loc	1 619 18                        ; attention.py:619:18
	s_min_i32 s70, s2, s5
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_ge_i32 s69, s70
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[3:6]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_scc1 .LBB0_19
; %bb.1:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_clause 0x2
	s_load_b128 s[8:11], s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	s_load_b64 s[58:59], s[0:1], 0x30
	.loc	1 571 21 is_stmt 1              ; attention.py:571:21
	v_or_b32_e32 v88, 1, v77
	v_or_b32_e32 v89, 2, v77
	v_or_b32_e32 v90, 3, v77
	v_or_b32_e32 v91, 4, v77
	v_or_b32_e32 v92, 5, v77
	v_or_b32_e32 v93, 6, v77
	v_or_b32_e32 v94, 7, v77
	v_bfe_i32 v31, v0, 0, 1
	v_bfe_i32 v32, v0, 2, 1
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v1, 4, v1
	v_and_b32_e32 v45, 4, v0
	v_and_b32_e32 v48, 0x60, v83
	v_and_b32_e32 v31, 0x420, v31
	v_and_b32_e32 v32, 0x840, v32
	v_and_b32_e32 v50, 0x80, v81
	v_lshl_add_u32 v45, v45, 7, 0
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s0, s3, 31
	s_waitcnt lgkmcnt(0)
	v_mul_lo_u32 v25, s11, v84
	s_lshr_b32 s0, s0, 29
	v_and_b32_e32 v46, 16, v0
	s_add_i32 s1, s3, s0
	v_and_b32_e32 v28, 28, v0
	.loc	1 567 22                        ; attention.py:567:22
	s_and_b32 s2, s1, -8
	.loc	1 566 23                        ; attention.py:566:23
	s_ashr_i32 s1, s1, 3
	.loc	1 567 22                        ; attention.py:567:22
	s_sub_i32 s2, s3, s2
	.loc	1 629 13                        ; attention.py:629:13
	v_add_nc_u32_e32 v105, v25, v88
	v_dual_mov_b32 v133, 0xff800000 :: v_dual_add_nc_u32 v106, v25, v89
	v_add_nc_u32_e32 v107, v25, v90
	v_add_nc_u32_e32 v108, v25, v91
	v_add_nc_u32_e32 v109, v25, v92
	v_add_nc_u32_e32 v112, v25, v93
	v_add_nc_u32_e32 v113, v25, v94
	v_add_nc_u32_e32 v114, v25, v77
	v_lshlrev_b32_e32 v25, 3, v0
	.loc	1 676 27                        ; attention.py:676:27
	s_mul_i32 s2, s10, s2
	.loc	1 675 27                        ; attention.py:675:27
	s_mul_i32 s1, s9, s1
	v_and_or_b32 v111, 0x3e0, v83, v28
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s76, s2, s1
	v_and_b32_e32 v25, 16, v25
	v_cmp_eq_u32_e64 s1, 0, v46
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[79:80], null, s47, v84, v[77:78]
	v_xor_b32_e32 v28, 4, v111
	s_delay_alu instid0(VALU_DEP_4)
	v_and_or_b32 v25, 0x180, v86, v25
	v_xor_b32_e32 v29, 8, v111
	v_xor_b32_e32 v30, 12, v111
	v_xor_b32_e32 v41, 16, v111
	v_add_nc_u32_e32 v121, 0, v28
	v_or3_b32 v115, v25, v31, v32
	v_bfe_i32 v25, v0, 3, 1
	v_bfe_i32 v31, v0, 5, 1
	v_mov_b32_e32 v32, 0x5410
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v17, v85, 7, v1
	v_add_nc_u32_e32 v122, 0, v29
	v_and_b32_e32 v25, 0x420, v25
	v_and_b32_e32 v31, 0x840, v31
	v_cndmask_b32_e64 v32, 0x1054, v32, s1
	v_xor_b32_e32 v4, 0x60, v17
	v_xor_b32_e32 v18, 16, v17
	v_xor_b32_e32 v10, 48, v17
	v_xor3_b32 v25, v25, v48, v31
	v_lshl_or_b32 v31, v32, 8, v32
	v_add_nc_u32_e32 v98, 0, v4
	v_xor_b32_e32 v3, 0x50, v17
	v_mov_b32_e32 v47, 0x7632
	v_add3_u32 v25, v45, v50, v25
	v_lshlrev_b32_e32 v45, 1, v85
	v_xor_b32_e32 v5, 0x70, v17
	v_and_b32_e32 v31, 0x540054, v31
	v_cndmask_b32_e64 v47, 0x3276, v47, s1
	v_add_nc_u32_e32 v119, v25, v46
	v_mov_b32_e32 v25, 0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v1, s15, v2
	v_and_b32_e32 v26, 0x60, v0
	v_lshl_or_b32 v32, v47, 8, v47
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v9, 32, v17
	v_mov_b32_e32 v131, v25
	v_xor_b32_e32 v2, 64, v17
	v_lshrrev_b32_e32 v27, 3, v26
	v_add3_u32 v118, 0, v45, v26
	v_mov_b32_e32 v26, v25
	.loc	1 671 47                        ; attention.py:671:47
	v_add_nc_u32_e32 v96, s13, v1
	v_and_b32_e32 v32, 0x760076, v32
	v_xor_b32_e32 v110, v82, v27
	v_dual_mov_b32 v28, v25 :: v_dual_add_nc_u32 v97, 0, v5
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v99, 0, v3
	v_add_nc_u32_e32 v101, 0, v10
	v_dual_mov_b32 v132, 0xff800000 :: v_dual_add_nc_u32 v103, 0, v18
	v_xor_b32_e32 v27, 0x210, v110
	v_lshl_or_b32 v31, v31, 4, v31
	v_lshl_or_b32 v32, v32, 4, v32
	v_add_nc_u32_e32 v100, 0, v2
	v_dual_mov_b32 v29, v25 :: v_dual_add_nc_u32 v102, 0, v9
	v_add_nc_u32_e32 v104, 0, v17
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v95, s12, v1
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[5:8], v97
	ds_load_b128 v[1:4], v98
	v_and_b32_e32 v116, 0x5040504, v31
	v_and_b32_e32 v117, 0x7060706, v32
	v_add_nc_u32_e32 v120, 0, v27
	v_add_nc_u32_e32 v123, 0, v30
	v_mov_b32_e32 v27, v25
	v_mov_b32_e32 v30, v25
	ds_load_b128 v[13:16], v99
	ds_load_b128 v[9:12], v100
	v_mov_b32_e32 v31, v25
	ds_load_b128 v[37:40], v103
	ds_load_b128 v[33:36], v104
	v_mov_b32_e32 v32, v25
	ds_load_b128 v[21:24], v101
	ds_load_b128 v[17:20], v102
	v_xor_b32_e32 v42, 20, v111
	v_xor_b32_e32 v43, 24, v111
	v_xor_b32_e32 v44, 28, v111
	v_xor_b32_e32 v49, 32, v115
	v_xor_b32_e32 v47, 64, v115
	v_xor_b32_e32 v48, 0x60, v115
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s0, s47, v77
	v_add_nc_u32_e32 v124, 0, v41
	v_add_nc_u32_e32 v125, 0, v42
	v_add_nc_u32_e32 v126, 0, v43
	v_add_nc_u32_e32 v127, 0, v44
	v_add_nc_u32_e32 v128, 0, v49
	v_add_nc_u32_e32 v129, 0, v47
	v_add_nc_u32_e32 v130, 0, v48
	v_mov_b32_e32 v80, 0xff800000
	.loc	1 664 27                        ; attention.py:664:27
	s_mul_f32 s72, s8, 0x3fb8aa3b
	.loc	1 674 25                        ; attention.py:674:25
	s_mul_i32 s14, s14, s11
	s_and_b32 s5, s5, 0xffff
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s71, s3, 11
	s_lshl_b32 s73, s46, 4
	s_lshl_b32 s74, s46, 5
	s_mul_i32 s75, s46, 48
	s_add_i32 s76, s76, s14
	s_lshl_b32 s77, s47, 4
	s_lshl_b32 s78, s47, 5
	s_mul_i32 s79, s47, 48
	s_and_b32 s65, s7, 0xffff
	s_mov_b32 s49, s48
	s_mov_b32 s50, s48
	s_mov_b32 s51, s48
	s_mov_b32 s52, s48
	s_mov_b32 s53, s48
	s_mov_b32 s54, s48
	s_mov_b32 s55, s48
	s_mov_b32 s80, 0x76543210
	s_mov_b32 s60, s4
	s_mov_b32 s61, s5
	s_mov_b32 s64, s6
	s_mov_b32 s66, s62
	s_mov_b32 s67, s63
	s_branch .LBB0_3
.LBB0_2:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 32 is_stmt 0                ; attention.py:0:32
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_waitcnt vmcnt(0)
	v_and_b16 v76.h, 0xff, v76.h
	v_and_b16 v75.l, 0xff, v75.l
	v_and_b16 v74.l, 0xff, v74.l
	v_and_b16 v74.h, 0xff, v74.h
	v_and_b16 v73.l, 0xff, v73.l
	v_and_b16 v73.h, 0xff, v73.h
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v136, s72, v49 :: v_dual_mul_f32 v137, s72, v50
	.loc	1 681 34                        ; attention.py:681:34
	v_and_b16 v49.l, 0xff, v76.l
	v_and_b16 v75.h, 0xff, v75.h
	s_delay_alu instid0(VALU_DEP_4)
	v_cmp_ne_u16_e64 s1, 0, v73.h
	v_cmp_ne_u16_e64 s2, 0, v73.l
	v_cmp_ne_u16_e64 s4, 0, v74.h
	v_cmp_ne_u16_e64 s5, 0, v74.l
	v_cmp_ne_u16_e64 s7, 0, v75.l
	v_cmp_ne_u16_e64 s8, 0, v76.h
	v_cmp_ne_u16_e64 s9, 0, v49.l
	v_cmp_ne_u16_e64 s6, 0, v75.h
	.loc	1 681 25 is_stmt 0              ; attention.py:681:25
	s_and_b32 s23, s10, s1
	s_and_b32 s25, s11, s2
	s_and_b32 s26, s12, s4
	s_and_b32 s24, s16, s8
	s_and_b32 s28, s13, s5
	s_and_b32 s30, s17, s9
	s_and_b32 s33, s15, s7
	.loc	1 664 17 is_stmt 1              ; attention.py:664:17
	v_dual_mul_f32 v134, s72, v57 :: v_dual_mul_f32 v135, s72, v58
	v_mul_f32_e32 v138, s72, v51
	.loc	1 681 25                        ; attention.py:681:25
	v_cndmask_b32_e64 v73, 0, 1, s23
	v_cndmask_b32_e64 v74, 0, 1, s25
	v_cndmask_b32_e64 v50, 0, 1, s26
	v_cndmask_b32_e64 v49, 0, 1, s24
	v_cndmask_b32_e64 v58, 0, 1, s28
	v_cndmask_b32_e64 v51, 0, 1, s30
	v_cndmask_b32_e64 v75, 0, 1, s33
	s_and_b32 s29, s14, s6
	v_lshlrev_b16 v49.l, 8, v49.l
	v_cndmask_b32_e64 v57, 0, 1, s29
	v_lshlrev_b16 v49.h, 8, v50.l
	v_mov_b16_e32 v50.l, v73.l
	v_lshlrev_b16 v50.h, 8, v51.l
	v_mov_b16_e32 v51.l, v75.l
	v_lshlrev_b16 v51.h, 8, v58.l
	v_mov_b16_e32 v58.l, v74.l
	v_or_b16 v57.h, v57.l, v49.l
	v_or_b16 v57.l, v50.l, v49.h
	v_add_nc_u32_e32 v49, 0, v110
	v_or_b16 v50.h, v51.l, v50.h
	v_or_b16 v50.l, v58.l, v51.h
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v74, s72, v53 :: v_dual_add_nc_u32 v51, 0, v111
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v49, v57
	ds_store_b32 v120, v50
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v49, v51
	ds_load_b32 v50, v121
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v139, s72, v56 :: v_dual_mul_f32 v142, s72, v43
	.loc	1 681 25                        ; attention.py:681:25
	ds_load_b32 v43, v122
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v143, s72, v44 :: v_dual_mul_f32 v146, s72, v47
	.loc	1 681 25                        ; attention.py:681:25
	ds_load_b32 v44, v123
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v73, s72, v52 :: v_dual_mul_f32 v76, s72, v55
	v_dual_mul_f32 v141, s72, v42 :: v_dual_mul_f32 v144, s72, v45
	.loc	1 681 25                        ; attention.py:681:25
	ds_load_b32 v45, v124
	ds_load_b32 v47, v125
	ds_load_b32 v51, v126
	ds_load_b32 v52, v127
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v75, s72, v54 :: v_dual_mul_f32 v140, s72, v41
	v_mul_f32_e32 v145, s72, v46
	v_mul_f32_e32 v147, s72, v48
	v_dual_mul_f32 v65, s72, v65 :: v_dual_mul_f32 v66, s72, v66
	v_dual_mul_f32 v61, s72, v61 :: v_dual_mul_f32 v62, s72, v62
	.loc	1 681 25                        ; attention.py:681:25
	s_waitcnt lgkmcnt(7)
	v_lshrrev_b16 v41.l, 8, v49.l
	s_waitcnt lgkmcnt(6)
	v_lshrrev_b16 v41.h, 8, v50.l
	v_and_b32_e32 v48, 0x1000000, v49
	v_and_b32_e32 v53, 0x10000, v49
	v_and_b32_e32 v49, 1, v49
	v_and_b16 v42.l, 1, v41.l
	v_and_b16 v46.l, 1, v41.h
	s_waitcnt lgkmcnt(5)
	v_lshrrev_b16 v41.l, 8, v43.l
	s_waitcnt lgkmcnt(4)
	v_lshrrev_b16 v41.h, 8, v44.l
	v_and_b32_e32 v55, 0x1000000, v50
	v_and_b32_e32 v56, 0x10000, v50
	v_and_b32_e32 v148, 1, v50
	v_and_b16 v50.l, 1, v41.l
	v_and_b16 v54.l, 1, v41.h
	s_waitcnt lgkmcnt(3)
	v_lshrrev_b16 v41.l, 8, v45.l
	s_waitcnt lgkmcnt(2)
	v_lshrrev_b16 v41.h, 8, v47.l
	v_cmp_eq_u32_e64 s42, 1, v49
	v_cmp_eq_u16_e64 s43, 1, v42.l
	v_and_b32_e32 v151, 1, v43
	v_and_b16 v57.l, 1, v41.l
	v_and_b16 v57.h, 1, v41.h
	s_waitcnt lgkmcnt(1)
	v_lshrrev_b16 v41.l, 8, v51.l
	s_waitcnt lgkmcnt(0)
	v_lshrrev_b16 v41.h, 8, v52.l
	v_and_b32_e32 v166, 1, v52
	v_and_b32_e32 v157, 1, v45
	v_and_b32_e32 v164, 0x1000000, v52
	v_and_b16 v58.l, 1, v41.l
	v_and_b32_e32 v165, 0x10000, v52
	v_and_b16 v58.h, 1, v41.h
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v41, 0xff800000, v65, s42
	v_cndmask_b32_e64 v42, 0xff800000, v66, s43
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v153, 0x10000, v44
	v_cmp_eq_u32_e64 s34, 1, v151
	v_cmp_eq_u32_e64 s5, 1, v166
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v63, s72, v63 :: v_dual_mul_f32 v64, s72, v64
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s21, 1, v54.l
	v_cmp_ne_u32_e64 s20, 0, v153
	v_cmp_eq_u32_e64 s17, 1, v157
	v_cmp_eq_u16_e64 s18, 1, v57.l
	v_cmp_ne_u32_e64 s1, 0, v165
	v_cmp_ne_u32_e64 s4, 0, v164
	v_and_b32_e32 v152, 0x1000000, v44
	v_and_b32_e32 v156, 0x10000, v45
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v49, 0xff800000, v134, s34
	v_cndmask_b32_e64 v134, 0xff800000, v144, s5
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v155, 0x1000000, v45
	v_and_b32_e32 v149, 0x1000000, v43
	v_and_b32_e32 v159, 0x10000, v47
	v_and_b32_e32 v160, 1, v47
	v_cmp_ne_u32_e64 s36, 0, v55
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v54, 0xff800000, v62, s21
	v_cndmask_b32_e64 v55, 0xff800000, v63, s20
	v_cndmask_b32_e64 v62, 0xff800000, v136, s17
	v_cndmask_b32_e64 v63, 0xff800000, v137, s18
	v_cndmask_b32_e64 v136, 0xff800000, v146, s1
	v_cndmask_b32_e64 v137, 0xff800000, v147, s4
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v158, 0x1000000, v47
	v_and_b32_e32 v150, 0x10000, v43
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v67, s72, v67 :: v_dual_mul_f32 v68, s72, v68
	.loc	1 681 25                        ; attention.py:681:25
	v_and_b32_e32 v154, 1, v44
	v_and_b32_e32 v161, 0x1000000, v51
	v_and_b32_e32 v162, 0x10000, v51
	v_and_b32_e32 v163, 1, v51
	v_cmp_ne_u32_e64 s40, 0, v53
	v_cmp_ne_u32_e64 s41, 0, v48
	v_cmp_ne_u32_e64 s19, 0, v152
	v_cmp_ne_u32_e64 s15, 0, v156
	v_cmp_ne_u32_e64 s16, 0, v155
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v69, s72, v69 :: v_dual_mul_f32 v70, s72, v70
	v_dual_mul_f32 v71, s72, v71 :: v_dual_mul_f32 v72, s72, v72
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s39, 1, v148
	v_cmp_eq_u16_e64 s38, 1, v46.l
	v_cmp_ne_u32_e64 s37, 0, v56
	v_cmp_ne_u32_e64 s31, 0, v149
	v_cmp_eq_u32_e64 s14, 1, v160
	v_cmp_eq_u16_e64 s13, 1, v57.h
	v_cmp_ne_u32_e64 s12, 0, v159
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v149, v136, v137
.Ltmp2:
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_ne_u32_e64 s11, 0, v158
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v59, s72, v59 :: v_dual_mul_f32 v60, s72, v60
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u16_e64 s35, 1, v50.l
	v_cmp_ne_u32_e64 s27, 0, v150
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v43, 0xff800000, v67, s40
	v_cndmask_b32_e64 v44, 0xff800000, v68, s41
	.loc	1 681 25                        ; attention.py:681:25
	v_cmp_eq_u32_e64 s22, 1, v154
	v_cmp_eq_u32_e64 s9, 1, v163
	v_cmp_eq_u16_e64 s10, 1, v58.l
	v_cmp_ne_u32_e64 s8, 0, v162
	v_cmp_ne_u32_e64 s7, 0, v161
	v_cmp_eq_u16_e64 s6, 1, v58.h
	.loc	1 686 26                        ; attention.py:686:26
	v_add_nc_u32_e32 v57, 0, v115
	v_cndmask_b32_e64 v56, 0xff800000, v64, s19
	v_cndmask_b32_e64 v64, 0xff800000, v138, s15
	v_cndmask_b32_e64 v65, 0xff800000, v73, s16
	v_cndmask_b32_e64 v45, 0xff800000, v69, s39
	v_cndmask_b32_e64 v46, 0xff800000, v70, s38
	v_cndmask_b32_e64 v47, 0xff800000, v71, s37
	v_cndmask_b32_e64 v48, 0xff800000, v72, s36
	v_cndmask_b32_e64 v66, 0xff800000, v74, s14
	v_cndmask_b32_e64 v67, 0xff800000, v75, s13
	v_cndmask_b32_e64 v68, 0xff800000, v76, s12
	v_cndmask_b32_e64 v69, 0xff800000, v139, s11
	v_cndmask_b32_e64 v50, 0xff800000, v135, s35
	v_cndmask_b32_e64 v51, 0xff800000, v59, s27
	v_cndmask_b32_e64 v52, 0xff800000, v60, s31
	v_cndmask_b32_e64 v53, 0xff800000, v61, s22
	v_cndmask_b32_e64 v70, 0xff800000, v140, s9
	v_cndmask_b32_e64 v71, 0xff800000, v141, s10
	v_cndmask_b32_e64 v72, 0xff800000, v142, s8
	v_cndmask_b32_e64 v73, 0xff800000, v143, s7
	v_cndmask_b32_e64 v135, 0xff800000, v145, s6
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v57, v[41:44]
	ds_store_b128 v57, v[62:65] offset:512
	ds_store_b128 v128, v[45:48]
	ds_store_b128 v128, v[66:69] offset:512
	ds_store_b128 v129, v[49:52]
	ds_store_b128 v129, v[70:73] offset:512
	ds_store_b128 v130, v[53:56]
	ds_store_b128 v130, v[134:137] offset:512
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[138:141], v119 offset:256
	ds_load_b128 v[142:145], v119
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v61, v50, v51, v52
	v_max3_f32 v74, v53, v54, v55
	v_max3_f32 v75, v56, v62, v63
	v_max3_f32 v76, v64, v65, v66
	v_max3_f32 v146, v67, v68, v69
	v_max3_f32 v147, v70, v71, v72
	v_max_f32_e32 v148, v73, v134
.Ltmp4:
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v132
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s69, s69, 64
	.loc	1 681 25                        ; attention.py:681:25
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	s_cmp_lt_i32 s69, s70
	.loc	1 681 25                        ; attention.py:681:25
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	s_waitcnt lgkmcnt(1)
	v_max_f32_e32 v57, v141, v141
	s_waitcnt lgkmcnt(0)
	v_max_f32_e32 v58, v145, v145
	v_max3_f32 v59, v142, v138, v143
	v_max3_f32 v60, v139, v144, v140
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max_f32_e32 v57, v58, v57
	v_max3_f32 v57, v59, v60, v57
	v_max3_f32 v59, v44, v45, v46
	v_max3_f32 v60, v47, v48, v49
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp6:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v58, v57
	v_mov_b32_dpp v58, v58 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v57, v57, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp8:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v58, v57
	v_mov_b32_dpp v58, v58 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v58, v58, v58
	v_max_f32_e32 v57, v57, v58
	v_max_f32_e32 v58, v41, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_max3_f32 v58, v58, v43, v59
	v_max3_f32 v59, v61, v74, v75
.Ltmp10:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_e32 v61, v57
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v74, v76, v146, v147
	v_max3_f32 v75, v148, v135, v149
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_max3_f32 v58, v58, v60, v59
.Ltmp12:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_mov_b32_dpp v61, v61 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v58, v58, v74, v75
	v_max_f32_e32 v59, v61, v61
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp14:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v60, v58, s80, 0xfedcba98 op_sel:[1,0]
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v59, v57, v59
.Ltmp16:
	.loc	1 688 24                        ; attention.py:688:24
	v_max_f32_e32 v57, v133, v133
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v58, v132, v58, v60
	v_max_f32_e32 v75, v80, v80
	v_dual_max_f32 v57, v57, v59 :: v_dual_sub_f32 v60, v132, v58
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_dual_max_f32 v80, v75, v59 :: v_dual_sub_f32 v61, v133, v57
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v146, v46, v58
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v60, v60
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v76, v143, v80
	.loc	1 689 61                        ; attention.py:689:61
	v_exp_f32_e32 v74, v61
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v132, v139, v80
	v_sub_f32_e32 v139, v145, v80
	v_sub_f32_e32 v143, v43, v58
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v76, v76
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v61.h, 0
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v132, v132
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v75, 0, v60, s2
	v_cmp_neq_f32_e64 s2, 0xff800000, v133
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v60, v142, v80
	v_sub_f32_e32 v133, v144, v80
	v_sub_f32_e32 v144, v44, v58
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v139, v139
	.loc	1 689 25 is_stmt 1              ; attention.py:689:25
	v_cndmask_b32_e64 v59, 0, v74, s2
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v74, v138, v80
	v_sub_f32_e32 v138, v140, v80
	v_sub_f32_e32 v140, v141, v80
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v60, v60
	v_exp_f32_e32 v133, v133
	v_exp_f32_e32 v74, v74
	v_exp_f32_e32 v138, v138
	v_exp_f32_e32 v140, v140
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v76, 0, v76, s26
	v_cndmask_b32_e64 v132, 0, v132, s28
	v_cndmask_b32_e64 v139, 0, v139, s24
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v145, v45, v58
	v_sub_f32_e32 v142, v42, v58
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v60, 0, v60, s23
	v_cndmask_b32_e64 v133, 0, v133, s29
	v_cndmask_b32_e64 v74, 0, v74, s25
	v_cndmask_b32_e64 v138, 0, v138, s33
	v_cndmask_b32_e64 v140, 0, v140, s30
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v149, v49, v58
	v_sub_f32_e32 v141, v41, v58
.Ltmp17:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v74
	v_add_f32_e32 v74, v76, v132
	v_add_f32_e32 v76, v133, v138
	v_add_f32_e32 v132, v139, v140
.Ltmp18:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v147, v47, v58
	v_mad_u64_u32 v[41:42], null, s81, s47, v[79:80]
.Ltmp19:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v74
	s_delay_alu instid0(VALU_DEP_4)
	v_add_f32_e32 v74, v76, v132
.Ltmp20:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v132, v136, v58
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v136, v142
	v_exp_f32_e32 v140, v146
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v148, v48, v58 :: v_dual_mul_f32 v25, v25, v75
.Ltmp21:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v74
.Ltmp22:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v151, v51, v58
	v_sub_f32_e32 v74, v134, v58
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v43, v41, s77, 1
.Ltmp23:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v134, v60
.Ltmp24:
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v44, v41, s78, 1
	v_add_lshl_u32 v41, v41, s79, 1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s0
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v136, 0, v136, s43
.Ltmp25:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v134, v134 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp26:
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v45, 0x80000000, v43, s0
	v_cndmask_b32_e64 v49, 0x80000000, v44, s0
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v150, v50, v58 :: v_dual_mul_f32 v27, v27, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp27:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v134
.Ltmp28:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v153, v53, v58
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v53, 0x80000000, v41, s0
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v152, v52, v58 :: v_dual_mul_f32 v29, v29, v75
.Ltmp29:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v146, v60
.Ltmp30:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v154, v54, v58 :: v_dual_mul_f32 v31, v31, v75
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v61.l, v136.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v156, v56, v58
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp31:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v146, v146 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp32:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v76, v135, v58
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v135, v141
	v_exp_f32_e32 v138, v144
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v133, v137, v58
.Ltmp33:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v146
.Ltmp34:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v155, v55, v58
	.loc	1 694 30                        ; attention.py:694:30
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[64:67], 0 offen
	buffer_load_b128 v[45:48], v45, s[64:67], 0 offen
	buffer_load_b128 v[49:52], v49, s[64:67], 0 offen
	buffer_load_b128 v[53:56], v53, s[64:67], 0 offen
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v137, v143
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v63, v63, v58 :: v_dual_mul_f32 v26, v26, v75
.Ltmp35:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_e32 v146, v60
.Ltmp36:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v135, 0, v135, s42
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_dual_sub_f32 v65, v65, v58 :: v_dual_mul_f32 v28, v28, v75
	v_dual_sub_f32 v67, v67, v58 :: v_dual_mul_f32 v30, v30, v75
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_3)
.Ltmp37:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:691:24 ]
	v_mov_b32_dpp v146, v146 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp38:
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v69, v69, v58 :: v_dual_mul_f32 v32, v32, v75
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v139, v145
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v138, s41
.Ltmp39:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v60, v60, v146
.Ltmp40:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e64 v146.l, v135.h
	v_mov_b16_e64 v146.h, v61.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v144, v151
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v151, 1, v61
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v137, s40
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v61.l, v75.h
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v60, v131, v59
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v138, 1, v146
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v62, v62, v58
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v141, v147
	v_exp_f32_e32 v142, v148
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v146, v136, v151, 0x7fff
	v_cmp_o_f32_e64 s2, v136, v136
	v_and_b32_e32 v151, 1, v61
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v139, 0, v139, s39
	v_mov_b32_e32 v131, v60
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v136, v135, v138, 0x7fff
	v_mov_b16_e64 v138.l, v137.h
	v_mov_b16_e64 v138.h, v61.h
	v_cndmask_b16 v146.h, 0x7fff, v146.h, s2
	v_cmp_o_f32_e64 s2, v135, v135
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v134, v149
	v_exp_f32_e32 v143, v150
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v135, 1, v138
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v138, 0, v140, s38
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v140, v75, v151, 0x7fff
	v_mov_b16_e64 v151.l, v139.h
	v_mov_b16_e64 v151.h, v61.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v64, v64, v58
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s23, v75, v75
	v_mov_b16_e64 v61.l, v138.h
	v_cndmask_b16 v146.l, 0x7fff, v136.h, s2
	v_add3_u32 v75, v137, v135, 0x7fff
	v_and_b32_e32 v135, 1, v151
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v141, 0, v141, s37
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v137, v137
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v142, s36
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v71, v71, v58
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v136.h, 0x7fff, v140.h, s23
	v_and_b32_e32 v140, 1, v61
	v_add3_u32 v135, v139, v135, 0x7fff
	v_mov_b16_e64 v142.l, v141.h
	v_mov_b16_e64 v142.h, v61.h
	v_mov_b16_e64 v61.l, v137.h
	v_cmp_o_f32_e64 s24, v139, v139
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v66, v66, v58
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v145, v152
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v140, v138, v140, 0x7fff
	v_cmp_o_f32_e64 s23, v138, v138
	v_cndmask_b16 v136.l, 0x7fff, v75.h, s2
	v_and_b32_e32 v75, 1, v142
	v_and_b32_e32 v139, 1, v61
	v_cndmask_b16 v138.l, 0x7fff, v135.h, s24
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v135, 0, v143, s35
	v_cndmask_b32_e64 v134, 0, v134, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v138.h, 0x7fff, v140.h, s23
	v_add3_u32 v75, v141, v75, 0x7fff
	v_add3_u32 v139, v137, v139, 0x7fff
	v_cmp_o_f32_e64 s2, v137, v137
	v_mov_b16_e64 v61.l, v135.h
	v_cmp_o_f32_e64 s23, v141, v141
	v_mov_b16_e64 v137.l, v134.h
	v_mov_b16_e64 v137.h, v61.h
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 690 62                        ; attention.py:690:62
	v_dual_sub_f32 v73, v73, v58 :: v_dual_and_b32 v140, 1, v61
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v147, v153
	v_exp_f32_e32 v148, v154
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v139.l, 0x7fff, v75.h, s23
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v75, 0, v145, s31
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v137, 1, v137
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v141, 0, v144, s27
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v139.h, 0x7fff, v139.h, s2
	v_add3_u32 v140, v135, v140, 0x7fff
	v_cmp_o_f32_e64 s2, v135, v135
	v_mov_b16_e32 v61.l, v75.h
	v_add3_u32 v135, v134, v137, 0x7fff
	v_mov_b16_e64 v137.l, v141.h
	v_mov_b16_e64 v137.h, v61.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v149, v155
	v_exp_f32_e32 v150, v156
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v140.h, 0x7fff, v140.h, s2
	v_and_b32_e32 v142, 1, v61
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v143, 0, v147, s22
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v134, v134
	v_and_b32_e32 v134, 1, v137
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v137, 0, v148, s21
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v142, v75, v142, 0x7fff
	v_mov_b16_e64 v144.l, v143.h
	v_mov_b16_e64 v144.h, v61.h
	v_cmp_o_f32_e64 s21, v75, v75
	v_mov_b16_e64 v61.l, v137.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v62, v62
	v_exp_f32_e32 v63, v63
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v140.l, 0x7fff, v135.h, s2
	v_add3_u32 v75, v141, v134, 0x7fff
	v_and_b32_e32 v134, 1, v144
	v_cndmask_b16 v135.h, 0x7fff, v142.h, s21
	v_and_b32_e32 v142, 1, v61
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v144, 0, v149, s20
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v141, v141
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v141, 0, v150, s19
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v65, v65
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_add3_u32 v142, v137, v142, 0x7fff
	v_mov_b16_e64 v145.l, v144.h
	v_mov_b16_e64 v145.h, v61.h
	v_cmp_o_f32_e64 s19, v137, v137
	v_mov_b16_e64 v61.l, v141.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v64, v64
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v134, v143, v134, 0x7fff
	v_cmp_o_f32_e64 s20, v143, v143
	v_cndmask_b16 v135.l, 0x7fff, v75.h, s2
	v_and_b32_e32 v75, 1, v145
	v_cndmask_b16 v137.h, 0x7fff, v142.h, s19
	v_and_b32_e32 v142, 1, v61
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v63, 0, v63, s18
	v_cndmask_b32_e64 v62, 0, v62, s17
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v66, v66
	v_exp_f32_e32 v67, v67
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v137.l, 0x7fff, v134.h, s20
	v_add3_u32 v75, v144, v75, 0x7fff
	v_add3_u32 v134, v141, v142, 0x7fff
	v_cmp_o_f32_e64 s2, v141, v141
	v_mov_b16_e32 v61.l, v63.h
	v_cmp_o_f32_e64 s17, v144, v144
	v_mov_b16_e64 v141.l, v62.h
	v_mov_b16_e64 v141.h, v61.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v65, 0, v65, s16
	.loc	1 690 62 is_stmt 0              ; attention.py:690:62
	v_sub_f32_e32 v68, v68, v58
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_and_b32_e32 v142, 1, v61
	v_cndmask_b16 v134.l, 0x7fff, v75.h, s17
	v_and_b32_e32 v75, 1, v141
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v64, 0, v64, s15
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v61.l, v65.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v69, v69
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v134.h, 0x7fff, v134.h, s2
	v_add3_u32 v141, v63, v142, 0x7fff
	v_cmp_o_f32_e64 s2, v63, v63
	v_add3_u32 v63, v62, v75, 0x7fff
	v_mov_b16_e32 v75.l, v64.h
	v_mov_b16_e32 v75.h, v61.h
	v_and_b32_e32 v142, 1, v61
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v66, s14
	v_cndmask_b32_e64 v67, 0, v67, s13
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v68, v68
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v141.h, 0x7fff, v141.h, s2
	v_cmp_o_f32_e64 s2, v62, v62
	v_and_b32_e32 v62, 1, v75
	v_add3_u32 v75, v65, v142, 0x7fff
	v_mov_b16_e64 v142.l, v66.h
	v_mov_b16_e64 v142.h, v61.h
	v_mov_b16_e32 v61.l, v67.h
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v71, v71
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s13, v65, v65
	v_cndmask_b16 v141.l, 0x7fff, v63.h, s2
	v_add3_u32 v62, v64, v62, 0x7fff
	v_and_b32_e32 v63, 1, v142
	v_and_b32_e32 v65, 1, v61
	v_cmp_o_f32_e64 s2, v64, v64
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v64, 0, v69, s11
	v_cndmask_b32_e64 v68, 0, v68, s12
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v63, v66, v63, 0x7fff
	v_add3_u32 v65, v67, v65, 0x7fff
	v_cmp_o_f32_e64 s11, v67, v67
	v_mov_b16_e32 v61.l, v64.h
	v_cmp_o_f32_e64 s12, v66, v66
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v70, v70, v58
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v73, v73
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v156.h, 0x7fff, v65.h, s11
	v_and_b32_e32 v65, 1, v61
	v_cndmask_b16 v156.l, 0x7fff, v63.h, s12
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v63, 0, v71, s10
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v70, v70
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_cndmask_b16 v75.l, 0x7fff, v62.h, s2
	v_add3_u32 v65, v64, v65, 0x7fff
	v_cmp_o_f32_e64 s2, v64, v64
	v_mov_b16_e32 v61.l, v63.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v72, v72, v58
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v73, s7
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v69.l, v68.h
	v_cndmask_b16 v157.h, 0x7fff, v65.h, s2
	v_and_b32_e32 v65, 1, v61
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v70, s9
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s2, v63, v63
	v_mov_b16_e32 v61.l, v67.h
	v_mov_b16_e32 v69.h, v61.h
	v_add3_u32 v65, v63, v65, 0x7fff
	v_mov_b16_e32 v64.l, v66.h
	v_mov_b16_e32 v64.h, v61.h
	v_cmp_o_f32_e64 s9, v68, v68
	v_and_b32_e32 v62, 1, v69
	v_cndmask_b16 v158.h, 0x7fff, v65.h, s2
	v_and_b32_e32 v65, 1, v61
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v74, v74
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v64, 1, v64
	v_add3_u32 v62, v68, v62, 0x7fff
	v_cmp_o_f32_e64 s2, v66, v66
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v72, v72
	v_exp_f32_e32 v132, v132
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v64, v66, v64, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v133, v133
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v157.l, 0x7fff, v62.h, s9
	v_mov_b16_e32 v63.h, v61.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v68, 0, v74, s5
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v158.l, 0x7fff, v64.h, s2
	v_add3_u32 v64, v67, v65, 0x7fff
	v_mov_b16_e32 v65.h, v61.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v62, 0, v72, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v65.l, v68.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v69, 0, v132, s1
	.loc	1 694 30                        ; attention.py:694:30
	v_add_nc_u32_e32 v132, 0, v86
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s1, v67, v67
	v_mov_b16_e32 v63.l, v62.h
	v_and_b32_e32 v65, 1, v65
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v76, v76
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v67, 0, v133, s4
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v71.l, v69.h
	v_mov_b16_e32 v71.h, v61.h
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v132, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v132, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v132, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v132, v[53:56] offset:6144
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v66, 0, v76, s6
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_u16_d16 v41, v118
	ds_load_u16_d16 v42, v118 offset:256
	ds_load_u16_d16 v43, v118 offset:512
	ds_load_u16_d16 v44, v118 offset:768
	ds_load_u16_d16 v45, v118 offset:1024
	ds_load_u16_d16 v46, v118 offset:1280
	ds_load_u16_d16 v47, v118 offset:1536
	ds_load_u16_d16 v48, v118 offset:1792
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v63, 1, v63
	v_mov_b16_e32 v61.l, v66.h
	v_cndmask_b16 v159.h, 0x7fff, v64.h, s1
	v_and_b32_e32 v64, 1, v71
	v_cmp_o_f32_e64 s1, v62, v62
	v_add3_u32 v63, v62, v63, 0x7fff
	v_and_b32_e32 v70, 1, v61
	v_mov_b16_e32 v61.l, v67.h
	v_add3_u32 v62, v68, v65, 0x7fff
	v_cmp_o_f32_e64 s4, v68, v68
	v_add3_u32 v64, v69, v64, 0x7fff
	v_cmp_o_f32_e64 s6, v69, v69
	v_and_b32_e32 v61, 1, v61
	v_add3_u32 v65, v66, v70, 0x7fff
	v_cmp_o_f32_e64 s2, v66, v66
	v_cmp_o_f32_e64 s5, v67, v67
	v_cndmask_b16 v160.l, 0x7fff, v62.h, s4
	v_add3_u32 v61, v67, v61, 0x7fff
	v_cndmask_b16 v161.l, 0x7fff, v64.h, s6
	v_permlanex16_b32 v62, v146, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v64, v136, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v66, v138, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v68, v139, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v69, v140, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v70, v135, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v71, v137, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v72, v134, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v73, v141, s80, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v159.l, 0x7fff, v63.h, s1
	v_cndmask_b16 v160.h, 0x7fff, v65.h, s2
	v_cndmask_b16 v161.h, 0x7fff, v61.h, s5
	v_perm_b32 v61, v62, v146, v116
	v_perm_b32 v62, v62, v146, v117
	v_perm_b32 v63, v64, v136, v116
	v_perm_b32 v64, v64, v136, v117
	v_perm_b32 v65, v66, v138, v116
	v_perm_b32 v66, v66, v138, v117
	v_perm_b32 v67, v68, v139, v116
	v_perm_b32 v68, v68, v139, v117
	v_perm_b32 v49, v69, v140, v116
	v_perm_b32 v50, v69, v140, v117
	v_perm_b32 v51, v70, v135, v116
	v_perm_b32 v52, v70, v135, v117
	v_perm_b32 v53, v71, v137, v116
	v_perm_b32 v54, v71, v137, v117
	v_perm_b32 v55, v72, v134, v116
	v_perm_b32 v56, v72, v134, v117
	v_perm_b32 v69, v73, v141, v116
	v_perm_b32 v70, v73, v141, v117
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v41, v118 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v42, v118 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v43, v118 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v44, v118 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v45, v118 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v46, v118 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v47, v118 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v48, v118 offset:1920
	ds_load_u16_d16 v132, v118 offset:2048
	ds_load_u16_d16 v133, v118 offset:2304
	ds_load_u16_d16 v134, v118 offset:2560
	ds_load_u16_d16 v135, v118 offset:2816
	ds_load_u16_d16 v136, v118 offset:3072
	ds_load_u16_d16 v137, v118 offset:3328
	ds_load_u16_d16 v138, v118 offset:3584
	ds_load_u16_d16 v139, v118 offset:3840
	ds_load_u16_d16 v140, v118 offset:4096
	ds_load_u16_d16 v141, v118 offset:4352
	ds_load_u16_d16 v142, v118 offset:4608
	ds_load_u16_d16 v143, v118 offset:4864
	ds_load_u16_d16 v144, v118 offset:5120
	ds_load_u16_d16 v145, v118 offset:5376
	ds_load_u16_d16 v146, v118 offset:5632
	ds_load_u16_d16 v147, v118 offset:5888
	ds_load_u16_d16 v148, v118 offset:6144
	ds_load_u16_d16 v149, v118 offset:6400
	ds_load_u16_d16 v150, v118 offset:6656
	ds_load_u16_d16 v151, v118 offset:6912
	ds_load_u16_d16 v152, v118 offset:7168
	ds_load_u16_d16 v153, v118 offset:7424
	ds_load_u16_d16 v154, v118 offset:7680
	ds_load_u16_d16 v155, v118 offset:7936
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v75.h, 0x7fff, v75.h, s13
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v132, v118 offset:2176
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v133, v118 offset:2432
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v134, v118 offset:2688
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v135, v118 offset:2944
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v136, v118 offset:3200
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v137, v118 offset:3456
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v138, v118 offset:3712
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v139, v118 offset:3968
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v140, v118 offset:4224
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v141, v118 offset:4480
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v142, v118 offset:4736
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v143, v118 offset:4992
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v144, v118 offset:5248
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v145, v118 offset:5504
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v146, v118 offset:5760
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v147, v118 offset:6016
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v148, v118 offset:6272
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v149, v118 offset:6528
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v150, v118 offset:6784
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v151, v118 offset:7040
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v152, v118 offset:7296
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v153, v118 offset:7552
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v154, v118 offset:7808
	s_waitcnt lgkmcnt(23)
	ds_load_u16_d16_hi v155, v118 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v74, v75, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v76, v156, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v162, v157, s80, 0xfedcba98 op_sel:[1,0]
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	v_wmma_f32_16x16x16_bf16 v[25:32], v[41:48], v[61:68], v[25:32]
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v163, v158, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v164, v159, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v165, v160, s80, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v166, v161, s80, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v71, v74, v75, v116
	v_perm_b32 v72, v74, v75, v117
	v_perm_b32 v73, v76, v156, v116
	v_perm_b32 v74, v76, v156, v117
	v_perm_b32 v75, v162, v157, v116
	v_perm_b32 v76, v162, v157, v117
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(16)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[132:139], v[49:56], v[25:32]
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v41, v163, v158, v116
	v_perm_b32 v42, v163, v158, v117
	v_perm_b32 v43, v164, v159, v116
	v_perm_b32 v44, v164, v159, v117
	v_perm_b32 v45, v165, v160, v116
	v_perm_b32 v46, v165, v160, v117
	v_perm_b32 v47, v166, v161, v116
	v_perm_b32 v48, v166, v161, v117
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[140:147], v[69:76], v[25:32]
	v_dual_mov_b32 v132, v58 :: v_dual_mov_b32 v133, v57
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_wmma_f32_16x16x16_bf16 v[25:32], v[148:155], v[41:48], v[25:32]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_scc0 .LBB0_20
.LBB0_3:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s81, s69, s71
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v157, s55 :: v_dual_mov_b32 v156, s54
	.loc	1 657 32                        ; attention.py:657:32
	v_mad_u64_u32 v[41:42], null, s81, s46, v[78:79]
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v155, s53 :: v_dual_mov_b32 v154, s52
	v_dual_mov_b32 v153, s51 :: v_dual_mov_b32 v152, s50
	v_dual_mov_b32 v151, s49 :: v_dual_mov_b32 v150, s48
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	.loc	1 658 32                        ; attention.py:658:32
	v_add_lshl_u32 v43, v41, s73, 1
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v44, v41, s74, 1
	v_add_lshl_u32 v41, v41, s75, 1
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v73, s69, v77
	.loc	1 658 32                        ; attention.py:658:32
	v_dual_cndmask_b32 v45, 0x80000000, v43 :: v_dual_cndmask_b32 v42, 0x80000000, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e32 v49, 0x80000000, v44, vcc_lo
	v_cndmask_b32_e32 v53, 0x80000000, v41, vcc_lo
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[60:63], 0 offen
	buffer_load_b128 v[45:48], v45, s[60:63], 0 offen
	buffer_load_b128 v[49:52], v49, s[60:63], 0 offen
	buffer_load_b128 v[53:56], v53, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v73, v95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v73, v96
	v_mov_b16_e32 v73.l, 0
	.loc	1 674 25                        ; attention.py:674:25
	s_add_i32 s4, s76, s69
	.loc	1 658 32                        ; attention.py:658:32
	s_waitcnt vmcnt(3)
	ds_store_b128 v87, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v87, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v87, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v87, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v103
	ds_load_b128 v[41:44], v104
	ds_load_b128 v[49:52], v104 offset:2048
	ds_load_b128 v[53:56], v103 offset:2048
	ds_load_b128 v[138:141], v103 offset:4096
	ds_load_b128 v[134:137], v104 offset:4096
	ds_load_b128 v[142:145], v104 offset:6144
	ds_load_b128 v[146:149], v103 offset:6144
	ds_load_b128 v[158:161], v102
	ds_load_b128 v[166:169], v102 offset:2048
	ds_load_b128 v[162:165], v101
	ds_load_b128 v[170:173], v101 offset:2048
	v_mov_b16_e32 v73.h, v73.l
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	s_and_b32 s10, s44, s1
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(10)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[41:48], v[33:40], v[150:157]
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[49:56], v[33:40], v[150:157]
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[134:141], v[33:40], v[150:157]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[33:40], v[150:157]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[134:137], v102 offset:4096
	ds_load_b128 v[142:145], v102 offset:6144
	ds_load_b128 v[138:141], v101 offset:4096
	ds_load_b128 v[146:149], v101 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[158:165], v[17:24], v[65:72]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[150:153], v100
	ds_load_b128 v[158:161], v100 offset:2048
	ds_load_b128 v[154:157], v99
	ds_load_b128 v[162:165], v99 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(8)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[166:173], v[17:24], v[57:64]
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[134:141], v[17:24], v[49:56]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[17:24], v[41:48]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[134:137], v100 offset:4096
	ds_load_b128 v[142:145], v100 offset:6144
	ds_load_b128 v[138:141], v99 offset:4096
	ds_load_b128 v[146:149], v99 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(5)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[150:157], v[9:16], v[65:72]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[158:165], v[9:16], v[57:64]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[150:153], v98
	ds_load_b128 v[158:161], v98 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[134:141], v[9:16], v[49:56]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[9:16], v[41:48]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[134:137], v98 offset:4096
	ds_load_b128 v[142:145], v98 offset:6144
	ds_load_b128 v[154:157], v97
	ds_load_b128 v[162:165], v97 offset:2048
	ds_load_b128 v[138:141], v97 offset:4096
	ds_load_b128 v[146:149], v97 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(3)
	v_wmma_f32_16x16x16_bf16 v[65:72], v[150:157], v[1:8], v[65:72]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[57:64], v[158:165], v[1:8], v[57:64]
	s_waitcnt lgkmcnt(1)
	v_wmma_f32_16x16x16_bf16 v[49:56], v[134:141], v[1:8], v[49:56]
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[41:48], v[142:149], v[1:8], v[41:48]
	.loc	1 681 34                        ; attention.py:681:34
	s_and_saveexec_b32 s2, s10
	s_cbranch_execz .LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v74, s4, v114
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_ashrrev_i32_e32 v75, 31, v74
	v_add_co_u32 v74, s1, s58, v74
	v_add_co_ci_u32_e64 v75, null, s59, v75, s1
	.loc	1 681 34                        ; attention.py:681:34
	global_load_d16_hi_u8 v73, v[74:75], off
.LBB0_5:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v74, s69, v88
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v74, v95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v74, v96
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_and_b32 s11, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s11
	s_cbranch_execz .LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v74, s4, v105
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v75, 31, v74
	v_add_co_u32 v74, s1, s58, v74
	v_add_co_ci_u32_e64 v75, null, s59, v75, s1
	global_load_d16_u8 v73, v[74:75], off
.LBB0_7:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v75, s69, v89
	v_mov_b16_e32 v74.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v75, v95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v75, v96
	v_mov_b16_e32 v74.h, v74.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s12, s44, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s12
	s_cbranch_execz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, s4, v106
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s1, s58, v75
	v_add_co_ci_u32_e64 v76, null, s59, v76, s1
	global_load_d16_hi_u8 v74, v[75:76], off
.LBB0_9:                                ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v75, s69, v90
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v75, v95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v75, v96
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_and_b32 s13, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s13
	s_cbranch_execz .LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v75, s4, v107
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v76, 31, v75
	v_add_co_u32 v75, s1, s58, v75
	v_add_co_ci_u32_e64 v76, null, s59, v76, s1
	global_load_d16_u8 v74, v[75:76], off
.LBB0_11:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v76, s69, v91
	v_mov_b16_e32 v75.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v76, v95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v76, v96
	v_mov_b16_e32 v75.h, v75.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s14, s44, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s14
	s_cbranch_execz .LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, s4, v108
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v135, 31, v76
	v_add_co_u32 v134, s1, s58, v76
	v_add_co_ci_u32_e64 v135, null, s59, v135, s1
	global_load_d16_hi_u8 v75, v[134:135], off
.LBB0_13:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v76, s69, v92
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v76, v95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v76, v96
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_and_b32 s15, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s15
	s_cbranch_execz .LBB0_15
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v76, s4, v109
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v135, 31, v76
	v_add_co_u32 v134, s1, s58, v76
	v_add_co_ci_u32_e64 v135, null, s59, v135, s1
	global_load_d16_u8 v75, v[134:135], off
.LBB0_15:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v134, s69, v93
	v_mov_b16_e32 v76.l, 0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v134, v95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v134, v96
	v_mov_b16_e32 v76.h, v76.l
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s16, s44, s1
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s16
	s_cbranch_execz .LBB0_17
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v134, s4, v112
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v135, 31, v134
	v_add_co_u32 v134, s1, s58, v134
	v_add_co_ci_u32_e64 v135, null, s59, v135, s1
	global_load_d16_hi_u8 v76, v[134:135], off
.LBB0_17:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34                          ; attention.py:0:34
	s_or_b32 exec_lo, exec_lo, s2
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v134, s69, v94
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s1, v134, v95
	.loc	1 671 30                        ; attention.py:671:30
	v_cmp_le_i32_e64 s2, v134, v96
	.loc	1 671 21 is_stmt 0              ; attention.py:671:21
	s_and_b32 s1, s1, s2
	s_and_b32 s17, s44, s1
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 681 34 is_stmt 1              ; attention.py:681:34
	s_and_saveexec_b32 s2, s17
	s_cbranch_execz .LBB0_2
; %bb.18:                               ;   in Loop: Header=BB0_3 Depth=1
	.loc	1 0 34 is_stmt 0                ; attention.py:0:34
	v_add_nc_u32_e32 v134, s4, v113
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 681 34                        ; attention.py:681:34
	v_ashrrev_i32_e32 v135, 31, v134
	v_add_co_u32 v134, s1, s58, v134
	v_add_co_ci_u32_e64 v135, null, s59, v135, s1
	global_load_d16_u8 v76, v[134:135], off
	s_branch .LBB0_2
.LBB0_19:
	.loc	1 0 34                          ; attention.py:0:34
	v_dual_mov_b32 v32, 0 :: v_dual_mov_b32 v57, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v31, v32
	v_mov_b32_e32 v30, v32
	v_mov_b32_e32 v29, v32
	v_mov_b32_e32 v28, v32
	v_mov_b32_e32 v27, v32
	v_mov_b32_e32 v26, v32
	v_mov_b32_e32 v25, v32
	v_mov_b32_e32 v60, v32
.LBB0_20:                               ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v84
	s_mov_b32 s1, 0x76543210
.Ltmp41:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
.Ltmp42:
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s68, s68, s3
	.loc	1 825 17                        ; attention.py:825:17
	v_cndmask_b32_e32 v1, 0xff800000, v57, vcc_lo
	.loc	1 828 36                        ; attention.py:828:36
	v_dual_cndmask_b32 v3, 0, v60 :: v_dual_and_b32 v4, 12, v82
	.loc	1 830 26                        ; attention.py:830:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v85
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s47, 2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_permlanex16_b32 v2, v1, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp44:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_permlanex16_b32 v5, v3, s1, 0xfedcba98 op_sel:[1,0]
.Ltmp45:
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s45, s68
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_max_f32 v1, v1, v1
.Ltmp47:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v7, 0, v25 :: v_dual_add_nc_u32 v4, 0, v4
.Ltmp48:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v5
.Ltmp49:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v9, 0, v27, vcc_lo
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp50:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v2 :: v_dual_and_b32 v2, 12, v84
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v5, v7 :: v_dual_cndmask_b32 v8, 0, v26
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp52:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp53:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v2
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v12, v9
.Ltmp55:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp56:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp57:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v11, v8
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v7, v5
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v12, v12 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp60:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v10
.Ltmp61:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp63:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v14, 0, v31 :: v_dual_max_f32 v1, v1, v6
.Ltmp64:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp65:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	ds_store_b32 v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v4
.Ltmp66:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b32 v2, v3
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v2, v4
.Ltmp67:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v9, v12 :: v_dual_add_f32 v3, v8, v11
.Ltmp68:
	.loc	1 830 17                        ; attention.py:830:17
	v_cndmask_b32_e32 v11, 0, v28, vcc_lo
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v13, 0, v30 :: v_dual_mov_b32 v8, v4
.Ltmp71:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v7, v3 :: v_dual_cndmask_b32 v12, 0, v29
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v6, v1 :: v_dual_mov_b32 v17, v12
.Ltmp74:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_add_f32 v3, v3, v7
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v9, v5 :: v_dual_mov_b32 v16, v4
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp78:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v15, 0, v32 :: v_dual_mov_b32 v10, v3
.Ltmp79:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v6, v6, v6
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v1, v1, v1
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
.Ltmp83:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	s_waitcnt lgkmcnt(0)
	v_dual_add_f32 v4, v4, v16 :: v_dual_mov_b32 v7, v2
.Ltmp84:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v8, v1, v6
.Ltmp85:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v1, v5, v9 :: v_dual_mov_b32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp86:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp87:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp88:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v3, v10 :: v_dual_mov_b32 v10, v8
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v2, v7
.Ltmp91:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
.Ltmp92:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_mov_b32 v9, v7
.Ltmp93:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp94:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v14, v14, v19
	v_add_f32_e32 v13, v13, v18
.Ltmp95:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp97:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp98:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v15, v20 :: v_dual_mov_b32 v18, v13
.Ltmp99:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp100:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v13, v13, v18 :: v_dual_add_f32 v12, v12, v17
.Ltmp101:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp102:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add_f32_e32 v16, v15, v20
.Ltmp103:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp104:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v15, v11
.Ltmp105:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v19, v14
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp106:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v15
.Ltmp107:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp108:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v15, v14, v19 :: v_dual_mov_b32 v14, v11
.Ltmp109:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp110:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v13, v13, v18
	v_add_f32_e32 v17, v16, v20
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp111:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v12
	v_dual_mov_b32 v18, v13 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v20, v17
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp112:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_22
; %bb.21:
.Ltmp113:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp114:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp115:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp116:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp117:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp118:
	.loc	1 833 13                        ; attention.py:833:13
	s_add_u32 s4, s56, s4
	s_addc_u32 s5, s57, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_22:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
.Ltmp119:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v8, v13, v18 :: v_dual_add_f32 v7, v12, v16
	v_dual_add_f32 v13, v4, v6 :: v_dual_add_f32 v12, v3, v5
.Ltmp120:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v3, 0xc0, v82
.Ltmp121:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v11, v14
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xe0, v81
.Ltmp122:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v1, 28, v81
	v_and_b32_e32 v2, 32, v83
	v_add_nc_u32_e32 v3, 0, v3
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_add_nc_u32_e32 v4, 0, v4
.Ltmp123:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
.Ltmp124:
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	v_add3_u32 v1, v3, v2, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s47, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s57, s57, 0xffff
	s_mov_b32 s59, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s58, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[56:59], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp125:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 152
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
		.amdhsa_next_free_vgpr 174
		.amdhsa_next_free_sgpr 82
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_vgpr, 174
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.numbered_sgpr, 82
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 9596
; TotalNumSgprs: 84
; NumVgprs: 174
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 21
; NumSGPRsForWavesPerEU: 84
; NumVGPRsForWavesPerEU: 174
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
	.byte	1                               ; Abbrev [1] 0xb:0xbd DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x97 DW_TAG_subprogram
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
	.byte	4                               ; Abbrev [4] 0x76:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	824                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x83:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x90:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	828                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x9d:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xab:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	829                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xb8:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
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
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
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
        .size:           1
        .value_kind:     by_value
      - .offset:         117
        .size:           1
        .value_kind:     by_value
      - .offset:         120
        .size:           4
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         136
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         144
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 152
    .max_flat_workgroup_size: 128
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     84
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_bool_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     174
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
