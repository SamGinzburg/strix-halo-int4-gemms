	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4,@function
amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4:                                 ; @amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 502 0                         ; attention.py:502:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b32 s54, s[0:1], 0x60
	s_load_b64 s[42:43], s[0:1], 0x58
.Ltmp0:
	.loc	1 559 27 prologue_end           ; attention.py:559:27
	s_abs_i32 s7, s2
	.loc	1 570 31                        ; attention.py:570:31
	v_lshrrev_b32_e32 v18, 3, v0
	s_clause 0x1
	s_load_b64 s[52:53], s[0:1], 0x40
	s_load_b64 s[56:57], s[0:1], 0x0
	s_mov_b32 s59, 0x31027000
	s_mov_b32 s58, 0x7ffffffe
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v61, 4, v0
	.loc	1 570 31                        ; attention.py:570:31
	v_and_b32_e32 v62, 15, v0
	s_mov_b32 s44, 0
	.loc	1 609 32                        ; attention.py:609:32
	s_waitcnt lgkmcnt(0)
	s_abs_i32 s4, s54
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s8, s2, s54
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_f32_u32 s5, s4
	s_sub_i32 s6, 0, s4
	.loc	1 559 27                        ; attention.py:559:27
	s_ashr_i32 s8, s8, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 609 32                        ; attention.py:609:32
	v_rcp_iflag_f32_e32 v1, s5
	v_readfirstlane_b32 s5, v1
	.loc	1 598 79                        ; attention.py:598:79
	v_and_b32_e32 v1, 7, v0
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_f32 s5, s5, 0x4f7ffffe
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 598 79                        ; attention.py:598:79
	v_lshlrev_b32_e32 v17, 3, v1
	.loc	1 609 32                        ; attention.py:609:32
	s_cvt_u32_f32 s5, s5
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(SALU_CYCLE_2)
	.loc	1 598 26                        ; attention.py:598:26
	v_mad_u64_u32 v[57:58], null, s42, v18, v[17:18]
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_i32 s6, s6, s5
	.loc	1 601 61                        ; attention.py:601:61
	v_cmp_gt_i32_e64 s36, s42, v17
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s6, s5, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s5, s5, s6
	.loc	1 559 27                        ; attention.py:559:27
	s_mul_hi_u32 s6, s7, s5
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s9, s6, s4
	s_sub_i32 s7, s7, s9
	s_add_i32 s9, s6, 1
	s_sub_i32 s10, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s6, s9, s6
	s_cselect_b32 s7, s10, s7
	s_add_i32 s9, s6, 1
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s6, s9, s6
	.loc	1 599 26                        ; attention.py:599:26
	s_and_b32 s57, s57, 0xffff
	.loc	1 559 27                        ; attention.py:559:27
	s_xor_b32 s6, s6, s8
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s6, s6, s8
	s_clause 0x1
	s_load_b64 s[8:9], s[0:1], 0x7c
	s_load_b32 s11, s[0:1], 0x84
	.loc	1 564 19                        ; attention.py:564:19
	s_lshl_b32 s10, s6, 4
	.loc	1 560 27                        ; attention.py:560:27
	s_mul_i32 s6, s6, s54
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s10, v18
	.loc	1 598 26                        ; attention.py:598:26
	s_add_i32 s7, s10, s3
	.loc	1 560 27                        ; attention.py:560:27
	s_sub_i32 s41, s2, s6
	.loc	1 598 26                        ; attention.py:598:26
	s_mul_i32 s7, s7, s42
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e32 vcc_lo, 1, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_add_lshl_u32 v2, s7, v57, 1
	.loc	1 0 0 is_stmt 0                 ; attention.py:0
	s_add_i32 s7, s54, 31
	.loc	1 609 32 is_stmt 1              ; attention.py:609:32
	s_xor_b32 s12, s7, s54
	.loc	1 601 22                        ; attention.py:601:22
	s_and_b32 vcc_lo, s36, vcc_lo
	.loc	1 609 32                        ; attention.py:609:32
	s_abs_i32 s7, s7
	.loc	1 599 26                        ; attention.py:599:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 609 32                        ; attention.py:609:32
	s_mul_hi_u32 s5, s7, s5
	s_ashr_i32 s12, s12, 31
	s_mul_i32 s13, s5, s4
	s_add_i32 s14, s5, 1
	.loc	1 599 26                        ; attention.py:599:26
	buffer_load_b128 v[2:5], v2, s[56:59], 0 offen
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s7, s7, s13
	s_delay_alu instid0(SALU_CYCLE_1)
	s_sub_i32 s2, s7, s4
	s_cmp_ge_u32 s7, s4
	s_cselect_b32 s5, s14, s5
	s_cselect_b32 s2, s2, s7
	s_add_i32 s6, s5, 1
	s_cmp_ge_u32 s2, s4
	s_cselect_b32 s2, s6, s5
	.loc	1 616 17                        ; attention.py:616:17
	s_waitcnt lgkmcnt(0)
	s_add_i32 s5, s11, s10
	.loc	1 609 32                        ; attention.py:609:32
	s_xor_b32 s2, s2, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s5, s5, 16
	.loc	1 609 32                        ; attention.py:609:32
	s_sub_i32 s2, s2, s12
	.loc	1 616 17                        ; attention.py:616:17
	s_add_i32 s6, s5, s9
	.loc	1 621 25                        ; attention.py:621:25
	s_min_i32 s5, s5, 0x800
	.loc	1 614 25                        ; attention.py:614:25
	s_min_i32 s6, s6, 0x800
	.loc	1 622 35                        ; attention.py:622:35
	s_add_i32 s5, s5, 63
	.loc	1 619 35                        ; attention.py:619:35
	s_add_i32 s6, s6, 63
	.loc	1 622 34                        ; attention.py:622:34
	s_ashr_i32 s12, s5, 31
	.loc	1 610 18                        ; attention.py:610:18
	s_mul_i32 s7, s41, s2
	.loc	1 622 34                        ; attention.py:622:34
	s_lshr_b32 s12, s12, 26
	.loc	1 613 39                        ; attention.py:613:39
	s_sub_i32 s4, s11, s8
	.loc	1 622 34                        ; attention.py:622:34
	s_add_i32 s5, s5, s12
	.loc	1 619 34                        ; attention.py:619:34
	s_ashr_i32 s12, s6, 31
	.loc	1 622 33                        ; attention.py:622:33
	s_and_not1_b32 s5, s5, 63
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 622 18 is_stmt 0              ; attention.py:622:18
	v_dual_mov_b32 v7, s5 :: v_dual_lshlrev_b32 v60, 1, v0
	.loc	1 619 34 is_stmt 1              ; attention.py:619:34
	s_lshr_b32 s12, s12, 26
	.loc	1 611 33                        ; attention.py:611:33
	s_lshl_b32 s2, s2, 6
	.loc	1 610 18                        ; attention.py:610:18
	s_lshl_b32 s7, s7, 6
	.loc	1 619 34                        ; attention.py:619:34
	s_add_i32 s5, s6, s12
	.loc	1 599 26                        ; attention.py:599:26
	v_and_b32_e32 v6, 0x70, v60
	.loc	1 613 39                        ; attention.py:613:39
	s_add_i32 s4, s4, s10
	.loc	1 611 33                        ; attention.py:611:33
	s_add_i32 s2, s7, s2
	.loc	1 619 33                        ; attention.py:619:33
	s_and_not1_b32 s5, s5, 63
	.loc	1 613 25                        ; attention.py:613:25
	s_max_i32 s4, s4, 0
	.loc	1 622 18                        ; attention.py:622:18
	v_min3_i32 v63, s2, s5, v7
	.loc	1 618 33                        ; attention.py:618:33
	s_and_b32 s2, s4, 0x7fffffc0
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v6, v61, v6
	.loc	1 618 18                        ; attention.py:618:18
	s_max_i32 s55, s7, s2
	s_delay_alu instid0(VALU_DEP_2) | instid1(SALU_CYCLE_1)
	.loc	1 629 13                        ; attention.py:629:13
	v_cmp_ge_i32_e32 vcc_lo, s55, v63
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 599 26                        ; attention.py:599:26
	v_add_nc_u32_e32 v64, 0, v6
	.loc	1 629 13                        ; attention.py:629:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 599 26                        ; attention.py:599:26
	s_waitcnt vmcnt(0)
	ds_store_b128 v64, v[2:5]
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 629 13                        ; attention.py:629:13
	s_cbranch_vccnz .LBB0_3
; %bb.1:                                ; %.lr.ph
	.loc	1 599 26                        ; attention.py:599:26
	v_lshlrev_b32_e32 v1, 4, v1
	.loc	1 570 21                        ; attention.py:570:21
	v_or_b32_e32 v2, s10, v62
	s_clause 0x1
	s_load_b32 s2, s[0:1], 0x64
	s_load_b128 s[4:7], s[0:1], 0x8
	.loc	1 696 65                        ; attention.py:696:65
	v_cmp_gt_i32_e64 s1, s43, v17
	.loc	1 629 13                        ; attention.py:629:13
	v_mad_u64_u32 v[58:59], null, s43, v18, v[17:18]
	.loc	1 599 26                        ; attention.py:599:26
	v_lshl_or_b32 v20, v62, 7, v1
	.loc	1 601 23                        ; attention.py:601:23
	v_cmp_gt_i32_e64 s0, 1, v2
	.loc	1 571 21                        ; attention.py:571:21
	v_lshrrev_b32_e32 v19, 4, v0
	v_bfe_u32 v65, v0, 4, 1
	.loc	1 656 32                        ; attention.py:656:32
	s_lshl_b32 s64, s3, 11
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v23, 32, v20
	v_xor_b32_e32 v22, 16, v20
	v_xor_b32_e32 v4, 0x60, v20
	v_xor_b32_e32 v24, 48, v20
	s_delay_alu instid0(VALU_DEP_4)
	v_dual_mov_b32 v17, 0 :: v_dual_add_nc_u32 v72, 0, v23
	v_and_b32_e32 v25, 16, v0
	.loc	1 573 27                        ; attention.py:573:27
	v_add_nc_u32_e32 v21, s11, v2
	.loc	1 599 26                        ; attention.py:599:26
	v_xor_b32_e32 v2, 0x70, v20
	v_xor_b32_e32 v3, 0x50, v20
	v_dual_mov_b32 v23, 0x7632 :: v_dual_add_nc_u32 v68, 0, v4
	v_dual_mov_b32 v80, v17 :: v_dual_add_nc_u32 v73, 0, v22
	v_mov_b32_e32 v22, 0x5410
	v_cmp_eq_u32_e32 vcc_lo, 0, v25
	v_xor_b32_e32 v1, 64, v20
	v_add_nc_u32_e32 v67, 0, v2
	v_add_nc_u32_e32 v69, 0, v3
	v_add_nc_u32_e32 v71, 0, v24
	v_add_nc_u32_e32 v74, 0, v20
	v_cndmask_b32_e32 v20, 0x1054, v22, vcc_lo
	v_dual_cndmask_b32 v22, 0x3276, v23 :: v_dual_lshlrev_b32 v23, 1, v62
	v_and_b32_e32 v24, 0x60, v0
	v_dual_mov_b32 v59, 0xff800000 :: v_dual_add_nc_u32 v70, 0, v1
	ds_load_b128 v[5:8], v67
	ds_load_b128 v[1:4], v68
	ds_load_b128 v[13:16], v69
	ds_load_b128 v[9:12], v70
	v_lshl_or_b32 v20, v20, 8, v20
	v_lshl_or_b32 v22, v22, 8, v22
	v_add3_u32 v77, 0, v23, v24
	.loc	1 629 13                        ; attention.py:629:13
	v_or_b32_e32 v78, 62, v19
	v_mov_b32_e32 v19, v17
	.loc	1 599 26                        ; attention.py:599:26
	ds_load_b128 v[37:40], v73
	ds_load_b128 v[33:36], v74
	v_mov_b32_e32 v24, v17
	ds_load_b128 v[29:32], v71
	ds_load_b128 v[25:28], v72
	v_and_b32_e32 v20, 0x540054, v20
	v_dual_mov_b32 v23, v17 :: v_dual_and_b32 v22, 0x760076, v22
	v_dual_mov_b32 v18, v17 :: v_dual_add_nc_u32 v41, s9, v21
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_lshl_or_b32 v20, v20, 4, v20
	v_lshl_or_b32 v22, v22, 4, v22
	.loc	1 670 47                        ; attention.py:670:47
	v_subrev_nc_u32_e32 v66, s8, v21
	.loc	1 664 27                        ; attention.py:664:27
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s65, s2, 0x3fb8aa3b
	s_and_b32 s5, s5, 0xffff
	v_and_b32_e32 v75, 0x5040504, v20
	v_and_b32_e32 v76, 0x7060706, v22
	v_mov_b32_e32 v20, v17
	v_min_i32_e32 v79, v21, v41
	v_mov_b32_e32 v21, v17
	v_mov_b32_e32 v22, v17
	s_lshl_b32 s66, s42, 4
	s_lshl_b32 s67, s42, 5
	s_mul_i32 s68, s42, 48
	s_lshl_b32 s69, s43, 4
	s_lshl_b32 s70, s43, 5
	s_mul_i32 s71, s43, 48
	s_and_b32 s61, s7, 0xffff
	s_mov_b32 s56, s4
	s_mov_b32 s57, s5
	s_mov_b32 s45, s44
	s_mov_b32 s46, s44
	s_mov_b32 s47, s44
	s_mov_b32 s48, s44
	s_mov_b32 s49, s44
	s_mov_b32 s50, s44
	s_mov_b32 s51, s44
	s_mov_b32 s72, 0x76543210
	s_mov_b32 s60, s6
	s_mov_b32 s62, s58
	s_mov_b32 s63, s59
.LBB0_2:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 657 32                        ; attention.py:657:32
	s_add_i32 s2, s55, s64
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v104, s51 :: v_dual_mov_b32 v101, s48
	.loc	1 657 32                        ; attention.py:657:32
	v_mad_u64_u32 v[41:42], null, s2, s42, v[57:58]
	.loc	1 663 30                        ; attention.py:663:30
	v_dual_mov_b32 v102, s49 :: v_dual_mov_b32 v99, s46
	v_dual_mov_b32 v100, s47 :: v_dual_mov_b32 v97, s44
	v_dual_mov_b32 v98, s45 :: v_dual_mov_b32 v103, s50
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	.loc	1 658 32                        ; attention.py:658:32
	v_lshlrev_b32_e32 v42, 1, v41
	v_add_lshl_u32 v43, v41, s66, 1
	v_add_lshl_u32 v44, v41, s67, 1
	v_add_lshl_u32 v41, v41, s68, 1
	v_cndmask_b32_e64 v42, 0x80000000, v42, s36
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v45, 0x80000000, v43, s36
	v_cndmask_b32_e64 v49, 0x80000000, v44, s36
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v53, 0x80000000, v41, s36
	s_clause 0x3
	buffer_load_b128 v[41:44], v42, s[56:59], 0 offen
	buffer_load_b128 v[45:48], v45, s[56:59], 0 offen
	buffer_load_b128 v[49:52], v49, s[56:59], 0 offen
	buffer_load_b128 v[53:56], v53, s[56:59], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt vmcnt(3)
	ds_store_b128 v64, v[41:44]
	s_waitcnt vmcnt(2)
	ds_store_b128 v64, v[45:48] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v64, v[49:52] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v64, v[53:56] offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b128 v[45:48], v73
	ds_load_b128 v[41:44], v74
	ds_load_b128 v[49:52], v74 offset:2048
	ds_load_b128 v[53:56], v73 offset:2048
	ds_load_b128 v[85:88], v73 offset:4096
	ds_load_b128 v[81:84], v74 offset:4096
	ds_load_b128 v[89:92], v74 offset:6144
	ds_load_b128 v[93:96], v73 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[41:48], v[33:40], v[97:104]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[45:48], v71
	ds_load_b128 v[41:44], v72
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(6)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[49:56], v[33:40], v[97:104]
	s_waitcnt lgkmcnt(4)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[81:88], v[33:40], v[97:104]
	s_waitcnt lgkmcnt(2)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[89:96], v[33:40], v[97:104]
	v_mad_u64_u32 v[97:98], null, s2, s43, v[58:59]
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 694 30                        ; attention.py:694:30
	v_add_lshl_u32 v99, v97, s69, 1
	v_add_lshl_u32 v100, v97, s70, 1
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[41:48], v[25:32], v[105:112]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[41:44], v72 offset:2048
	ds_load_b128 v[45:48], v71 offset:2048
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v101, 0x80000000, v99, s1
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[41:48], v[25:32], v[113:120]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[45:48], v71 offset:4096
	ds_load_b128 v[41:44], v72 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[41:48], v[25:32], v[121:128]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[41:44], v72 offset:6144
	ds_load_b128 v[45:48], v71 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[41:48], v[25:32], v[129:136]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[45:48], v69
	ds_load_b128 v[41:44], v70
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[41:48], v[9:16], v[105:112]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[41:44], v70 offset:2048
	ds_load_b128 v[45:48], v69 offset:2048
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[41:48], v[9:16], v[113:120]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[45:48], v69 offset:4096
	ds_load_b128 v[41:44], v70 offset:4096
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[41:48], v[9:16], v[121:128]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[41:44], v70 offset:6144
	ds_load_b128 v[45:48], v69 offset:6144
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[41:48], v[9:16], v[129:136]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[45:48], v67
	ds_load_b128 v[41:44], v68
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[105:112], v[41:48], v[1:8], v[105:112]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[41:44], v68 offset:2048
	ds_load_b128 v[45:48], v67 offset:2048
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v51, s65, v105
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v105, 0x80000000, v100, s1
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v50, s65, v108 :: v_dual_mul_f32 v53, s65, v109
	v_dual_mul_f32 v52, s65, v106 :: v_dual_mul_f32 v49, s65, v107
	v_mul_f32_e32 v54, s65, v110
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[113:120], v[41:48], v[1:8], v[113:120]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[45:48], v67 offset:4096
	ds_load_b128 v[41:44], v68 offset:4096
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v56, s65, v115 :: v_dual_mul_f32 v83, s65, v118
	v_dual_mul_f32 v82, s65, v117 :: v_dual_mul_f32 v85, s65, v120
	v_mul_f32_e32 v55, s65, v114
	v_mul_f32_e32 v81, s65, v116
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[121:128], v[41:48], v[1:8], v[121:128]
	.loc	1 658 32                        ; attention.py:658:32
	ds_load_b128 v[41:44], v68 offset:6144
	ds_load_b128 v[45:48], v67 offset:6144
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v84, s65, v119 :: v_dual_mul_f32 v87, s65, v122
	v_dual_mul_f32 v86, s65, v121 :: v_dual_mul_f32 v89, s65, v124
	v_dual_mul_f32 v88, s65, v123 :: v_dual_mul_f32 v91, s65, v126
	v_dual_mul_f32 v90, s65, v125 :: v_dual_mul_f32 v93, s65, v128
	.loc	1 663 30                        ; attention.py:663:30
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[129:136], v[41:48], v[1:8], v[129:136]
	.loc	1 664 17                        ; attention.py:664:17
	v_mul_f32_e32 v92, s65, v127
	v_dual_mul_f32 v46, s65, v111 :: v_dual_mul_f32 v47, s65, v112
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_dual_mul_f32 v48, s65, v113 :: v_dual_mul_f32 v95, s65, v130
	.loc	1 694 30                        ; attention.py:694:30
	v_lshlrev_b32_e32 v98, 1, v97
	v_add_lshl_u32 v97, v97, s71, 1
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v44, s65, v135 :: v_dual_add_nc_u32 v113, 0, v61
	v_dual_mul_f32 v94, s65, v129 :: v_dual_mul_f32 v41, s65, v132
	.loc	1 694 30                        ; attention.py:694:30
	v_cndmask_b32_e64 v98, 0x80000000, v98, s1
	s_delay_alu instid0(VALU_DEP_4)
	v_cndmask_b32_e64 v109, 0x80000000, v97, s1
	s_clause 0x3
	buffer_load_b128 v[97:100], v98, s[60:63], 0 offen
	buffer_load_b128 v[101:104], v101, s[60:63], 0 offen
	buffer_load_b128 v[105:108], v105, s[60:63], 0 offen
	buffer_load_b128 v[109:112], v109, s[60:63], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 664 17                        ; attention.py:664:17
	v_dual_mul_f32 v96, s65, v131 :: v_dual_mul_f32 v43, s65, v133
	v_dual_mul_f32 v42, s65, v134 :: v_dual_mul_f32 v45, s65, v136
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt vmcnt(3)
	ds_store_b128 v113, v[97:100]
	s_waitcnt vmcnt(2)
	ds_store_b128 v113, v[101:104] offset:2048
	s_waitcnt vmcnt(1)
	ds_store_b128 v113, v[105:108] offset:4096
	s_waitcnt vmcnt(0)
	ds_store_b128 v113, v[109:112] offset:6144
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v97, s55, v65
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v108.h, 0
	.loc	1 694 30                        ; attention.py:694:30
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v98, 52, v97
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s34, v97, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s39, v79, v97
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e32 vcc_lo, v98, v66
	.loc	1 670 21                        ; attention.py:670:21
	v_cmp_ge_i32_e64 s2, v79, v98
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v98, 50, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s34, s39, s34
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	s_and_b32 s34, s0, s34
	s_and_b32 s2, s2, vcc_lo
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s4, v98, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s5, v79, v98
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v98, 48, v97
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v51, 0xff800000, v51, s34
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s5, s4
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s6, v98, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s7, v79, v98
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v98, 46, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 vcc_lo, s0, s4
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e32 v95, 0xff800000, v95, vcc_lo
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s5, s7, s6
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s8, v98, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s9, v79, v98
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v98, 44, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s4, s0, s5
	s_and_b32 s5, s0, s2
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v94, 0xff800000, v94, s4
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s9, s8
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s10, v98, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s11, v79, v98
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v98, 42, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s6, s0, s6
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v96, 0xff800000, v96, s5
	v_cndmask_b32_e64 v93, 0xff800000, v93, s6
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s11, s10
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s12, v98, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s13, v79, v98
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v98, 40, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s7, s0, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v92, 0xff800000, v92, s7
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s13, s12
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s14, v98, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s15, v79, v98
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v98, 38, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s8, s0, s8
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v91, 0xff800000, v91, s8
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s15, s14
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s16, v98, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s17, v79, v98
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v98, 36, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s9, s0, s9
.Ltmp1:
	.file	2 "<triton>/python/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v99, v91, v92, v93
.Ltmp2:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v90, 0xff800000, v90, s9
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s10, s17, s16
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s18, v98, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s19, v79, v98
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s10, s0, s10
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v98, v94, v95, v96
.Ltmp4:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v89, 0xff800000, v89, s10
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s11, s19, s18
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s11, s0, s11
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v88, 0xff800000, v88, s11
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v100, v88, v89, v90
	v_max3_f32 v98, v100, v99, v98
.Ltmp6:
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v99, 34, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s12, v79, v99
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 32, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s12, s2
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s13, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s14, v79, v99
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 30, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s12, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v87, 0xff800000, v87, s12
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s13, s14, s13
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s15, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s16, v79, v99
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 28, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s13, s0, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v86, 0xff800000, v86, s13
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s16, s15
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s17, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s18, v79, v99
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 26, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s14, s0, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v85, 0xff800000, v85, s14
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s15, s18, s17
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s20, v79, v99
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 24, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s15, s0, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v84, 0xff800000, v84, s15
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s16, s20, s19
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s22, v79, v99
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 22, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s16, s0, s16
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v83, 0xff800000, v83, s16
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s17, s22, s21
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s23, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s24, v79, v99
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 20, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s18, s0, s17
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v82, 0xff800000, v82, s18
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s19, s24, s23
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s25, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s26, v79, v99
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v99, 18, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s23, s0, s19
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v100, 0xff800000, v81, s23
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s20, s26, s25
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s27, v99, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s28, v79, v99
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s24, s0, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(SALU_CYCLE_1)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v99, 0xff800000, v56, s24
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v56, v82, v83, v84
.Ltmp8:
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s21, s28, s27
	s_and_b32 s25, s0, s21
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v101, 0xff800000, v55, s25
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v55, v85, v86, v87
	v_max3_f32 v81, v101, v99, v100
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_max3_f32 v55, v81, v56, v55
.Ltmp10:
	.loc	1 630 31                        ; attention.py:630:31
	v_or_b32_e32 v56, 2, v97
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v56, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s17, v79, v56
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v56, 16, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s17, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v56, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s20, v79, v56
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v56, 14, v97
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v56, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s22, v79, v56
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v56, 12, v97
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s26, v56, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s27, v79, v56
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v56, 10, v97
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s28, v56, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s29, v79, v56
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v56, 8, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s17, s29, s28
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s30, v56, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s31, v79, v56
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v56, 6, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s28, s0, s17
	s_and_b32 s17, s22, s21
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v54, 0xff800000, v54, s28
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s29, s31, s30
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s33, v56, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s35, v79, v56
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v56, 4, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s30, s0, s29
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v53, 0xff800000, v53, s30
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s31, s35, s33
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s37, v56, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s38, v79, v56
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s35, s0, s2
	s_and_b32 s31, s0, s31
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v52, 0xff800000, v52, s35
	v_cndmask_b32_e64 v50, 0xff800000, v50, s31
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s33, s38, s37
	s_and_b32 s2, s20, s19
	s_and_b32 s19, s27, s26
	s_and_b32 s33, s0, s33
	s_and_b32 s27, s0, s17
	s_and_b32 s26, s0, s2
	s_and_b32 s29, s0, s19
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v49, 0xff800000, v49, s33
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max_f32_e32 v56, v51, v52
	v_max3_f32 v81, v50, v53, v54
.Ltmp12:
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v102, 0xff800000, v48, s26
	v_cndmask_b32_e64 v48, 0xff800000, v46, s29
	v_cndmask_b32_e64 v47, 0xff800000, v47, s27
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_max3_f32 v56, v56, v49, v81
	v_max3_f32 v46, v48, v47, v102
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_max3_f32 v46, v56, v46, v55
	v_or_b32_e32 v55, s55, v78
.Ltmp14:
	.loc	1 629 13                        ; attention.py:629:13
	s_add_i32 s55, s55, 64
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s2, v55, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s17, v79, v55
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v55, 60, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s2, s17, s2
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_1)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s19, v55, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s20, v79, v55
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v55, 58, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s17, s0, s2
	s_and_b32 s2, s20, s19
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s21, v55, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s22, v79, v55
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v55, 56, v97
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s19, s0, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v103, 0xff800000, v44, s19
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s20, s22, s21
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s37, v55, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s38, v79, v55
	.loc	1 630 31 is_stmt 1              ; attention.py:630:31
	v_or_b32_e32 v55, 54, v97
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v97, 0xff800000, v45, s17
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s20, s0, s20
	s_and_b32 s21, s38, s37
	s_delay_alu instid0(VALU_DEP_2)
	.loc	1 670 30                        ; attention.py:670:30
	v_cmp_ge_i32_e64 s39, v55, v66
	.loc	1 670 21 is_stmt 0              ; attention.py:670:21
	v_cmp_ge_i32_e64 s40, v79, v55
	.loc	1 671 21 is_stmt 1              ; attention.py:671:21
	s_and_b32 s21, s0, s21
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v106, 0xff800000, v42, s20
	v_cndmask_b32_e64 v104, 0xff800000, v43, s21
	v_mov_b32_e32 v55, v59
	.loc	1 671 21                        ; attention.py:671:21
	s_and_b32 s22, s40, s39
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_and_b32 s22, s0, s22
	.loc	1 686 26                        ; attention.py:686:26
	v_cndmask_b32_e64 v105, 0xff800000, v41, s22
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:687:29 ] ]
	v_dual_max_f32 v41, v103, v97 :: v_dual_max_f32 v42, v105, v104
	v_max3_f32 v41, v42, v106, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_max3_f32 v41, v46, v98, v41
.Ltmp16:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:687:29 ]
	v_permlanex16_b32 v42, v41, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp17:
	.loc	1 688 24                        ; attention.py:688:24
	v_max3_f32 v59, v55, v41, v42
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v52, v59
	v_sub_f32_e32 v44, v50, v59
	v_sub_f32_e32 v46, v54, v59
	v_sub_f32_e32 v47, v47, v59
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v47, v47
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v98, 0, v41, s35
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v41.h, v108.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v42, v51, v59
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v110, 0, v44, s31
	v_cndmask_b32_e64 v112, 0, v46, s28
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v108.l, v98.h
	v_cmp_o_f32_e64 s2, v98, v98
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(SKIP_1) | instid1(TRANS32_DEP_1)
	.loc	1 690 33 is_stmt 0              ; attention.py:690:33
	v_cndmask_b32_e64 v114, 0, v47, s27
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v47.h, v108.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v107, 0, v42, s34
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v42, 1, v108
	v_mov_b16_e32 v108.l, v110.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v41.l, v107.h
	v_cmp_o_f32_e64 s34, v107, v107
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_add3_u32 v42, v98, v42, 0x7fff
	v_and_b32_e32 v44, 1, v108
	v_mov_b16_e32 v108.l, v112.h
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b16 v42.h, 0x7fff, v42.h, s2
	v_cmp_o_f32_e64 s2, v110, v110
	v_add3_u32 v44, v110, v44, 0x7fff
	v_add3_u32 v41, v107, v41, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v44.h, 0x7fff, v44.h, s2
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s34
	v_cmp_o_f32_e64 s2, v112, v112
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v42, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v43, v42, v75
	v_perm_b32 v42, v43, v42, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v49, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v109, 0, v43, s33
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v43.h, v108.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v109.h
	v_cmp_o_f32_e64 s31, v109, v109
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v109, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s31
	v_permlanex16_b32 v45, v44, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v75
	v_perm_b32 v44, v45, v44, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v53, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v111, 0, v45, s30
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v45.h, v108.h
	v_mov_b16_e32 v45.l, v111.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s28, v111, v111
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v111, v45, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s28
	v_and_b32_e32 v45, 1, v108
	v_mov_b16_e32 v108.l, v114.h
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v48, v48, v59
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v45, v112, v45, 0x7fff
	.loc	1 690 49                        ; attention.py:690:49
	v_exp_f32_e32 v48, v48
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v46.h, 0x7fff, v45.h, s2
	v_cmp_o_f32_e64 s2, v114, v114
	v_permlanex16_b32 v49, v46, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v113, 0, v48, s29
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v45, v49, v46, v75
	v_perm_b32 v46, v49, v46, v76
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v47.l, v113.h
	v_cmp_o_f32_e64 s27, v113, v113
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v113, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s27
	v_and_b32_e32 v47, 1, v108
	v_add3_u32 v47, v114, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v48.h, 0x7fff, v47.h, s2
	.loc	1 689 25                        ; attention.py:689:25
	v_cmp_neq_f32_e64 s2, 0xff800000, v55
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v49, v48, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v47, v49, v48, v75
	v_perm_b32 v48, v49, v48, v76
	.loc	1 689 74                        ; attention.py:689:74
	v_sub_f32_e32 v49, v55, v59
	.loc	1 689 61 is_stmt 0              ; attention.py:689:61
	v_exp_f32_e32 v49, v49
	s_delay_alu instid0(TRANS32_DEP_1)
	.loc	1 689 25                        ; attention.py:689:25
	v_cndmask_b32_e64 v81, 0, v49, s2
	.loc	1 694 30 is_stmt 1              ; attention.py:694:30
	ds_load_u16_d16 v49, v77
	ds_load_u16_d16 v50, v77 offset:256
	ds_load_u16_d16 v51, v77 offset:512
	ds_load_u16_d16 v52, v77 offset:768
	ds_load_u16_d16 v53, v77 offset:1024
	ds_load_u16_d16 v54, v77 offset:1280
	ds_load_u16_d16 v55, v77 offset:1536
	ds_load_u16_d16 v56, v77 offset:1792
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v49, v77 offset:128
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v50, v77 offset:384
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v77 offset:640
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v77 offset:896
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v77 offset:1152
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v77 offset:1408
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v77 offset:1664
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v77 offset:1920
	.loc	1 699 23                        ; attention.py:699:23
	v_mul_f32_e32 v17, v17, v81
	v_mul_f32_e32 v18, v18, v81
	v_mul_f32_e32 v19, v19, v81
	v_mul_f32_e32 v20, v20, v81
	v_mul_f32_e32 v21, v21, v81
	v_mul_f32_e32 v22, v22, v81
	v_mul_f32_e32 v23, v23, v81
	v_mul_f32_e32 v24, v24, v81
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[41:48], v[17:24]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v102, v59
	v_sub_f32_e32 v42, v101, v59
	v_sub_f32_e32 v48, v85, v59
	v_sub_f32_e32 v44, v100, v59
	v_sub_f32_e32 v46, v83, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v48, v48
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v46, v46
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v101, 0, v41, s26
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v41.h, v108.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v102, 0, v42, s25
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v85, 0, v48, s14
	v_cndmask_b32_e64 v100, 0, v44, s23
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v41.l, v101.h
	v_cmp_o_f32_e64 s25, v101, v101
	v_mov_b16_e32 v108.l, v102.h
	v_cmp_o_f32_e64 s2, v102, v102
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v83, 0, v46, s16
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v41
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v101, v41, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s25
	v_and_b32_e32 v41, 1, v108
	v_mov_b16_e32 v108.l, v100.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v102, v41, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v41.h, s2
	v_cmp_o_f32_e64 s2, v100, v100
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v42, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v43, v42, v75
	v_perm_b32 v42, v43, v42, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v99, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v99, 0, v43, s24
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v43.h, v108.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v99.h
	v_cmp_o_f32_e64 s23, v99, v99
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v99, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s23
	v_and_b32_e32 v43, 1, v108
	v_mov_b16_e32 v108.l, v83.h
	v_add3_u32 v43, v100, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v44.h, 0x7fff, v43.h, s2
	v_cmp_o_f32_e64 s2, v83, v83
	v_permlanex16_b32 v45, v44, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v75
	v_perm_b32 v44, v45, v44, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v82, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v45, s18
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v45.h, v108.h
	v_mov_b16_e32 v45.l, v82.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s16, v82, v82
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v82, v45, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s16
	v_and_b32_e32 v45, 1, v108
	v_mov_b16_e32 v108.l, v85.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v83, v45, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v45.h, s2
	v_cmp_o_f32_e64 s2, v85, v85
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v75
	v_perm_b32 v46, v47, v46, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v84, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v84, 0, v47, s15
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v47.h, v108.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v47.l, v84.h
	v_cmp_o_f32_e64 s14, v84, v84
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v84, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s14
	v_and_b32_e32 v47, 1, v108
	v_add3_u32 v47, v85, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.h, 0x7fff, v47.h, s2
	v_permlanex16_b32 v49, v48, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v47, v49, v48, v75
	v_perm_b32 v48, v49, v48, v76
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v49, v77 offset:2048
	ds_load_u16_d16 v50, v77 offset:2304
	ds_load_u16_d16 v51, v77 offset:2560
	ds_load_u16_d16 v52, v77 offset:2816
	ds_load_u16_d16 v53, v77 offset:3072
	ds_load_u16_d16 v54, v77 offset:3328
	ds_load_u16_d16 v55, v77 offset:3584
	ds_load_u16_d16 v56, v77 offset:3840
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v49, v77 offset:2176
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v50, v77 offset:2432
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v77 offset:2688
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v77 offset:2944
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v77 offset:3200
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v77 offset:3456
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v77 offset:3712
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v77 offset:3968
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[41:48], v[17:24]
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v41, v86, v59
	v_sub_f32_e32 v42, v87, v59
	v_sub_f32_e32 v44, v89, v59
	v_sub_f32_e32 v46, v91, v59
	v_sub_f32_e32 v48, v93, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v41, v41
	v_exp_f32_e32 v42, v42
	v_exp_f32_e32 v44, v44
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v48, v48
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v86, 0, v41, s13
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v41.h, v108.h
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v87, 0, v42, s12
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_cndmask_b32_e64 v89, 0, v44, s10
	v_cndmask_b32_e64 v91, 0, v46, s8
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v41.l, v86.h
	v_cmp_o_f32_e64 s2, v86, v86
	v_mov_b16_e32 v108.l, v87.h
	v_cmp_o_f32_e64 s12, v87, v87
	v_cmp_o_f32_e64 s10, v89, v89
	v_and_b32_e32 v41, 1, v41
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v93, 0, v48, s6
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v41, v86, v41, 0x7fff
	v_cndmask_b16 v42.l, 0x7fff, v41.h, s2
	v_and_b32_e32 v41, 1, v108
	v_mov_b16_e32 v108.l, v89.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v41, v87, v41, 0x7fff
	v_cndmask_b16 v42.h, 0x7fff, v41.h, s12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v43, v42, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v41, v43, v42, v75
	v_perm_b32 v42, v43, v42, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v43, v88, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v43, v43
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v88, 0, v43, s11
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v43.h, v108.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v43.l, v88.h
	v_cmp_o_f32_e64 s2, v88, v88
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v43, v88, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_3)
	v_cndmask_b16 v44.l, 0x7fff, v43.h, s2
	v_and_b32_e32 v43, 1, v108
	v_mov_b16_e32 v108.l, v91.h
	v_cmp_o_f32_e64 s2, v91, v91
	v_add3_u32 v43, v89, v43, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v44.h, 0x7fff, v43.h, s10
	v_permlanex16_b32 v45, v44, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v43, v45, v44, v75
	v_perm_b32 v44, v45, v44, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v45, v90, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v45, v45
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v90, 0, v45, s9
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v45.h, v108.h
	v_mov_b16_e32 v45.l, v90.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s8, v90, v90
	v_and_b32_e32 v45, 1, v45
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v90, v45, 0x7fff
	v_cndmask_b16 v46.l, 0x7fff, v45.h, s8
	v_and_b32_e32 v45, 1, v108
	v_mov_b16_e32 v108.l, v93.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v45, v91, v45, 0x7fff
	v_cndmask_b16 v46.h, 0x7fff, v45.h, s2
	v_cmp_o_f32_e64 s2, v93, v93
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v47, v46, s72, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v45, v47, v46, v75
	v_perm_b32 v46, v47, v46, v76
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v47, v92, v59
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v47, v47
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v92, 0, v47, s7
	.loc	1 700 30 is_stmt 1              ; attention.py:700:30
	v_mov_b16_e32 v47.h, v108.h
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v47.l, v92.h
	v_cmp_o_f32_e64 s6, v92, v92
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v47, 1, v47
	v_add3_u32 v47, v92, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.l, 0x7fff, v47.h, s6
	v_and_b32_e32 v47, 1, v108
	v_add3_u32 v47, v93, v47, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v48.h, 0x7fff, v47.h, s2
	v_permlanex16_b32 v49, v48, s72, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v47, v49, v48, v75
	v_perm_b32 v48, v49, v48, v76
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v49, v77 offset:4096
	ds_load_u16_d16 v50, v77 offset:4352
	ds_load_u16_d16 v51, v77 offset:4608
	ds_load_u16_d16 v52, v77 offset:4864
	ds_load_u16_d16 v53, v77 offset:5120
	ds_load_u16_d16 v54, v77 offset:5376
	ds_load_u16_d16 v55, v77 offset:5632
	ds_load_u16_d16 v56, v77 offset:5888
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v49, v77 offset:4224
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v50, v77 offset:4480
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v77 offset:4736
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v77 offset:4992
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v77 offset:5248
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v77 offset:5504
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v77 offset:5760
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v77 offset:6016
	.loc	1 700 23                        ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[41:48], v[17:24]
.Ltmp18:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v47, v82, v83 :: v_dual_add_f32 v48, v84, v85
	v_dual_add_f32 v42, v109, v110 :: v_dual_add_f32 v43, v111, v112
	v_add_f32_e32 v44, v113, v114
	v_dual_add_f32 v45, v101, v102 :: v_dual_add_f32 v46, v99, v100
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_4)
	v_add_f32_e32 v47, v47, v48
	v_add_f32_e32 v41, v107, v98
.Ltmp19:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v53, v95, v59
	v_sub_f32_e32 v54, v96, v59
	v_sub_f32_e32 v55, v105, v59
	v_dual_sub_f32 v56, v104, v59 :: v_dual_add_f32 v41, v41, v42
.Ltmp20:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v42, v43, v44
	v_add_f32_e32 v44, v45, v46
.Ltmp21:
	.loc	1 690 62                        ; attention.py:690:62
	v_sub_f32_e32 v46, v94, v59
	v_sub_f32_e32 v82, v106, v59
	v_sub_f32_e32 v83, v103, v59
	v_sub_f32_e32 v84, v97, v59
	.loc	1 690 49 is_stmt 0              ; attention.py:690:49
	v_exp_f32_e32 v53, v53
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v55, v55
	v_exp_f32_e32 v54, v54
	v_exp_f32_e32 v82, v82
	v_exp_f32_e32 v56, v56
	v_exp_f32_e32 v84, v84
	v_exp_f32_e32 v83, v83
.Ltmp22:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v49, v86, v87 :: v_dual_add_f32 v50, v88, v89
.Ltmp23:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e32 v53, 0, v53, vcc_lo
	v_cndmask_b32_e64 v46, 0, v46, s4
	v_cndmask_b32_e64 v55, 0, v55, s22
	v_cndmask_b32_e64 v54, 0, v54, s5
.Ltmp24:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v51, v90, v91 :: v_dual_add_f32 v52, v92, v93
.Ltmp25:
	.loc	1 690 33                        ; attention.py:690:33
	v_cndmask_b32_e64 v82, 0, v82, s20
	v_cndmask_b32_e64 v56, 0, v56, s21
	v_cndmask_b32_e64 v84, 0, v84, s17
	v_cndmask_b32_e64 v83, 0, v83, s19
.Ltmp26:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v48, v46, v53 :: v_dual_add_f32 v49, v49, v50
	v_dual_add_f32 v50, v54, v55 :: v_dual_add_f32 v51, v51, v52
	v_add_f32_e32 v52, v56, v82
	v_add_f32_e32 v41, v41, v42
.Ltmp27:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.h, v108.h
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp28:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v48, v48, v50
	v_add_f32_e32 v50, v83, v84
.Ltmp29:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v42.l, v83.h
.Ltmp30:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v44, v44, v47
	v_add_f32_e32 v47, v49, v51
.Ltmp31:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v45.h, v108.h
.Ltmp32:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v50, v52, v50
.Ltmp33:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v42, 1, v42
	v_mov_b16_e32 v45.l, v54.h
.Ltmp34:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v41, v41, v44
.Ltmp35:
	.loc	1 700 30                        ; attention.py:700:30
	v_mov_b16_e32 v108.l, v53.h
.Ltmp36:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v48, v48, v50
.Ltmp37:
	.loc	1 700 30                        ; attention.py:700:30
	v_add3_u32 v49, v83, v42, 0x7fff
	v_mov_b16_e32 v43.h, v108.h
	v_mov_b16_e32 v43.l, v46.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
.Ltmp38:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_dual_add_f32 v42, v47, v48 :: v_dual_and_b32 v45, 1, v45
.Ltmp39:
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s5, v54, v54
	v_cmp_o_f32_e32 vcc_lo, v53, v53
	v_and_b32_e32 v43, 1, v43
	s_delay_alu instid0(VALU_DEP_4)
	v_add3_u32 v45, v54, v45, 0x7fff
.Ltmp40:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v47, v41, v42
.Ltmp41:
	.loc	1 700 30                        ; attention.py:700:30
	v_and_b32_e32 v41, 1, v108
	v_mov_b16_e32 v108.l, v55.h
	v_cmp_o_f32_e64 s2, v46, v46
	v_add3_u32 v43, v46, v43, 0x7fff
	v_cndmask_b16 v44.l, 0x7fff, v45.h, s5
	v_add3_u32 v41, v53, v41, 0x7fff
	v_and_b32_e32 v42, 1, v108
	v_mov_b16_e32 v108.l, v82.h
	v_mov_b16_e32 v52.h, v108.h
	v_mov_b16_e32 v52.l, v56.h
	v_cndmask_b16 v43.l, 0x7fff, v43.h, s2
	v_cndmask_b16 v43.h, 0x7fff, v41.h, vcc_lo
	v_and_b32_e32 v45, 1, v108
	v_mov_b16_e32 v108.l, v84.h
	v_and_b32_e32 v52, 1, v52
	v_cmp_o_f32_e64 s4, v55, v55
	v_cmp_o_f32_e64 s7, v56, v56
	v_add3_u32 v42, v55, v42, 0x7fff
	v_and_b32_e32 v41, 1, v108
	v_add3_u32 v46, v56, v52, 0x7fff
	v_cmp_o_f32_e64 s6, v82, v82
	v_cmp_o_f32_e64 s8, v84, v84
	v_cndmask_b16 v44.h, 0x7fff, v42.h, s4
	v_add3_u32 v50, v84, v41, 0x7fff
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16 v49, v77 offset:6144
	ds_load_u16_d16 v50, v77 offset:6400
	ds_load_u16_d16 v51, v77 offset:6656
	ds_load_u16_d16 v52, v77 offset:6912
	ds_load_u16_d16 v53, v77 offset:7168
	ds_load_u16_d16 v54, v77 offset:7424
	ds_load_u16_d16 v55, v77 offset:7680
	ds_load_u16_d16 v56, v77 offset:7936
	.loc	1 700 30                        ; attention.py:700:30
	v_cmp_o_f32_e64 s9, v83, v83
	v_add3_u32 v42, v82, v45, 0x7fff
	v_permlanex16_b32 v45, v43, s72, 0xfedcba98 op_sel:[1,0]
	v_permlanex16_b32 v48, v44, s72, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v46.l, 0x7fff, v46.h, s7
.Ltmp42:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:691:24 ]
	v_permlanex16_b32 v83, v47, s72, 0xfedcba98 op_sel:[1,0]
.Ltmp43:
	.loc	1 700 30                        ; attention.py:700:30
	v_cndmask_b16 v46.h, 0x7fff, v42.h, s6
	v_perm_b32 v41, v45, v43, v75
	v_perm_b32 v42, v45, v43, v76
	v_perm_b32 v43, v48, v44, v75
	v_perm_b32 v44, v48, v44, v76
	s_waitcnt lgkmcnt(7)
	v_cndmask_b16 v48.l, 0x7fff, v49.h, s9
	s_waitcnt lgkmcnt(6)
	v_cndmask_b16 v48.h, 0x7fff, v50.h, s8
	.loc	1 694 30                        ; attention.py:694:30
	ds_load_u16_d16_hi v49, v77 offset:6272
	ds_load_u16_d16_hi v50, v77 offset:6528
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v51, v77 offset:6784
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v52, v77 offset:7040
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v53, v77 offset:7296
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v54, v77 offset:7552
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v55, v77 offset:7808
	s_waitcnt lgkmcnt(7)
	ds_load_u16_d16_hi v56, v77 offset:8064
	.loc	1 700 30                        ; attention.py:700:30
	v_permlanex16_b32 v82, v46, s72, 0xfedcba98 op_sel:[1,0]
	v_mov_b32_e32 v84, v80
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:691:24 ] ]
	v_add_f32_e32 v80, v47, v83
.Ltmp45:
	.loc	1 629 13                        ; attention.py:629:13
	v_cmp_lt_i32_e32 vcc_lo, s55, v63
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_4) | instid1(VALU_DEP_2)
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v45, v82, v46, v75
	v_perm_b32 v46, v82, v46, v76
	v_permlanex16_b32 v82, v48, s72, 0xfedcba98 op_sel:[1,0]
	.loc	1 701 23                        ; attention.py:701:23
	v_fmac_f32_e32 v80, v84, v81
	.loc	1 629 13                        ; attention.py:629:13
	s_and_b32 vcc_lo, exec_lo, vcc_lo
	.loc	1 700 30                        ; attention.py:700:30
	v_perm_b32 v47, v82, v48, v75
	v_perm_b32 v48, v82, v48, v76
	.loc	1 700 23 is_stmt 0              ; attention.py:700:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[17:24], v[49:56], v[41:48], v[17:24]
	.loc	1 629 13 is_stmt 1              ; attention.py:629:13
	s_cbranch_vccnz .LBB0_2
	s_branch .LBB0_4
.LBB0_3:
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	v_dual_mov_b32 v24, 0 :: v_dual_mov_b32 v59, 0xff800000
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v23, v24
	v_mov_b32_e32 v22, v24
	v_mov_b32_e32 v21, v24
	v_mov_b32_e32 v20, v24
	v_mov_b32_e32 v19, v24
	v_mov_b32_e32 v18, v24
	v_mov_b32_e32 v17, v24
	v_mov_b32_e32 v80, v24
.LBB0_4:                                ; %._crit_edge
	.loc	1 825 26 is_stmt 1              ; attention.py:825:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v62
	.loc	1 822 31                        ; attention.py:822:31
	s_mul_i32 s54, s54, s3
	.loc	1 821 32                        ; attention.py:821:32
	s_add_i32 s0, s43, 2
	.loc	1 822 31                        ; attention.py:822:31
	s_add_i32 s1, s41, s54
	.loc	1 833 13                        ; attention.py:833:13
	s_mov_b32 s2, exec_lo
	.loc	1 825 17                        ; attention.py:825:17
	v_dual_cndmask_b32 v1, 0xff800000, v59 :: v_dual_cndmask_b32 v4, 0, v17
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v5, 0, v18 :: v_dual_cndmask_b32 v12, 0, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_3) | instid1(VALU_DEP_4)
	v_dual_cndmask_b32 v13, 0, v22 :: v_dual_mov_b32 v2, v1
	.loc	1 828 36                        ; attention.py:828:36
	v_cndmask_b32_e32 v3, 0, v80, vcc_lo
.Ltmp46:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v1, v1, v1 :: v_dual_cndmask_b32 v6, 0, v19
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v8, v4
.Ltmp48:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp49:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v7, v3
.Ltmp50:
	.loc	1 830 17                        ; attention.py:830:17
	v_dual_cndmask_b32 v11, 0, v20 :: v_dual_cndmask_b32 v14, 0, v23
.Ltmp51:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v2, v2, v2 :: v_dual_cndmask_b32 v15, 0, v24
.Ltmp53:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v9, v5
.Ltmp54:
	.loc	1 822 30                        ; attention.py:822:30
	s_mul_i32 s0, s1, s0
.Ltmp55:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v4, v4, v8 :: v_dual_max_f32 v1, v1, v2
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v2, v6
.Ltmp57:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_e32 v19, v14
	v_mov_b32_dpp v2, v2 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp59:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v3, v3, v7
.Ltmp60:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v7, v4
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp61:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v2, v6, v2
.Ltmp62:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v3
.Ltmp63:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v1
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v5, v5, v9
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp66:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp67:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_2)
.Ltmp68:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v10, v10
.Ltmp69:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v2
	v_mov_b32_e32 v8, v5
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp70:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v1, v9
.Ltmp71:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v1, v3, v6
.Ltmp72:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp73:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v3, v4, v7 :: v_dual_add_f32 v2, v2, v10
.Ltmp74:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v6, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v4, v5, v8
.Ltmp76:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_dual_mov_b32 v5, v9 :: v_dual_mov_b32 v8, v3
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v2
.Ltmp79:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp80:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v10, v4
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp81:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v7, v1, v6
.Ltmp82:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v16, v16 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp83:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v5, v5, v5
.Ltmp84:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
.Ltmp85:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v9, v9, v5
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v1, v3, v8
	v_dual_add_f32 v3, v4, v10 :: v_dual_add_f32 v4, v2, v16
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v16, v11
.Ltmp88:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_e32 v8, v7
.Ltmp89:
	.loc	2 191 16 is_stmt 1              ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_e32 v10, v9
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp90:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v2, v1 :: v_dual_mov_b32 v5, v3
	v_mov_b32_dpp v16, v16 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_e32 v6, v4
.Ltmp91:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:828:29 ]
	v_mov_b32_dpp v8, v8 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp92:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp93:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp94:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp95:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:824:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp96:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp97:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v13, v13, v18
.Ltmp98:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp99:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v15, v15, v20
	v_dual_add_f32 v14, v14, v19 :: v_dual_mov_b32 v17, v12
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp100:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v11 :: v_dual_mov_b32 v19, v14
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v15
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp101:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v16
.Ltmp102:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp103:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v12, v12, v17 :: v_dual_add_f32 v17, v14, v19
.Ltmp104:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp105:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v16, v13, v18 :: v_dual_mov_b32 v13, v11
.Ltmp106:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v14, v12 :: v_dual_mov_b32 v19, v17
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v13, v13 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v14, v14 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v19, v19 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp107:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v11, v11, v13
	v_dual_add_f32 v18, v15, v20 :: v_dual_mov_b32 v15, v16
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v13, v12, v14 :: v_dual_mov_b32 v12, v11
.Ltmp108:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_mov_b32_e32 v20, v18
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp109:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_add_f32_e32 v14, v16, v15
	v_add_f32_e32 v15, v17, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp110:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:829:29 ]
	v_dual_mov_b32 v16, v13 :: v_dual_add_f32 v17, v18, v20
	v_dual_mov_b32 v18, v14 :: v_dual_mov_b32 v19, v15
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v16, v16 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v20, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp111:
	.loc	1 833 13                        ; attention.py:833:13
	v_cmpx_eq_u32_e32 0, v0
	s_cbranch_execz .LBB0_6
; %bb.5:
.Ltmp112:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v9, v9, v9
.Ltmp113:
	.loc	1 833 13                        ; attention.py:833:13
	s_ashr_i32 s1, s0, 31
.Ltmp114:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:828:29 ] ]
	v_add_f32_e32 v8, v7, v8
.Ltmp115:
	.loc	1 833 13                        ; attention.py:833:13
	s_lshl_b64 s[4:5], s[0:1], 2
	s_delay_alu instid0(VALU_DEP_2)
.Ltmp116:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:824:29 ] ]
	v_max_f32_e32 v7, v9, v10
.Ltmp117:
	.loc	1 833 13                        ; attention.py:833:13
	v_mov_b32_e32 v9, 0
	s_add_u32 s4, s52, s4
	s_addc_u32 s5, s53, s5
	.loc	1 834 13                        ; attention.py:834:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_6:                                ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s2
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_4)
.Ltmp118:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:829:29 ] ]
	v_dual_add_f32 v10, v17, v20 :: v_dual_add_f32 v9, v15, v19
	v_dual_add_f32 v8, v14, v18 :: v_dual_lshlrev_b32 v15, 2, v0
	v_add_f32_e32 v7, v13, v16
	v_dual_add_f32 v14, v11, v12 :: v_dual_add_f32 v13, v4, v6
	v_dual_add_f32 v12, v3, v5 :: v_dual_lshlrev_b32 v3, 5, v0
	v_dual_add_f32 v11, v1, v2 :: v_dual_and_b32 v4, 0xc0, v15
.Ltmp119:
	.loc	1 835 13                        ; attention.py:835:13
	v_and_b32_e32 v5, 0xe0, v60
	v_and_b32_e32 v1, 28, v60
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_and_b32_e32 v2, 32, v3
	v_add_nc_u32_e32 v3, 0, v4
	s_waitcnt lgkmcnt(0)
	v_add_nc_u32_e32 v4, 0, v5
	.loc	1 571 21                        ; attention.py:571:21
	v_and_b32_e32 v5, 63, v0
	.loc	1 835 13                        ; attention.py:835:13
	s_barrier
	v_add3_u32 v1, v3, v2, v1
	ds_store_b128 v4, v[11:14]
	ds_store_b128 v4, v[7:10] offset:16
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_b32 v1, v1
	v_and_b32_e32 v0, 64, v0
	.loc	1 836 17                        ; attention.py:836:17
	v_add_nc_u32_e32 v2, s0, v5
	.loc	1 838 22                        ; attention.py:838:22
	v_cmp_gt_i32_e32 vcc_lo, s43, v5
	.loc	1 835 13                        ; attention.py:835:13
	s_and_b32 s53, s53, 0xffff
	s_mov_b32 s55, 0x31027000
	v_cmp_eq_u32_e64 s0, 0, v0
	v_lshl_add_u32 v0, v2, 2, 8
	s_mov_b32 s54, 0x7ffffffe
	s_and_b32 vcc_lo, s0, vcc_lo
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v0, 0x80000000, v0, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v1, v0, s[52:55], 0 offen
	.loc	1 502 5                         ; attention.py:502:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp120:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
		.amdhsa_next_free_vgpr 137
		.amdhsa_next_free_sgpr 73
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
	.size	amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_vgpr, 137
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.numbered_sgpr, 73
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 8288
; TotalNumSgprs: 75
; NumVgprs: 137
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 17
; NumSGPRsForWavesPerEU: 75
; NumVGPRsForWavesPerEU: 137
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
	.short	829                             ; DW_AT_call_line
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
	.short	828                             ; DW_AT_call_line
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
	.quad	0
	.quad	0
.Ldebug_ranges3:
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
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
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
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
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
        .size:           1
        .value_kind:     by_value
      - .offset:         121
        .size:           1
        .value_kind:     by_value
      - .offset:         124
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           4
        .value_kind:     by_value
      - .offset:         132
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4
    .private_segment_fixed_size: 0
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_bf16xbf16_none_causal_local_bfloat16_d64_dv64_hq8_hkv8_lq1_lk2048_bm16_bn64_w4_s1_ds4.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     137
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
