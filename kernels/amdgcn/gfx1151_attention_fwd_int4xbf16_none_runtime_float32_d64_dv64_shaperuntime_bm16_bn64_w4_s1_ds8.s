	.amdgcn_target "amdgcn-amd-amdhsa--gfx1151"
	.amdhsa_code_object_version 5
	.text
	.globl	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8                          ; -- Begin function amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.p2align	8
	.type	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8,@function
amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8:                                 ; @amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
.Lfunc_begin0:
	.file	1 "<repo>/src/amd_strix_halo_kernels" "attention.py"
	.loc	1 691 0                         ; attention.py:691:0
	.cfi_sections .debug_frame
	.cfi_startproc
; %bb.0:
	s_clause 0x1
	s_load_b128 s[8:11], s[0:1], 0x80
	s_load_b32 s28, s[0:1], 0x68
	s_mov_b32 s27, s3
	s_clause 0x1
	s_load_b128 s[64:67], s[0:1], 0x4c
	s_load_b32 s40, s[0:1], 0x60
.Ltmp0:
	.loc	1 759 31 prologue_end           ; attention.py:759:31
	v_and_b32_e32 v49, 31, v0
	v_lshrrev_b32_e32 v63, 5, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v6, 0x110, v0
	v_xor_b32_e32 v7, 0x198, v0
	v_add_nc_u32_e32 v69, 0, v0
	v_lshlrev_b32_e32 v64, 1, v0
                                        ; implicit-def: $vgpr187 : SGPR spill to VGPR lane
	.loc	1 759 31                        ; attention.py:759:31
	v_and_b32_e32 v68, 15, v0
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v71, 0, v6
	v_add_nc_u32_e32 v72, 0, v7
	s_waitcnt lgkmcnt(0)
	s_and_b32 s3, 1, s8
	s_bitcmp1_b32 s8, 8
	s_cselect_b32 s89, -1, 0
	s_cmp_eq_u32 s3, 1
	.loc	1 773 26                        ; attention.py:773:26
	v_mad_u64_u32 v[51:52], null, s40, v63, v[49:50]
	s_cselect_b32 s3, -1, 0
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s21, s28
	.loc	1 748 27                        ; attention.py:748:27
	s_abs_i32 s5, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cvt_f32_u32 s4, s21
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s6, s2, s28
	.loc	1 772 26                        ; attention.py:772:26
	s_mul_i32 s14, s27, s66
	.loc	1 748 27                        ; attention.py:748:27
	s_ashr_i32 s6, s6, 31
	.loc	1 798 32                        ; attention.py:798:32
	v_rcp_iflag_f32_e32 v1, s4
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v66, s40, 2, v51
	v_mad_u64_u32 v[52:53], null, s40, 12, v[51:52]
	.loc	1 776 61                        ; attention.py:776:61
	v_cmp_gt_i32_e64 s96, s40, v49
	.loc	1 773 26                        ; attention.py:773:26
	v_lshl_add_u32 v67, s40, 3, v51
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 798 32                        ; attention.py:798:32
	v_readfirstlane_b32 s4, v1
	s_mul_f32 s4, s4, 0x4f7ffffe
	s_cvt_u32_f32 s22, s4
	s_sub_i32 s4, 0, s21
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s4, s22
	s_mul_hi_u32 s4, s22, s4
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s22, s22, s4
	.loc	1 748 27                        ; attention.py:748:27
	s_mul_hi_u32 s4, s5, s22
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s7, s4, s21
	s_sub_i32 s5, s5, s7
	s_add_i32 s7, s4, 1
	s_sub_i32 s12, s5, s21
	s_cmp_ge_u32 s5, s21
	s_cselect_b32 s4, s7, s4
	s_cselect_b32 s5, s12, s5
	s_add_i32 s7, s4, 1
	s_cmp_ge_u32 s5, s21
	s_cselect_b32 s4, s7, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s5, s64
	.loc	1 755 23                        ; attention.py:755:23
	s_abs_i32 s13, s27
	s_cvt_f32_u32 s7, s5
	s_sub_i32 s12, 0, s5
	.loc	1 748 27                        ; attention.py:748:27
	s_xor_b32 s4, s4, s6
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_1)
	.loc	1 755 23                        ; attention.py:755:23
	v_rcp_iflag_f32_e32 v1, s7
	.loc	1 748 27                        ; attention.py:748:27
	s_sub_i32 s4, s4, s6
	.loc	1 749 27                        ; attention.py:749:27
	s_mul_i32 s6, s4, s28
	.loc	1 753 19                        ; attention.py:753:19
	s_lshl_b32 s20, s4, 4
	.loc	1 749 27                        ; attention.py:749:27
	s_sub_i32 s26, s2, s6
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_3)
	.loc	1 755 23                        ; attention.py:755:23
	v_readfirstlane_b32 s7, v1
	s_mul_f32 s7, s7, 0x4f7ffffe
	s_cvt_u32_f32 s7, s7
	s_delay_alu instid0(SALU_CYCLE_3) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s12, s12, s7
	s_mul_hi_u32 s12, s7, s12
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s7, s7, s12
	s_mul_hi_u32 s7, s13, s7
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_mul_i32 s4, s7, s5
	s_sub_i32 s2, s13, s4
	s_add_i32 s4, s7, 1
	s_sub_i32 s6, s2, s5
	s_cmp_ge_u32 s2, s5
	s_clause 0x1
	s_load_b64 s[16:17], s[0:1], 0x0
	s_load_b64 s[12:13], s[0:1], 0x18
	s_cselect_b32 s4, s4, s7
	s_cselect_b32 s2, s6, s2
	s_add_i32 s6, s4, 1
	s_cmp_ge_u32 s2, s5
	s_cselect_b32 s7, s6, s4
	.loc	1 757 22                        ; attention.py:757:22
	s_abs_i32 s6, s65
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_1) | instid1(SALU_CYCLE_2)
	s_cvt_f32_u32 s2, s6
	s_sub_i32 s15, 0, s6
	v_rcp_iflag_f32_e32 v1, s2
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_readfirstlane_b32 s2, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s20, v63
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_f32 s2, s2, 0x4f7ffffe
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v2, 4, v1
	v_or_b32_e32 v3, 8, v1
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e32 vcc_lo, s66, v1
	.loc	1 757 22                        ; attention.py:757:22
	s_cvt_u32_f32 s2, s2
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v4, 12, v1
	s_delay_alu instid0(SALU_CYCLE_2) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 757 22                        ; attention.py:757:22
	s_mul_i32 s15, s15, s2
	s_mul_hi_u32 s15, s2, s15
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, s15
	s_mul_hi_u32 s15, s5, s2
	s_xor_b32 s2, s64, s65
	s_mul_i32 s23, s15, s6
	s_ashr_i32 s24, s2, 31
	s_sub_i32 s5, s5, s23
	s_add_i32 s23, s15, 1
	s_sub_i32 s25, s5, s6
	s_cmp_ge_u32 s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v2
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s15, s23, s15
	s_cselect_b32 s5, s25, s5
	s_add_i32 s23, s15, 1
	s_cmp_ge_u32 s5, s6
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s5, s66, v3
	.loc	1 757 22                        ; attention.py:757:22
	s_cselect_b32 s23, s23, s15
	.loc	1 773 26                        ; attention.py:773:26
	s_add_i32 s25, s14, s20
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s96, vcc_lo
	.loc	1 773 26                        ; attention.py:773:26
	s_mul_i32 s14, s25, s40
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s6, s66, v4
	.loc	1 773 26                        ; attention.py:773:26
	v_add_nc_u32_e32 v1, s14, v51
	v_add_nc_u32_e32 v2, s14, v66
	v_add_nc_u32_e32 v3, s14, v67
	v_add_nc_u32_e32 v4, s14, v52
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_and_b32 s17, s17, 0xffff
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s96, s2
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s14, s18
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v2, 0x80000000, v2, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s96, s5
	.loc	1 779 31                        ; attention.py:779:31
	v_add_lshl_u32 v8, s25, v68, 1
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v3, 0x80000000, v3, vcc_lo
	.loc	1 776 22                        ; attention.py:776:22
	s_and_b32 vcc_lo, s96, s6
	.loc	1 779 31                        ; attention.py:779:31
	s_mov_b32 s15, s19
	.loc	1 774 26                        ; attention.py:774:26
	v_cndmask_b32_e32 v4, 0x80000000, v4, vcc_lo
	s_clause 0x3
	buffer_load_u8 v5, v1, s[16:19], 0 offen
	buffer_load_u8 v2, v2, s[16:19], 0 offen
	buffer_load_u8 v3, v3, s[16:19], 0 offen
	buffer_load_u8 v4, v4, s[16:19], 0 offen
	v_xor_b32_e32 v1, 0x88, v0
	.loc	1 779 31                        ; attention.py:779:31
	s_and_b32 s13, s13, 0xffff
	s_delay_alu instid0(VALU_DEP_1)
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v70, 0, v1
	.loc	1 759 21                        ; attention.py:759:21
	v_or_b32_e32 v1, s20, v68
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt vmcnt(3)
	ds_store_b8 v69, v5
	s_waitcnt vmcnt(2)
	ds_store_b8 v70, v2
	s_waitcnt vmcnt(1)
	ds_store_b8 v71, v3
	s_waitcnt vmcnt(0)
	ds_store_b8 v72, v4
	.loc	1 776 23                        ; attention.py:776:23
	v_cmp_gt_i32_e64 s2, s66, v1
	.loc	1 774 26                        ; attention.py:774:26
	s_waitcnt lgkmcnt(0)
	s_barrier
	v_and_b32_e32 v3, 24, v64
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 779 31                        ; attention.py:779:31
	v_cndmask_b32_e64 v6, 0x80000000, v8, s2
	v_writelane_b32 v187, s2, 0
	.loc	1 757 22                        ; attention.py:757:22
	s_xor_b32 s2, s23, s24
	.loc	1 774 26                        ; attention.py:774:26
	v_lshl_or_b32 v3, v68, 5, v3
	.loc	1 779 31                        ; attention.py:779:31
	buffer_load_u16 v2, v6, s[12:15], 0 offen
	.loc	1 795 16                        ; attention.py:795:16
	s_add_i32 s13, s67, 63
	.loc	1 757 22                        ; attention.py:757:22
	s_sub_i32 s12, s2, s24
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s14, s13, 31
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v4, 8, v3
	.loc	1 795 15                        ; attention.py:795:15
	s_lshr_b32 s14, s14, 26
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v5, 16, v3
	.loc	1 795 15                        ; attention.py:795:15
	s_add_i32 s13, s13, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v73, 0, v3
	.loc	1 795 15                        ; attention.py:795:15
	s_ashr_i32 s14, s13, 6
	.loc	1 774 26                        ; attention.py:774:26
	v_xor_b32_e32 v3, 24, v3
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s14, s14, s28
	.loc	1 795 14                        ; attention.py:795:14
	s_and_b32 s16, s13, 0xffffffc0
	.loc	1 798 33                        ; attention.py:798:33
	s_add_i32 s14, s14, -1
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v74, 0, v4
	.loc	1 798 32                        ; attention.py:798:32
	s_abs_i32 s15, s14
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v75, 0, v5
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_hi_u32 s13, s15, s22
	.loc	1 774 26                        ; attention.py:774:26
	v_add_nc_u32_e32 v76, 0, v3
	.loc	1 798 32                        ; attention.py:798:32
	s_mul_i32 s17, s13, s21
	s_xor_b32 s14, s14, s28
	s_sub_i32 s15, s15, s17
	.loc	1 758 19                        ; attention.py:758:19
	s_abs_i32 s6, s12
	.loc	1 798 32                        ; attention.py:798:32
	s_ashr_i32 s14, s14, 31
	s_add_i32 s17, s13, 1
	s_sub_i32 s18, s15, s21
	.loc	1 774 26                        ; attention.py:774:26
	ds_load_b64 v[53:54], v73
	ds_load_b64 v[55:56], v74
	ds_load_b64 v[57:58], v75
	ds_load_b64 v[59:60], v76
	.loc	1 798 32                        ; attention.py:798:32
	s_cmp_ge_u32 s15, s21
	.loc	1 758 19                        ; attention.py:758:19
	s_cvt_f32_u32 s2, s6
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s13, s17, s13
	s_cselect_b32 s15, s18, s15
	s_add_i32 s17, s13, 1
	s_cmp_ge_u32 s15, s21
	.loc	1 758 19                        ; attention.py:758:19
	v_rcp_iflag_f32_e32 v3, s2
	.loc	1 798 32                        ; attention.py:798:32
	s_cselect_b32 s2, s17, s13
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_xor_b32 s2, s2, s14
	s_sub_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(SKIP_2) | instid1(TRANS32_DEP_1)
	.loc	1 799 18                        ; attention.py:799:18
	s_mul_i32 s13, s26, s2
	.loc	1 800 33                        ; attention.py:800:33
	s_lshl_b32 s2, s2, 6
	.loc	1 799 18                        ; attention.py:799:18
	s_lshl_b32 s69, s13, 6
	.loc	1 758 19                        ; attention.py:758:19
	v_readfirstlane_b32 s13, v3
	.loc	1 800 33                        ; attention.py:800:33
	s_add_i32 s2, s69, s2
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 800 18 is_stmt 0              ; attention.py:800:18
	s_min_i32 s42, s16, s2
	.loc	1 801 9 is_stmt 1               ; attention.py:801:9
	s_bfe_u32 s2, s8, 0x10008
	s_cbranch_scc0 .LBB0_2
; %bb.1:
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s10, s11
	.loc	1 802 39                        ; attention.py:802:39
	s_sub_i32 s8, s11, s9
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, s20
	.loc	1 802 39                        ; attention.py:802:39
	s_add_i32 s8, s8, s20
	.loc	1 805 17                        ; attention.py:805:17
	s_add_i32 s2, s2, 16
	.loc	1 802 25                        ; attention.py:802:25
	s_max_i32 s8, s8, 0
	.loc	1 803 25                        ; attention.py:803:25
	s_min_i32 s2, s67, s2
	.loc	1 807 33                        ; attention.py:807:33
	s_and_b32 s8, s8, 0x7fffffc0
	.loc	1 808 35                        ; attention.py:808:35
	s_add_i32 s2, s2, 63
	.loc	1 807 18                        ; attention.py:807:18
	s_max_i32 s69, s69, s8
	.loc	1 808 34                        ; attention.py:808:34
	s_ashr_i32 s14, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s14, s14, 26
	s_add_i32 s2, s2, s14
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 808 33 is_stmt 0              ; attention.py:808:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 808 18                        ; attention.py:808:18
	s_min_i32 s42, s42, s2
.LBB0_2:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b32 s41, s[0:1], 0x64
	.loc	1 809 9 is_stmt 1               ; attention.py:809:9
	v_cndmask_b32_e64 v77, 0, 1, s3
	s_and_not1_b32 vcc_lo, exec_lo, s3
	s_cbranch_vccnz .LBB0_4
; %bb.3:
	.loc	1 0 9 is_stmt 0                 ; attention.py:0:9
	s_add_i32 s2, s11, s20
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 16
	s_min_i32 s2, s67, s2
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_add_i32 s2, s2, 63
	.loc	1 811 34 is_stmt 1              ; attention.py:811:34
	s_ashr_i32 s3, s2, 31
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	s_lshr_b32 s3, s3, 26
	s_add_i32 s2, s2, s3
	s_delay_alu instid0(SALU_CYCLE_1) | instskip(NEXT) | instid1(SALU_CYCLE_1)
	.loc	1 811 33 is_stmt 0              ; attention.py:811:33
	s_and_not1_b32 s2, s2, 63
	.loc	1 811 18                        ; attention.py:811:18
	s_min_i32 s42, s42, s2
.LBB0_4:
	.loc	1 0 18                          ; attention.py:0:18
	s_load_b64 s[16:17], s[0:1], 0x40
	.loc	1 760 21 is_stmt 1              ; attention.py:760:21
	v_and_b32_e32 v50, 63, v0
	v_and_b32_e32 v65, 64, v0
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_ge_i32 s69, s42
	.loc	1 892 65                        ; attention.py:892:65
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_2)
	v_cmp_gt_i32_e64 s70, s41, v50
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc1 .LBB0_11
; %bb.5:                                ; %.lr.ph
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_xor_b32 s3, s27, s64
	s_mul_f32 s8, s13, 0x4f7ffffe
	s_ashr_i32 s3, s3, 31
	v_writelane_b32 v187, s16, 1
	s_xor_b32 s7, s7, s3
	s_cvt_u32_f32 s8, s8
	s_sub_i32 s3, s7, s3
	s_sub_i32 s7, 0, s6
	s_mul_i32 s13, s3, s64
	s_mul_i32 s7, s7, s8
	s_sub_i32 s13, s27, s13
	s_mul_hi_u32 s7, s8, s7
	v_writelane_b32 v187, s17, 2
	s_abs_i32 s14, s13
	s_add_i32 s8, s8, s7
	s_load_b32 s7, s[0:1], 0x6c
	s_mul_hi_u32 s8, s14, s8
	s_ashr_i32 s13, s13, 31
	s_ashr_i32 s12, s12, 31
	.loc	1 758 19 is_stmt 1              ; attention.py:758:19
	s_mul_i32 s15, s8, s6
	v_writelane_b32 v187, s18, 3
	s_xor_b32 s12, s13, s12
	s_sub_i32 s13, s14, s15
	s_add_i32 s14, s8, 1
	s_sub_i32 s15, s13, s6
	s_cmp_ge_u32 s13, s6
	v_writelane_b32 v187, s19, 4
	s_cselect_b32 s8, s14, s8
	s_cselect_b32 s13, s15, s13
	s_add_i32 s14, s8, 1
	s_cmp_ge_u32 s13, s6
	v_writelane_b32 v187, s28, 5
	s_cselect_b32 s6, s14, s8
	s_clause 0x1
	s_load_b128 s[16:19], s[0:1], 0x8
	s_load_b64 s[20:21], s[0:1], 0x20
	s_xor_b32 s0, s6, s12
	.loc	1 821 33                        ; attention.py:821:33
	s_mul_i32 s3, s3, s65
	v_writelane_b32 v187, s26, 6
	.loc	1 758 19                        ; attention.py:758:19
	s_sub_i32 s0, s0, s12
	v_mov_b16_e32 v5.l, 0
	.loc	1 821 33                        ; attention.py:821:33
	s_add_i32 s0, s0, s3
	.loc	1 779 31                        ; attention.py:779:31
	s_waitcnt vmcnt(0)
	v_mov_b16_e32 v5.h, v2.l
	.loc	1 821 32                        ; attention.py:821:32
	s_mul_i32 s43, s0, s67
	.loc	1 844 25                        ; attention.py:844:25
	s_waitcnt lgkmcnt(0)
	s_mul_f32 s0, s7, 0x3fb8aa3b
	v_writelane_b32 v187, s27, 7
	v_and_b32_e32 v3, 0x60, v0
	s_mov_b32 s3, 0x31027000
	.loc	1 843 41                        ; attention.py:843:41
	v_mul_f32_e32 v82, s0, v5
	s_mul_i32 s0, s41, 3
	s_mov_b32 s2, 0x7ffffffe
	v_writelane_b32 v187, s0, 8
	s_mul_i32 s0, s41, 26
	v_dual_mov_b32 v2, 0x5410 :: v_dual_add_nc_u32 v81, s11, v1
	s_and_b32 s17, s17, 0xffff
	v_writelane_b32 v187, s0, 9
	s_mul_i32 s0, s41, 27
	s_and_b32 s1, s19, 0xffff
	s_mov_b32 s19, s3
	v_and_b32_e32 v1, 16, v0
	v_writelane_b32 v187, s0, 10
	s_lshl_b32 s0, s41, 5
                                        ; implicit-def: $vgpr186 : SGPR spill to VGPR lane
	v_add_nc_u32_e32 v84, s10, v81
	s_mov_b32 s22, s2
	v_cmp_eq_u32_e32 vcc_lo, 0, v1
	v_writelane_b32 v187, s0, 11
	s_mul_i32 s0, s41, 33
	v_mov_b32_e32 v1, 0x7632
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v4, 4, v0
	v_cndmask_b32_e32 v2, 0x1054, v2, vcc_lo
	v_writelane_b32 v187, s0, 12
	s_mul_i32 s0, s41, 34
	v_cndmask_b32_e32 v1, 0x3276, v1, vcc_lo
	v_or_b32_e32 v80, 62, v4
	v_and_b32_e32 v4, 7, v0
	v_writelane_b32 v187, s0, 13
	s_mul_i32 s0, s41, 35
	v_lshl_or_b32 v1, v1, 8, v1
	s_and_b32 s21, s21, 0xffff
	v_lshl_or_b32 v2, v2, 8, v2
	v_writelane_b32 v187, s0, 14
	s_mul_i32 s0, s41, 40
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mov_b32 v90, v82 :: v_dual_and_b32 v1, 0x760076, v1
	s_delay_alu instid0(VALU_DEP_3)
	v_dual_mov_b32 v89, v82 :: v_dual_and_b32 v2, 0x540054, v2
	v_writelane_b32 v187, s0, 15
	s_mul_i32 s0, s41, 41
	v_dual_mov_b32 v88, v82 :: v_dual_lshlrev_b32 v5, 4, v4
	v_and_b32_e32 v6, 0x70, v64
	v_writelane_b32 v187, s0, 16
	s_mul_i32 s0, s41, 42
	v_bfe_i32 v8, v0, 3, 1
	v_lshl_or_b32 v1, v1, 4, v1
	s_mov_b32 s8, 0
	v_writelane_b32 v187, s0, 17
	s_mul_i32 s0, s41, 43
	v_subrev_nc_u32_e32 v83, s9, v81
	v_lshl_or_b32 v2, v2, 4, v2
	s_mov_b32 s9, s8
	v_writelane_b32 v187, s0, 18
	s_mul_i32 s0, s41, 48
	s_mov_b32 s10, s8
	s_mov_b32 s11, s8
	s_mov_b32 s12, s8
	v_writelane_b32 v187, s0, 19
	s_mul_i32 s0, s41, 49
	s_mov_b32 s13, s8
	s_mov_b32 s14, s8
	s_mov_b32 s15, s8
	v_writelane_b32 v187, s0, 20
	s_mul_i32 s0, s41, 50
	v_and_b32_e32 v86, 0x7060706, v1
	v_mov_b32_e32 v1, 0
	v_xor_b32_e32 v6, v5, v6
	v_writelane_b32 v187, s0, 21
	s_mul_i32 s0, s41, 51
	v_lshl_or_b32 v5, v3, 6, v5
	v_and_or_b32 v3, 0x410, v8, v3
	.loc	1 760 21                        ; attention.py:760:21
	v_lshrrev_b32_e32 v78, 4, v65
	v_writelane_b32 v187, s0, 22
	s_mul_i32 s0, s41, 56
	v_dual_mov_b32 v106, 0xff800000 :: v_dual_lshlrev_b32 v7, 7, v50
	v_lshrrev_b32_e32 v9, 3, v65
	v_writelane_b32 v187, s0, 23
	s_mul_i32 s0, s41, 57
	v_and_b32_e32 v85, 0x5040504, v2
	v_xor_b32_e32 v2, v3, v5
	.loc	1 818 13                        ; attention.py:818:13
	v_mad_u64_u32 v[61:62], null, s41, v78, v[50:51]
	v_writelane_b32 v187, s0, 24
	s_mul_i32 s0, s41, 58
	v_or3_b32 v62, v7, v9, v6
	v_lshl_or_b32 v87, v4, 7, v2
	v_mov_b32_e32 v16, s15
	v_writelane_b32 v187, s0, 25
	s_mul_i32 s0, s41, 59
	v_xor_b32_e32 v3, 16, v62
	v_xor_b32_e32 v5, 32, v62
	v_xor_b32_e32 v6, 48, v62
	v_writelane_b32 v187, s0, 26
	s_mov_b32 s0, s18
	s_mov_b32 s18, s2
	v_xor_b32_e32 v2, 64, v62
	v_xor_b32_e32 v4, 0x50, v62
	v_writelane_b32 v187, s16, 27
	v_xor_b32_e32 v7, 0x60, v62
	v_xor_b32_e32 v8, 0x70, v62
	v_xor_b32_e32 v17, 16, v87
	v_xor_b32_e32 v18, 32, v87
	v_writelane_b32 v187, s17, 28
	v_xor_b32_e32 v19, 48, v87
	v_xor_b32_e32 v20, 64, v87
	v_xor_b32_e32 v21, 0x50, v87
	v_xor_b32_e32 v22, 0x60, v87
	v_writelane_b32 v187, s18, 29
	v_xor_b32_e32 v23, 0x70, v87
	.loc	1 760 21                        ; attention.py:760:21
	v_bfe_u32 v79, v0, 4, 1
	v_dual_mov_b32 v15, s14 :: v_dual_mov_b32 v14, s13
	v_mov_b32_e32 v13, s12
	v_writelane_b32 v187, s19, 30
	v_dual_mov_b32 v12, s11 :: v_dual_mov_b32 v11, s10
	v_dual_mov_b32 v10, s9 :: v_dual_mov_b32 v9, s8
	v_writelane_b32 v187, s0, 31
	v_writelane_b32 v186, s1, 0
	s_mov_b32 s23, s3
	v_add_nc_u32_e32 v91, 0, v3
	v_dual_mov_b32 v3, v1 :: v_dual_add_nc_u32 v92, 0, v5
	v_writelane_b32 v186, s2, 1
	v_add_nc_u32_e32 v93, 0, v6
	v_dual_mov_b32 v5, v1 :: v_dual_add_nc_u32 v94, 0, v2
	v_dual_mov_b32 v6, v1 :: v_dual_add_nc_u32 v95, 0, v4
	v_writelane_b32 v186, s3, 2
	v_add_nc_u32_e32 v96, 0, v7
	v_mov_b32_e32 v7, v1
	v_add_nc_u32_e32 v97, 0, v8
	v_mov_b32_e32 v8, v1
	v_writelane_b32 v186, s20, 3
	v_dual_mov_b32 v105, v1 :: v_dual_add_nc_u32 v98, 0, v17
	v_add_nc_u32_e32 v99, 0, v18
	v_add_nc_u32_e32 v100, 0, v19
	v_writelane_b32 v186, s21, 4
	v_add_nc_u32_e32 v101, 0, v20
	v_add_nc_u32_e32 v102, 0, v21
	v_add_nc_u32_e32 v103, 0, v22
	v_add_nc_u32_e32 v104, 0, v23
	v_writelane_b32 v186, s22, 5
	v_mov_b32_e32 v2, v1
	v_mov_b32_e32 v4, v1
	s_lshl_b32 s44, s40, 4
	s_mul_i32 vcc_hi, s40, 20
	v_writelane_b32 v186, s23, 6
	s_mul_i32 s46, s40, 24
	s_mul_i32 s47, s40, 28
	s_lshl_b32 s48, s40, 5
	s_mul_i32 s49, s40, 36
	.loc	1 818 13                        ; attention.py:818:13
	v_writelane_b32 v186, s70, 7
	s_mul_i32 s50, s40, 40
	s_mul_i32 s102, s40, 44
	s_mul_i32 s82, s40, 48
	s_mul_i32 s53, s40, 52
	v_writelane_b32 v186, s40, 8
	s_mul_i32 s54, s40, 56
	s_mul_i32 s55, s40, 60
	s_lshl_b32 s56, s41, 1
	s_lshl_b32 s58, s41, 3
	v_writelane_b32 v186, s89, 9
	s_mul_i32 s59, s41, 9
	s_mul_i32 s60, s41, 10
	s_mul_i32 s61, s41, 11
	s_lshl_b32 s62, s41, 4
	s_mul_i32 s63, s41, 17
	s_mul_i32 s64, s41, 18
	s_mul_i32 s93, s41, 19
	s_mul_i32 s66, s41, 24
	s_mul_i32 s68, s41, 25
	v_writelane_b32 v186, s102, 10
	s_branch .LBB0_7
.LBB0_6:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_delay_alu instid0(VALU_DEP_1)
	v_readlane_b32 s2, v186, 11
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_cvt_f32_i32_e32 v143, v29
	v_cvt_f32_i32_e32 v144, v28
	v_cvt_f32_i32_e32 v145, v27
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v27, s69, v78
	v_mad_u64_u32 v[28:29], null, s2, s41, v[61:62]
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v139, v41
	v_cvt_f32_i32_e32 v41, v48
	v_cvt_f32_i32_e32 v48, v34
	v_cvt_f32_i32_e32 v34, v39
	v_cvt_f32_i32_e32 v39, v35
	v_cvt_f32_i32_e32 v35, v17
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v156, v28, s93, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 1, v27
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v154, v18
	v_cvt_f32_i32_e32 v153, v19
	v_cvt_f32_i32_e32 v152, v20
	v_cvt_f32_i32_e32 v150, v21
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s6, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 2, v27
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(21)
	v_mov_b16_e64 v134.h, v134.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v149, v23
	v_cvt_f32_i32_e32 v148, v24
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(18)
	v_mov_b16_e64 v130.h, v130.l
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 3, v27
	.loc	1 838 37                        ; attention.py:838:37
	s_waitcnt vmcnt(2)
	v_mov_b16_e64 v136.h, v136.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v146, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v132.h, v132.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v141, v30
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s18, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 8, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v128.h, v128.l
	v_mov_b16_e32 v126.h, v126.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v90, v141
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v27
	v_cmp_gt_i32_e64 s13, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 9, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v18, v28, s56, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s12, s70, s12
	s_and_b32 s22, s70, s22
	v_readlane_b32 s24, v187, 31
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s8, s67, v17
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v17, 10, v27
	v_readlane_b32 s25, v186, 0
	v_readlane_b32 s26, v186, 1
	v_readlane_b32 s27, v186, 2
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v18, 0x80000000, v18, s12
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 11, v27
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v140, v33
	v_cvt_f32_i32_e32 v33, v38
	v_cvt_f32_i32_e32 v38, v40
	v_cvt_f32_i32_e32 v40, v32
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s9, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 16, v27
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v142, v31
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v124.h, v124.l
	v_mov_b16_e32 v122.h, v122.l
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v19, 42, v27
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 17, v27
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s13, s70, s13
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v121.h, v121.l
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s23, s67, v19
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v48, v90, v48 :: v_dual_add_nc_u32 v19, 43, v27
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e32 vcc_lo, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 18, v27
	v_add_nc_u32_e32 v21, 48, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v20, v28, s64, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v118.h, v118.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v42, v42
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 19, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s2, v187, 9
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v42, v88, v42 :: v_dual_add_nc_u32 v23, 50, v27
	v_cvt_f32_i32_e32 v151, v22
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s0, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 24, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v22, v28, s2, 1
	v_readlane_b32 s2, v187, 11
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v117.h, v117.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v44, v44
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 25, v27
	v_add_nc_u32_e32 v25, 56, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v116.h, v116.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v44, v90, v44
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s70, s15
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s1, s67, v17
	.loc	1 847 25 is_stmt 1              ; attention.py:847:25
	v_dual_mul_f32 v144, v88, v144 :: v_dual_add_nc_u32 v17, 26, v27
	v_cvt_f32_i32_e32 v147, v26
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v166, v28, s61, 1
	v_add_lshl_u32 v165, v28, s59, 1
	s_delay_alu instid0(VALU_DEP_4)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s17, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 27, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v163, v28, s41, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s9, s70, s9
	s_and_b32 s8, s70, s8
	s_and_b32 s18, s70, s18
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s7, s67, v17
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v17, 32, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v166, 0x80000000, v166, s9
	v_cndmask_b32_e64 v165, 0x80000000, v165, s8
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s6, s70, s6
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v155, v28, s63, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 33, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v163, 0x80000000, v163, s6
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v157, v28, s68, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s70, s16
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s10, s67, v17
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v17, 34, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v114.h, v114.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v155, 0x80000000, v155, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s0
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v36, v36
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s67, v17
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v40, v88, v40 :: v_dual_add_nc_u32 v17, 35, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v156, 0x80000000, v156, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s1
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v46, v46
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s11, s67, v17
	.loc	1 890 30                        ; attention.py:890:30
	v_lshlrev_b32_e32 v17, 1, v28
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v123.h, v123.l
	v_mov_b16_e64 v137.h, v137.l
	v_mov_b16_e64 v135.h, v135.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v43, v43
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v17, 0x80000000, v17, s22
	s_clause 0x1
	buffer_load_u16 v31, v17, s[24:27], 0 offen
	buffer_load_u16 v32, v18, s[24:27], 0 offen
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 40, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v18, v28, s60, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v133.h, v133.l
	v_mov_b16_e64 v131.h, v131.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v47, v47
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, 41, v27
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v113.h, v113.l
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v45, v45
	v_mul_f32_e32 v47, v89, v47
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v115.h, v115.l
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s12, s67, v17
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v17, v28, s58, 1
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v112.h, v112.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v41, v90, v41
	v_mul_f32_e32 v35, v82, v35
	v_readlane_b32 s3, v186, 12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v17, 0x80000000, v17, s13
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s13, s70, s14
	s_and_b32 s14, s70, s19
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v18, 0x80000000, v18, s13
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s13, s67, v19
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v19, v28, s62, 1
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s19, s67, v21
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v21, 49, v27
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v17, v17, s[24:27], 0 offen
	buffer_load_u16 v18, v18, s[24:27], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_cvt_f32_i32_e32 v37, v37
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v19, 0x80000000, v19, s14
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s14, s70, s20
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s20, s67, v23
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	v_cndmask_b32_e64 v20, 0x80000000, v20, s14
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s14, s67, v21
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v21, v28, s66, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v23, 51, v27
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s70, s19
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v19, v19, s[24:27], 0 offen
	buffer_load_u16 v20, v20, s[24:27], 0 offen
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v129.h, v129.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v21, 0x80000000, v21, s15
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s15, s70, s17
	s_and_b32 s17, s70, s22
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v22, 0x80000000, v22, s15
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s15, s67, v23
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v23, v28, s2, 1
	v_readlane_b32 s2, v187, 13
	s_clause 0x1
	buffer_load_u16 v21, v21, s[24:27], 0 offen
	buffer_load_u16 v22, v22, s[24:27], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v145, v82, v145
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v127.h, v127.l
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v23, 0x80000000, v23, s16
	v_add_lshl_u32 v24, v28, s2, 1
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s16, s70, s21
	.loc	1 892 27 is_stmt 0              ; attention.py:892:27
	v_cmp_gt_i32_e64 s21, s67, v25
	.loc	1 819 31 is_stmt 1              ; attention.py:819:31
	v_add_nc_u32_e32 v25, 57, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_readlane_b32 s2, v187, 15
	v_cndmask_b32_e64 v24, 0x80000000, v24, s16
	s_clause 0x1
	buffer_load_u16 v23, v23, s[24:27], 0 offen
	buffer_load_u16 v24, v24, s[24:27], 0 offen
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s16, s67, v25
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v25, v28, s2, 1
	v_readlane_b32 s2, v187, 17
	s_mov_b32 s1, 0x76543210
	.loc	1 818 13                        ; attention.py:818:13
	s_add_i32 s69, s69, 64
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v157, 0x80000000, v157, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s7
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v26, v28, s2, 1
	v_readlane_b32 s2, v187, 8
	v_cndmask_b32_e64 v25, 0x80000000, v25, s17
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s17, s70, s23
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v46, v88, v46
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v26, 0x80000000, v26, s17
	v_add_lshl_u32 v170, v28, s2, 1
	v_readlane_b32 s2, v187, 10
	s_clause 0x1
	buffer_load_u16 v25, v25, s[24:27], 0 offen
	buffer_load_u16 v26, v26, s[24:27], 0 offen
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v82, v36
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v170, 0x80000000, v170, s18
	s_clause 0x3
	buffer_load_u16 v166, v166, s[24:27], 0 offen
	buffer_load_u16 v165, v165, s[24:27], 0 offen
	buffer_load_u16 v170, v170, s[24:27], 0 offen
	buffer_load_u16 v163, v163, s[24:27], 0 offen
	v_add_lshl_u32 v158, v28, s2, 1
	v_readlane_b32 s2, v187, 12
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v34, v90, v34
	v_mul_f32_e32 v38, v90, v38
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v158, 0x80000000, v158, vcc_lo
	v_add_lshl_u32 v159, v28, s2, 1
	v_readlane_b32 s2, v187, 14
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s10
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v159, 0x80000000, v159, vcc_lo
	v_add_lshl_u32 v160, v28, s2, 1
	v_readlane_b32 s2, v187, 16
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s11
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v160, 0x80000000, v160, vcc_lo
	v_add_lshl_u32 v161, v28, s2, 1
	v_readlane_b32 s2, v187, 18
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s12
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v161, 0x80000000, v161, vcc_lo
	v_add_lshl_u32 v162, v28, s2, 1
	v_readlane_b32 s2, v187, 19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s13
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v162, 0x80000000, v162, vcc_lo
	v_add_lshl_u32 v29, v28, s2, 1
	v_readlane_b32 s2, v187, 20
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s14
	.loc	1 890 30                        ; attention.py:890:30
	v_add_lshl_u32 v164, v28, s2, 1
	v_readlane_b32 s2, v187, 21
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v30, v28, s2, 1
	v_readlane_b32 s2, v187, 22
	v_add_lshl_u32 v167, v28, s2, 1
	v_readlane_b32 s2, v187, 23
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v171, v28, s2, 1
	v_readlane_b32 s2, v187, 24
	v_add_lshl_u32 v168, v28, s2, 1
	v_readlane_b32 s2, v187, 25
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	v_add_lshl_u32 v172, v28, s2, 1
	v_readlane_b32 s2, v187, 26
	v_add_lshl_u32 v169, v28, s2, 1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v28, 58, v27
	v_add_nc_u32_e32 v27, 59, v27
	v_readlane_b32 s2, v186, 13
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 892 27                        ; attention.py:892:27
	v_cmp_gt_i32_e64 s22, s67, v28
	v_cmp_gt_i32_e64 s17, s67, v27
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v27, 0x80000000, v29, s19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s70, s20
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v28, 0x80000000, v30, s19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s70, s21
	.loc	1 890 30                        ; attention.py:890:30
	s_clause 0x1
	buffer_load_u16 v27, v27, s[24:27], 0 offen
	buffer_load_u16 v28, v28, s[24:27], 0 offen
	v_cndmask_b32_e64 v29, 0x80000000, v171, s19
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 s19, s70, s22
	s_delay_alu instid0(SALU_CYCLE_1)
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e64 v30, 0x80000000, v172, s19
	s_clause 0x1
	buffer_load_u16 v29, v29, s[24:27], 0 offen
	buffer_load_u16 v30, v30, s[24:27], 0 offen
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v18.h, v166.l
	s_waitcnt vmcnt(6)
	v_mov_b16_e64 v17.h, v165.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v32.h, v170.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v31.h, v163.l
	v_cndmask_b32_e32 v163, 0x80000000, v164, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s15
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v164, 0x80000000, v167, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s16
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v167, 0x80000000, v168, vcc_lo
	.loc	1 892 26                        ; attention.py:892:26
	s_and_b32 vcc_lo, s70, s17
	.loc	1 818 13                        ; attention.py:818:13
	s_cmp_lt_i32 s69, s42
	.loc	1 890 30                        ; attention.py:890:30
	v_cndmask_b32_e32 v168, 0x80000000, v169, vcc_lo
	s_clause 0xb
	buffer_load_u16 v158, v158, s[24:27], 0 offen
	buffer_load_u16 v157, v157, s[24:27], 0 offen
	buffer_load_u16 v156, v156, s[24:27], 0 offen
	buffer_load_u16 v155, v155, s[24:27], 0 offen
	buffer_load_u16 v162, v162, s[24:27], 0 offen
	buffer_load_u16 v161, v161, s[24:27], 0 offen
	buffer_load_u16 v160, v160, s[24:27], 0 offen
	buffer_load_u16 v159, v159, s[24:27], 0 offen
	buffer_load_u16 v168, v168, s[24:27], 0 offen
	buffer_load_u16 v167, v167, s[24:27], 0 offen
	buffer_load_u16 v164, v164, s[24:27], 0 offen
	buffer_load_u16 v163, v163, s[24:27], 0 offen
	v_add_nc_u32_e32 v169, 0, v62
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_store_b64 v169, v[31:32]
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v31.l, 0
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v32.h, v138.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v138, v82, v154
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v31.h, v120.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v120, v82, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v32.l, v31.l
	v_mov_b16_e64 v137.l, v31.l
	v_mov_b16_e64 v135.l, v31.l
	v_mov_b16_e64 v134.l, v31.l
	v_mov_b16_e64 v133.l, v31.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v32, v138, v32
	v_mul_f32_e32 v138, v88, v153
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v131.l, v31.l
	v_mov_b16_e64 v130.l, v31.l
	v_mov_b16_e64 v136.l, v31.l
	v_mov_b16_e64 v132.l, v31.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v137, v138, v137 :: v_dual_mul_f32 v138, v89, v152
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v113.l, v31.l
	v_mov_b16_e32 v118.l, v31.l
	v_mov_b16_e32 v117.l, v31.l
	v_mov_b16_e32 v116.l, v31.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v135, v138, v135
	v_mul_f32_e32 v138, v90, v150
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v115.l, v31.l
	v_mov_b16_e32 v114.l, v31.l
	v_mov_b16_e32 v112.l, v31.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v135, 0xff800000, v135, s65
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v134, v138, v134
	v_mul_f32_e32 v138, v82, v151
	v_dual_mul_f32 v43, v89, v43 :: v_dual_mul_f32 v118, v120, v118
	v_mul_f32_e32 v42, v42, v117
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mul_f32 v44, v44, v116 :: v_dual_mul_f32 v133, v138, v133
	v_dual_mul_f32 v138, v88, v149 :: v_dual_mul_f32 v43, v43, v31
	v_dual_mul_f32 v46, v46, v114 :: v_dual_mul_f32 v41, v41, v112
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v112.h, v119.l
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v44, 0xff800000, v44, s100
	v_cndmask_b32_e64 v43, 0xff800000, v43, s76
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v131, v138, v131 :: v_dual_mul_f32 v138, v89, v148
	s_delay_alu instid0(VALU_DEP_4)
	v_mul_f32_e32 v35, v35, v112
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v42, 0xff800000, v42, s38
	v_cndmask_b32_e64 v112, 0xff800000, v118, s37
	v_cndmask_b32_e64 v46, 0xff800000, v46, s78
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v130, v138, v130
	v_mul_f32_e32 v138, v88, v147
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v134, 0xff800000, v134, s92
	v_cndmask_b32_e64 v137, 0xff800000, v137, s94
	v_cndmask_b32_e64 v131, 0xff800000, v131, s88
	v_cndmask_b32_e64 v133, 0xff800000, v133, s90
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v136, v138, v136
	v_mul_f32_e32 v138, v90, v146
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v130, 0xff800000, v130, s3
	v_cndmask_b32_e64 v35, 0xff800000, v35, s52
.Ltmp1:
	.file	2 "<repo>/.venv/lib/python3.12/site-packages/triton/language" "standard.py"
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v146, v134, v133, v131
.Ltmp2:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v136, 0xff800000, v136, s97
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v132, v138, v132
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v138, 0xff800000, v32, s95
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v47, v47, v113
.Ltmp3:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v113, v112, v42
.Ltmp4:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v129.l, v31.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v132, 0xff800000, v132, s2
.Ltmp5:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v32, v138, v137, v135
.Ltmp6:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v47, 0xff800000, v47, s99
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v82, v45
	v_mul_f32_e32 v37, v88, v37
.Ltmp7:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v147, v130, v132, v136
.Ltmp8:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v129, v145, v129
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v127.l, v31.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v45, v45, v115
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v123.l, v31.l
.Ltmp9:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v32, v32, v146, v147
.Ltmp10:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v126.l, v31.l
	v_mov_b16_e32 v122.l, v31.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v45, 0xff800000, v45, s79
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v40, v40, v123
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e64 v128.l, v31.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v126, v141, v126
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v124.l, v31.l
.Ltmp11:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v114, v44, v45, v46
.Ltmp12:
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v141, v82, v142
	v_mul_f32_e32 v39, v89, v39
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v121.l, v31.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v128, v144, v128
.Ltmp13:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v113, v113, v43, v114
.Ltmp14:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v114, 0xff800000, v41, s98
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v124, v141, v124
	v_mul_f32_e32 v48, v48, v121
	v_mul_f32_e32 v33, v89, v33
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v121, 0xff800000, v126, s87
.Ltmp15:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v41, v47, v114, v35
.Ltmp16:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v126, 0xff800000, v129, s81
	v_cndmask_b32_e64 v48, 0xff800000, v48, s84
	v_cndmask_b32_e64 v124, 0xff800000, v124, s4
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v91, v[17:18]
.Ltmp17:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v32, v113, v41, v32
.Ltmp18:
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v41.h, v111.l
	v_mov_b16_e32 v41.l, v31.l
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v36, v36, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v41.h, v109.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v36, 0xff800000, v36, s5
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_3)
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v37, v37, v41
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v41.h, v108.l
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v143, v89, v143
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v37, 0xff800000, v37, s75
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_1)
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v34, v34, v41 :: v_dual_mul_f32 v127, v143, v127
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v41.h, v110.l
	.loc	1 847 25                        ; attention.py:847:25
	v_dual_mul_f32 v123, v89, v140 :: v_dual_mul_f32 v38, v38, v41
	s_delay_alu instid0(VALU_DEP_1)
	v_mul_f32_e32 v122, v123, v122
	.loc	1 838 37                        ; attention.py:838:37
	v_mov_b16_e32 v123.h, v125.l
	v_mov_b16_e32 v123.l, v31.l
	v_mov_b16_e32 v41.h, v107.l
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v125, 0xff800000, v128, s77
	v_cndmask_b32_e64 v122, 0xff800000, v122, s85
	v_cndmask_b32_e64 v38, 0xff800000, v38, s71
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v39, v39, v123
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v123, 0xff800000, v127, s86
	v_cndmask_b32_e64 v127, 0xff800000, v40, s80
	.loc	1 847 25                        ; attention.py:847:25
	v_mul_f32_e32 v33, v33, v41
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v107, 0xff800000, v34, s72
	v_cndmask_b32_e64 v39, 0xff800000, v39, s51
.Ltmp19:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v126, v125, v123
	v_max3_f32 v128, v121, v124, v127
.Ltmp20:
	.loc	1 882 26                        ; attention.py:882:26
	v_cndmask_b32_e64 v108, 0xff800000, v33, s39
.Ltmp21:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max_f32_e32 v33, v36, v37
	v_max3_f32 v129, v122, v48, v39
	v_max_f32_e32 v34, v107, v38
.Ltmp22:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v41.h, v31.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp23:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:883:29 ] ]
	v_max3_f32 v40, v40, v128, v129
	v_max3_f32 v33, v33, v108, v34
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_max3_f32 v32, v32, v40, v33
.Ltmp24:
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v40.h, v31.l
.Ltmp25:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:883:29 ]
	v_permlanex16_b32 v33, v32, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp26:
	.loc	1 884 24                        ; attention.py:884:24
	v_max3_f32 v32, v106, v32, v33
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v33, v112, v32
	v_sub_f32_e32 v34, v42, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v33, v33
	v_exp_f32_e32 v34, v34
	s_delay_alu instid0(TRANS32_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v33, 0, v33, s37
	v_cndmask_b32_e64 v34, 0, v34, s38
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v40.l, v33.h
	v_mov_b16_e32 v41.l, v34.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
	v_cmp_o_f32_e32 vcc_lo, v34, v34
	v_cmp_o_f32_e64 s0, v33, v33
	v_and_b32_e32 v40, 1, v40
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v41, 1, v41
	v_add3_u32 v40, v33, v40, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v41, v34, v41, 0x7fff
	v_cndmask_b16 v41.l, 0x7fff, v40.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v41.h, 0x7fff, v41.h, vcc_lo
	v_permlanex16_b32 v42, v41, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v40, v42, v41, v85
	v_perm_b32 v41, v42, v41, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v42, v43, v32
	v_sub_f32_e32 v43, v44, v32
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v42, v42
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v43, v43
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v109, 0, v42, s76
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v110, 0, v43, s100
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v42.h, v31.l
	v_mov_b16_e32 v43.h, v31.l
	v_mov_b16_e32 v42.l, v109.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v43.l, v110.h
	v_cmp_o_f32_e32 vcc_lo, v110, v110
	v_cmp_o_f32_e64 s0, v109, v109
	v_and_b32_e32 v42, 1, v42
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v43, 1, v43
	v_add3_u32 v42, v109, v42, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v43, v110, v43, 0x7fff
	v_cndmask_b16 v43.l, 0x7fff, v42.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v43.h, 0x7fff, v43.h, vcc_lo
	v_permlanex16_b32 v44, v43, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_3) | instid1(VALU_DEP_2)
	v_perm_b32 v42, v44, v43, v85
	v_perm_b32 v43, v44, v43, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v44, v45, v32
	v_sub_f32_e32 v45, v46, v32
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v44, v44
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_2)
	v_exp_f32_e32 v45, v45
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v111, 0, v44, s79
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_cndmask_b32_e64 v112, 0, v45, s78
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v44.h, v31.l
	v_mov_b16_e32 v45.h, v31.l
	v_mov_b16_e32 v44.l, v111.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(SKIP_2) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v45.l, v112.h
	v_cmp_o_f32_e32 vcc_lo, v112, v112
	v_cmp_o_f32_e64 s0, v111, v111
	v_and_b32_e32 v44, 1, v44
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_and_b32_e32 v45, 1, v45
	v_add3_u32 v44, v111, v44, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_add3_u32 v45, v112, v45, 0x7fff
	v_cndmask_b16 v45.l, 0x7fff, v44.h, s0
	s_delay_alu instid0(VALU_DEP_2)
	v_cndmask_b16 v45.h, 0x7fff, v45.h, vcc_lo
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(11)
	v_mov_b16_e64 v22.h, v158.l
	s_waitcnt vmcnt(10)
	v_mov_b16_e64 v21.h, v157.l
	s_waitcnt vmcnt(9)
	v_mov_b16_e64 v20.h, v156.l
	s_waitcnt vmcnt(8)
	v_mov_b16_e64 v19.h, v155.l
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v46, v45, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 890 30                        ; attention.py:890:30
	s_waitcnt vmcnt(7)
	v_mov_b16_e64 v26.h, v162.l
	s_waitcnt vmcnt(5)
	v_mov_b16_e64 v24.h, v160.l
	s_waitcnt vmcnt(4)
	v_mov_b16_e64 v23.h, v159.l
	v_mov_b16_e64 v25.h, v161.l
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v44, v46, v45, v85
	v_perm_b32 v45, v46, v45, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v46, v47, v32
	v_sub_f32_e32 v47, v114, v32
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v92, v[19:20]
	ds_store_b64 v93, v[21:22]
	ds_store_b64 v94, v[23:24]
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v46, v46
	v_exp_f32_e32 v47, v47
	.loc	1 890 30                        ; attention.py:890:30
	ds_store_b64 v95, v[25:26]
	s_waitcnt vmcnt(1)
	v_mov_b16_e64 v28.h, v164.l
	s_waitcnt vmcnt(0)
	v_mov_b16_e64 v27.h, v163.l
	v_mov_b16_e64 v30.h, v168.l
	v_mov_b16_e64 v29.h, v167.l
	ds_store_b64 v96, v[27:28]
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v113, 0, v46, s99
	v_cndmask_b32_e64 v114, 0, v47, s98
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.h, v31.l
	v_mov_b16_e32 v47.h, v31.l
	.loc	1 885 74                        ; attention.py:885:74
	v_sub_f32_e32 v17, v106, v32
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v46.l, v113.h
	v_mov_b16_e32 v47.l, v114.h
	v_cmp_o_f32_e32 vcc_lo, v114, v114
	v_cmp_o_f32_e64 s0, v113, v113
	.loc	1 885 61                        ; attention.py:885:61
	v_exp_f32_e32 v25, v17
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v46, 1, v46
	v_and_b32_e32 v47, 1, v47
	.loc	1 890 30                        ; attention.py:890:30
	v_add_nc_u32_e32 v17, 0, v87
	ds_store_b64 v97, v[29:30]
	s_waitcnt lgkmcnt(0)
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v46, v113, v46, 0x7fff
	v_add3_u32 v47, v114, v47, 0x7fff
	.loc	1 890 30                        ; attention.py:890:30
	s_barrier
	ds_load_b128 v[17:20], v17
	ds_load_b128 v[21:24], v98
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v47.l, 0x7fff, v46.h, s0
	v_cndmask_b16 v47.h, 0x7fff, v47.h, vcc_lo
	.loc	1 885 25                        ; attention.py:885:25
	v_cmp_neq_f32_e32 vcc_lo, 0xff800000, v106
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 896 30                        ; attention.py:896:30
	v_permlanex16_b32 v115, v47, s1, 0xfedcba98 op_sel:[1,0]
	.loc	1 885 25                        ; attention.py:885:25
	v_cndmask_b32_e32 v25, 0, v25, vcc_lo
	.loc	1 896 30                        ; attention.py:896:30
	v_perm_b32 v46, v115, v47, v85
	v_perm_b32 v47, v115, v47, v86
	s_delay_alu instid0(VALU_DEP_3)
	.loc	1 895 23                        ; attention.py:895:23
	v_mul_f32_e32 v1, v1, v25
	v_mul_f32_e32 v2, v2, v25
	v_mul_f32_e32 v3, v3, v25
	v_mul_f32_e32 v4, v4, v25
	v_mul_f32_e32 v5, v5, v25
	v_mul_f32_e32 v6, v6, v25
	v_mul_f32_e32 v7, v7, v25
	v_mul_f32_e32 v8, v8, v25
	.loc	1 896 23                        ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[17:24], v[40:47], v[1:8]
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v20, v135, v32
	v_sub_f32_e32 v18, v138, v32
	v_sub_f32_e32 v22, v134, v32
	v_sub_f32_e32 v24, v130, v32
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[40:43], v99
	ds_load_b128 v[44:47], v100
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v24, v24
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v29, 0, v20, s65
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v17, v35, v32
	s_delay_alu instid0(TRANS32_DEP_3) | instskip(SKIP_1) | instid1(TRANS32_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v27, 0, v18, s95
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v18.h, v31.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v106, 0, v22, s92
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v20.l, v29.h
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v18.l, v27.h
	v_cmp_o_f32_e32 vcc_lo, v27, v27
	v_mov_b16_e32 v20.h, v31.l
	v_mov_b16_e32 v22.l, v106.h
	v_mov_b16_e32 v22.h, v31.l
	v_and_b32_e32 v18, 1, v18
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v116, 0, v24, s3
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v24.h, v31.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v26, 0, v17, s52
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v17.h, v31.l
	v_add3_u32 v18, v27, v18, 0x7fff
	v_add3_u32 v20, v29, v20, 0x7fff
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v17.l, v26.h
	v_cmp_o_f32_e64 s0, v26, v26
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v29, v29
	v_add3_u32 v22, v106, v22, 0x7fff
	v_and_b32_e32 v17, 1, v17
	v_mov_b16_e32 v24.l, v116.h
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v26, v17, 0x7fff
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s0
	v_add3_u32 v24, v116, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v19, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v17, v19, v18, v85
	v_perm_b32 v18, v19, v18, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v137, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v28, 0, v19, s94
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v19.h, v31.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v19.l, v28.h
	v_cmp_o_f32_e64 s0, v28, v28
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v28, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v20.l, 0x7fff, v19.h, s0
	v_cmp_o_f32_e64 s0, v106, v106
	v_permlanex16_b32 v21, v20, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.l, 0x7fff, v22.h, s0
	v_perm_b32 v19, v21, v20, v85
	v_perm_b32 v20, v21, v20, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v133, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v30, 0, v21, s90
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v21.h, v31.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v21.l, v30.h
	v_cmp_o_f32_e32 vcc_lo, v30, v30
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v30, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v23.h, 0x7fff, v21.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v116, v116
	v_permlanex16_b32 v22, v23, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v21, v22, v23, v85
	v_perm_b32 v22, v22, v23, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v131, v32
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v115, 0, v23, s88
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v23.h, v31.l
	v_mov_b16_e32 v23.l, v115.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v115, v115
	v_and_b32_e32 v23, 1, v23
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v23, v115, v23, 0x7fff
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v35, v24, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v23, v35, v24, v85
	v_perm_b32 v24, v35, v24, v86
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	s_delay_alu instid0(VALU_DEP_1)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[40:47], v[17:24], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v17, v132, v32
	v_sub_f32_e32 v18, v136, v32
	v_sub_f32_e32 v20, v126, v32
	v_sub_f32_e32 v22, v121, v32
	v_sub_f32_e32 v24, v124, v32
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v24, v24
	.loc	1 890 30 is_stmt 1              ; attention.py:890:30
	ds_load_b128 v[40:43], v101
	ds_load_b128 v[44:47], v102
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v117, 0, v17, s2
	v_cndmask_b32_e64 v118, 0, v18, s97
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v17.h, v31.l
	v_mov_b16_e32 v18.h, v31.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v120, 0, v20, s81
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v17.l, v117.h
	v_mov_b16_e32 v18.l, v118.h
	v_cmp_o_f32_e32 vcc_lo, v118, v118
	v_cmp_o_f32_e64 s0, v117, v117
	v_mov_b16_e32 v20.l, v120.h
	v_and_b32_e32 v17, 1, v17
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v20.h, v31.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v17, v117, v17, 0x7fff
	v_add3_u32 v18, v118, v18, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_and_b32_e32 v20, 1, v20
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s0
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v20, v120, v20, 0x7fff
	v_cmp_o_f32_e64 s0, v120, v120
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_permlanex16_b32 v19, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_cndmask_b16 v21.l, 0x7fff, v20.h, s0
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v17, v19, v18, v85
	v_perm_b32 v18, v19, v18, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v125, v32
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v125, 0, v24, s4
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v24.h, v31.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v24.l, v125.h
	v_and_b32_e32 v24, 1, v24
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v119, 0, v19, s77
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.h, v31.l
	v_add3_u32 v24, v125, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b16_e32 v19.l, v119.h
	v_cmp_o_f32_e32 vcc_lo, v119, v119
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v119, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v21.h, 0x7fff, v19.h, vcc_lo
	v_permlanex16_b32 v20, v21, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_4) | instid1(VALU_DEP_3)
	v_perm_b32 v19, v20, v21, v85
	v_perm_b32 v20, v20, v21, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v123, v32
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v123, 0, v22, s87
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v22.h, v31.l
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v22.l, v123.h
	v_cmp_o_f32_e32 vcc_lo, v123, v123
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_and_b32_e32 v22, 1, v22
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v121, 0, v21, s86
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v21.h, v31.l
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_add3_u32 v22, v123, v22, 0x7fff
	v_mov_b16_e32 v21.l, v121.h
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_cmp_o_f32_e64 s0, v121, v121
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v21, 1, v21
	v_add3_u32 v21, v121, v21, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s0
	v_cmp_o_f32_e64 s0, v125, v125
	v_permlanex16_b32 v23, v22, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cndmask_b16 v35.l, 0x7fff, v24.h, s0
	v_perm_b32 v21, v23, v22, v85
	v_perm_b32 v22, v23, v22, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v127, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v124, 0, v23, s80
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v23.h, v31.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v23.l, v124.h
	v_cmp_o_f32_e32 vcc_lo, v124, v124
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v124, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v35.h, 0x7fff, v23.h, vcc_lo
	v_permlanex16_b32 v24, v35, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v23, v24, v35, v85
	v_perm_b32 v24, v24, v35, v86
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[40:47], v[17:24], v[1:8]
	.loc	1 886 62 is_stmt 1              ; attention.py:886:62
	v_sub_f32_e32 v17, v122, v32
	v_sub_f32_e32 v18, v48, v32
	v_sub_f32_e32 v20, v36, v32
	v_sub_f32_e32 v22, v108, v32
	v_sub_f32_e32 v24, v38, v32
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v17, v17
	v_exp_f32_e32 v18, v18
	v_exp_f32_e32 v20, v20
	v_exp_f32_e32 v22, v22
	v_exp_f32_e32 v24, v24
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v43, 0, v17, s85
	v_cndmask_b32_e64 v44, 0, v18, s84
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v17.h, v31.l
	v_mov_b16_e32 v18.h, v31.l
	s_delay_alu instid0(TRANS32_DEP_3)
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v46, 0, v20, s5
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v17.l, v43.h
	v_mov_b16_e32 v18.l, v44.h
	v_cmp_o_f32_e32 vcc_lo, v44, v44
	v_cmp_o_f32_e64 s0, v43, v43
	v_mov_b16_e32 v20.l, v46.h
	v_and_b32_e32 v17, 1, v17
	v_and_b32_e32 v18, 1, v18
	v_mov_b16_e32 v20.h, v31.l
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v48, 0, v22, s39
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v22.h, v31.l
	v_add3_u32 v17, v43, v17, 0x7fff
	v_add3_u32 v18, v44, v18, 0x7fff
	v_and_b32_e32 v20, 1, v20
	v_mov_b16_e32 v22.l, v48.h
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v108, 0, v24, s71
	.loc	1 896 30                        ; attention.py:896:30
	v_cndmask_b16 v18.l, 0x7fff, v17.h, s0
	v_cndmask_b16 v18.h, 0x7fff, v18.h, vcc_lo
	v_add3_u32 v20, v46, v20, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v46, v46
	v_and_b32_e32 v22, 1, v22
	v_mov_b16_e32 v24.h, v31.l
	v_permlanex16_b32 v19, v18, s1, 0xfedcba98 op_sel:[1,0]
	v_mov_b16_e32 v24.l, v108.h
	v_cndmask_b16 v20.h, 0x7fff, v20.h, vcc_lo
	v_add3_u32 v22, v48, v22, 0x7fff
	v_cmp_o_f32_e32 vcc_lo, v48, v48
	v_perm_b32 v17, v19, v18, v85
	v_perm_b32 v18, v19, v18, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v19, v39, v32
	.loc	1 896 30                        ; attention.py:896:30
	v_and_b32_e32 v24, 1, v24
	v_cndmask_b16 v22.h, 0x7fff, v22.h, vcc_lo
	v_cmp_o_f32_e32 vcc_lo, v108, v108
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v19, v19
	.loc	1 896 30                        ; attention.py:896:30
	v_add3_u32 v24, v108, v24, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	v_cndmask_b16 v24.h, 0x7fff, v24.h, vcc_lo
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v45, 0, v19, s51
	.loc	1 896 30                        ; attention.py:896:30
	v_mov_b16_e32 v19.h, v31.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v19.l, v45.h
	v_cmp_o_f32_e64 s0, v45, v45
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v19, 1, v19
	v_add3_u32 v19, v45, v19, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v20.l, 0x7fff, v19.h, s0
	v_permlanex16_b32 v21, v20, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1)
	v_perm_b32 v19, v21, v20, v85
	v_perm_b32 v20, v21, v20, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v21, v37, v32
	.loc	1 890 30                        ; attention.py:890:30
	ds_load_b128 v[35:38], v103
	ds_load_b128 v[39:42], v104
	.loc	1 886 49                        ; attention.py:886:49
	v_exp_f32_e32 v21, v21
	s_delay_alu instid0(TRANS32_DEP_1) | instskip(SKIP_1) | instid1(VALU_DEP_2)
	.loc	1 886 33 is_stmt 0              ; attention.py:886:33
	v_cndmask_b32_e64 v47, 0, v21, s75
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v21.h, v31.l
	v_mov_b16_e32 v21.l, v47.h
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_cmp_o_f32_e64 s0, v47, v47
	v_and_b32_e32 v21, 1, v21
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add3_u32 v21, v47, v21, 0x7fff
	v_cndmask_b16 v22.l, 0x7fff, v21.h, s0
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_permlanex16_b32 v23, v22, s1, 0xfedcba98 op_sel:[1,0]
	v_perm_b32 v21, v23, v22, v85
	v_perm_b32 v22, v23, v22, v86
	.loc	1 886 62                        ; attention.py:886:62
	v_sub_f32_e32 v23, v107, v32
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(TRANS32_DEP_1)
	.loc	1 886 49 is_stmt 0              ; attention.py:886:49
	v_exp_f32_e32 v23, v23
	.loc	1 886 33                        ; attention.py:886:33
	v_cndmask_b32_e64 v107, 0, v23, s72
	.loc	1 896 30 is_stmt 1              ; attention.py:896:30
	v_mov_b16_e32 v23.h, v31.l
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b16_e32 v23.l, v107.h
	v_cmp_o_f32_e64 s0, v107, v107
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_and_b32_e32 v23, 1, v23
	v_add3_u32 v23, v107, v23, 0x7fff
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_cndmask_b16 v24.l, 0x7fff, v23.h, s0
	v_permlanex16_b32 v31, v24, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(SKIP_2) | instid1(VALU_DEP_1)
	v_perm_b32 v23, v31, v24, v85
	v_perm_b32 v24, v31, v24, v86
	.loc	1 896 23 is_stmt 0              ; attention.py:896:23
	s_waitcnt lgkmcnt(0)
	v_wmma_f32_16x16x16_bf16 v[1:8], v[35:42], v[17:24], v[1:8]
.Ltmp27:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v33, v34
	v_dual_add_f32 v18, v109, v110 :: v_dual_add_f32 v19, v111, v112
	v_dual_add_f32 v20, v113, v114 :: v_dual_add_f32 v21, v26, v27
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v22, v28, v29 :: v_dual_add_f32 v17, v17, v18
	v_dual_add_f32 v23, v120, v119 :: v_dual_add_f32 v18, v19, v20
	v_add_f32_e32 v20, v106, v30
	s_delay_alu instid0(VALU_DEP_3)
	v_add_f32_e32 v19, v21, v22
	v_dual_add_f32 v21, v115, v116 :: v_dual_add_f32 v22, v117, v118
	v_add_f32_e32 v24, v121, v123
	v_add_f32_e32 v26, v125, v124
	v_dual_add_f32 v27, v43, v44 :: v_dual_add_f32 v28, v45, v46
	v_add_f32_e32 v29, v47, v48
	v_add_f32_e32 v30, v107, v108
	v_dual_add_f32 v20, v20, v21 :: v_dual_add_f32 v21, v22, v23
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v22, v24, v26 :: v_dual_add_f32 v23, v27, v28
	v_add_f32_e32 v24, v29, v30
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_add_f32 v17, v17, v18 :: v_dual_add_f32 v18, v19, v20
	v_dual_add_f32 v19, v21, v22 :: v_dual_mov_b32 v106, v32
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_dual_add_f32 v20, v23, v24 :: v_dual_add_f32 v17, v17, v18
	v_add_f32_e32 v18, v19, v20
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
	v_add_f32_e32 v17, v17, v18
.Ltmp28:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:887:24 ]
	v_permlanex16_b32 v18, v17, s1, 0xfedcba98 op_sel:[1,0]
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp29:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:887:24 ] ]
	v_add_f32_e32 v17, v17, v18
.Ltmp30:
	.loc	1 897 23                        ; attention.py:897:23
	v_fmac_f32_e32 v17, v105, v25
	s_delay_alu instid0(VALU_DEP_1)
	v_mov_b32_e32 v105, v17
	.loc	1 818 13                        ; attention.py:818:13
	s_cbranch_scc0 .LBB0_12
.LBB0_7:                                ; =>This Inner Loop Header: Depth=1
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v17, s69, v63
	.loc	1 822 32                        ; attention.py:822:32
	s_add_i32 s4, s69, s43
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v139, s69, v79
	.loc	1 822 32                        ; attention.py:822:32
	s_mul_i32 s0, s4, s40
	.loc	1 839 25                        ; attention.py:839:25
	v_add_lshl_u32 v135, s4, v79, 1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v17
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v32, s0, v51
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v30, 52, v17
	v_add_nc_u32_e32 v33, 60, v17
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v34, s0, v66
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, vcc_lo
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v18, 4, v17
	v_add_nc_u32_e32 v19, 8, v17
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v35, s0, v67
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v20, 12, v17
	.loc	1 822 32                        ; attention.py:822:32
	v_add_nc_u32_e32 v36, s0, v52
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v21, 16, v17
	v_add_nc_u32_e32 v38, vcc_hi, v32
	v_add_nc_u32_e32 v23, 24, v17
	v_add_nc_u32_e32 v39, s46, v32
	v_add_nc_u32_e32 v22, 20, v17
	v_add_nc_u32_e32 v40, s47, v32
	v_add_nc_u32_e32 v25, 32, v17
	v_add_nc_u32_e32 v42, s49, v32
	v_add_nc_u32_e32 v27, 40, v17
	v_add_nc_u32_e32 v43, s50, v32
	v_add_nc_u32_e32 v24, 28, v17
	v_add_nc_u32_e32 v44, s102, v32
	v_add_nc_u32_e32 v26, 36, v17
	v_add_nc_u32_e32 v46, s53, v32
	v_add_nc_u32_e32 v29, 48, v17
	v_add_nc_u32_e32 v47, s54, v32
	v_add_nc_u32_e32 v28, 44, v17
	v_add_nc_u32_e32 v48, s55, v32
	v_add_nc_u32_e32 v31, 56, v17
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v17, 0x80000000, v32, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s0, s67, v18
	v_add_nc_u32_e32 v37, s44, v32
	v_cmp_gt_i32_e64 s8, s67, v22
	v_cmp_gt_i32_e64 s10, s67, v24
	v_add_nc_u32_e32 v41, s48, v32
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s0
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s12, s67, v26
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v18, 0x80000000, v34, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v19
	v_cmp_gt_i32_e64 s15, s67, v29
	v_add_nc_u32_e32 v45, s82, v32
	v_cmp_gt_i32_e64 s14, s67, v28
	v_cmp_gt_i32_e64 s16, s67, v30
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s67, v31
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v19, 0x80000000, v35, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s6, s67, v20
	v_cmp_gt_i32_e64 s18, s67, v33
	v_readlane_b32 s0, v187, 27
	v_readlane_b32 s1, v187, 28
	v_readlane_b32 s2, v187, 29
	.loc	1 825 30 is_stmt 0              ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s6
	v_readlane_b32 s3, v187, 30
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v20, 0x80000000, v36, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s67, v21
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v136, 4, v135
	v_add_nc_u32_e32 v138, 12, v135
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v144, 8, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v145, 16, v135
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s7
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v141, 2, v139
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v21, 0x80000000, v37, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s8
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s8, s67, v144
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v22, 0x80000000, v38, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s67, v23
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v137, 8, v135
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v150, 14, v139
	v_add_nc_u32_e32 v164, 30, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v146, 20, v135
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s9
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v148, 28, v135
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v23, 0x80000000, v39, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s10
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x5
	buffer_load_u8 v17, v17, s[0:3], 0 offen
	buffer_load_u8 v18, v18, s[0:3], 0 offen
	buffer_load_u8 v19, v19, s[0:3], 0 offen
	buffer_load_u8 v21, v21, s[0:3], 0 offen
	buffer_load_u8 v22, v22, s[0:3], 0 offen
	buffer_load_u8 v23, v23, s[0:3], 0 offen
	v_cndmask_b32_e32 v24, 0x80000000, v40, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s67, v25
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v157, 60, v135
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v143, 6, v139
	v_add_nc_u32_e32 v152, 22, v139
	v_add_nc_u32_e32 v154, 24, v139
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s11
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s11, s67, v150
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v25, 0x80000000, v41, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s12
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v158, 26, v139
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v26, 0x80000000, v42, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s13, s67, v27
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v161, 28, v139
	v_add_nc_u32_e32 v160, 38, v139
	v_add_nc_u32_e32 v163, 40, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v147, 24, v135
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s13
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v149, 40, v135
	.loc	1 823 32                        ; attention.py:823:32
	v_cndmask_b32_e32 v27, 0x80000000, v43, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s15
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v28, 0x80000000, v45 :: v_dual_add_nc_u32 v151, 44, v135
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s14
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x1
	buffer_load_u8 v25, v25, s[0:3], 0 offen
	buffer_load_u8 v28, v28, s[0:3], 0 offen
	v_cndmask_b32_e32 v29, 0x80000000, v44, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s16
	.loc	1 823 32                        ; attention.py:823:32
	v_dual_cndmask_b32 v30, 0x80000000, v46 :: v_dual_add_nc_u32 v153, 48, v135
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s17
	.loc	1 823 32                        ; attention.py:823:32
	s_clause 0x1
	buffer_load_u8 v26, v26, s[0:3], 0 offen
	buffer_load_u8 v30, v30, s[0:3], 0 offen
	v_cndmask_b32_e32 v31, 0x80000000, v47, vcc_lo
	.loc	1 825 30                        ; attention.py:825:30
	s_and_b32 vcc_lo, s96, s18
	.loc	1 825 73 is_stmt 0              ; attention.py:825:73
	v_cmp_gt_i32_e64 s17, s67, v164
	.loc	1 823 32 is_stmt 1              ; attention.py:823:32
	v_cndmask_b32_e32 v32, 0x80000000, v48, vcc_lo
	s_clause 0x5
	buffer_load_u8 v27, v27, s[0:3], 0 offen
	buffer_load_u8 v31, v31, s[0:3], 0 offen
	buffer_load_u8 v20, v20, s[0:3], 0 offen
	buffer_load_u8 v24, v24, s[0:3], 0 offen
	buffer_load_u8 v29, v29, s[0:3], 0 offen
	buffer_load_u8 v32, v32, s[0:3], 0 offen
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s1, s67, v141
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v155, 52, v135
	v_add_nc_u32_e32 v156, 56, v135
	v_add_nc_u32_e32 v159, 0x48, v135
	v_add_nc_u32_e32 v162, 0x4c, v135
	v_add_nc_u32_e32 v165, 0x50, v135
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s7, s67, v143
	v_cmp_gt_i32_e64 s13, s67, v152
	v_cmp_gt_i32_e64 s14, s67, v154
	v_cmp_gt_i32_e64 s15, s67, v158
	v_cmp_gt_i32_e64 s16, s67, v161
	v_cmp_gt_i32_e64 s19, s67, v160
	v_cmp_gt_i32_e64 s20, s67, v163
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v142, 4, v139
	v_add_nc_u32_e32 v140, s69, v80
	v_writelane_b32 v186, s4, 11
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e32 vcc_lo, s67, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v171, 0x80000000, v162, s19
	v_cndmask_b32_e64 v172, 0x80000000, v165, s20
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v162, 60, v139
	v_add_nc_u32_e32 v165, 54, v139
	v_add_nc_u32_e32 v167, 32, v139
	v_add_nc_u32_e32 v169, 18, v139
	v_add_nc_u32_e32 v170, 16, v139
	v_add_nc_u32_e32 v168, 34, v139
	v_add_nc_u32_e32 v166, 52, v139
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s6, s67, v142
	v_cmp_gt_i32_e64 s0, s67, v140
	v_readlane_b32 s72, v186, 3
	v_cmp_gt_i32_e64 s28, s67, v162
	v_cmp_gt_i32_e64 s29, s67, v165
	v_cmp_gt_i32_e64 s30, s67, v167
	v_cmp_gt_i32_e64 s31, s67, v169
	v_cmp_gt_i32_e64 s34, s67, v170
	v_cmp_gt_i32_e64 s33, s67, v168
	v_cmp_gt_i32_e64 s35, s67, v166
	v_readlane_b32 s73, v186, 4
	v_readlane_b32 s74, v186, 5
	v_readlane_b32 s75, v186, 6
	v_readlane_b32 s2, v187, 0
	.loc	1 823 32                        ; attention.py:823:32
	s_waitcnt vmcnt(15)
	ds_store_b8 v69, v17
	s_waitcnt vmcnt(12)
	ds_store_b8 v69, v21 offset:512
	s_waitcnt vmcnt(9)
	ds_store_b8 v69, v25 offset:1024
	s_waitcnt vmcnt(8)
	ds_store_b8 v69, v28 offset:1536
	ds_store_b8 v70, v18
	ds_store_b8 v70, v22 offset:512
	s_waitcnt vmcnt(7)
	ds_store_b8 v70, v26 offset:1024
	s_waitcnt vmcnt(6)
	ds_store_b8 v70, v30 offset:1536
	ds_store_b8 v71, v19
	ds_store_b8 v71, v23 offset:512
	s_waitcnt vmcnt(5)
	ds_store_b8 v71, v27 offset:1024
	s_waitcnt vmcnt(4)
	ds_store_b8 v71, v31 offset:1536
	s_waitcnt vmcnt(3)
	ds_store_b8 v72, v20
	s_waitcnt vmcnt(2)
	ds_store_b8 v72, v24 offset:512
	s_waitcnt vmcnt(1)
	ds_store_b8 v72, v29 offset:1024
	s_waitcnt vmcnt(0)
	ds_store_b8 v72, v32 offset:1536
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_load_2addr_stride64_b64 v[23:26], v73 offset1:1
	ds_load_2addr_stride64_b64 v[107:110], v73 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[111:114], v74 offset1:1
	ds_load_2addr_stride64_b64 v[115:118], v74 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[119:122], v75 offset1:1
	ds_load_2addr_stride64_b64 v[123:126], v75 offset0:2 offset1:3
	ds_load_2addr_stride64_b64 v[127:130], v76 offset1:1
	ds_load_2addr_stride64_b64 v[131:134], v76 offset0:2 offset1:3
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s37, s2, vcc_lo
	s_and_b32 s38, s2, s1
	s_and_b32 s76, s2, s6
	s_and_b32 s100, s2, s7
	s_and_b32 s79, s2, s8
	s_and_b32 s98, s2, s11
	s_and_b32 s52, s2, s34
	s_and_b32 s95, s2, s31
	s_and_b32 s65, s2, s13
	s_and_b32 s92, s2, s14
	s_and_b32 s90, s2, s15
	s_and_b32 s88, s2, s16
	s_and_b32 s97, s2, s33
	s_and_b32 s77, s2, s19
	.loc	1 828 33                        ; attention.py:828:33
	s_waitcnt lgkmcnt(7)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[23:24], v[53:54], v[9:16] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[25:26], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(6)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[107:108], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(5)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[111:112], v[55:56], v[41:48] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[17:24], v[113:114], v[55:56], v[17:24] neg_lo:[1,1,0]
	v_wmma_i32_16x16x16_iu4 v[33:40], v[109:110], v[53:54], v[9:16] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(4)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[115:116], v[55:56], v[25:32] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(3)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[119:120], v[57:58], v[41:48] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v119, 0x80000000, v145, s8
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v145, 10, v139
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[121:122], v[57:58], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(2)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[123:124], v[57:58], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v112, 0x80000000, v136, s1
	v_cndmask_b32_e64 v123, 0x80000000, v148, s11
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s9, s67, v145
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v148, 20, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v136, 0x80000000, v157, s17
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v157, 36, v139
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[117:118], v[55:56], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v121, 0x80000000, v146, s9
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v146, 12, v139
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s12, s67, v148
	v_cmp_gt_i32_e64 s18, s67, v157
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[125:126], v[57:58], v[33:40] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(1)
	v_wmma_i32_16x16x16_iu4 v[41:48], v[127:128], v[59:60], v[41:48] neg_lo:[1,1,0]
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s10, s67, v146
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[17:24], v[129:130], v[59:60], v[17:24] neg_lo:[1,1,0]
	s_waitcnt lgkmcnt(0)
	v_wmma_i32_16x16x16_iu4 v[25:32], v[131:132], v[59:60], v[25:32] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v115, 0x80000000, v138, s7
	v_cndmask_b32_e64 v124, 0x80000000, v149, s12
	v_cndmask_b32_e64 v122, 0x80000000, v147, s10
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v147, 42, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v125, 0x80000000, v151, s13
	v_cndmask_b32_e64 v127, 0x80000000, v153, s14
	v_cndmask_b32_e64 v129, 0x80000000, v155, s15
	v_cndmask_b32_e64 v131, 0x80000000, v156, s16
	v_cndmask_b32_e64 v138, 0x80000000, v159, s18
	.loc	1 819 31                        ; attention.py:819:31
	v_add_nc_u32_e32 v149, 44, v139
	v_add_nc_u32_e32 v151, 46, v139
	v_add_nc_u32_e32 v153, 48, v139
	v_add_nc_u32_e32 v156, 50, v139
	v_add_nc_u32_e32 v155, 56, v139
	v_add_nc_u32_e32 v159, 58, v139
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v132, 0x54, v135
	v_add_lshl_u32 v110, s4, v80, 1
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s21, s67, v147
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v109, 32, v135
	v_add_nc_u32_e32 v113, 36, v135
	v_add_nc_u32_e32 v116, 64, v135
	v_add_nc_u32_e32 v111, 0x44, v135
	.loc	1 828 33                        ; attention.py:828:33
	v_wmma_i32_16x16x16_iu4 v[33:40], v[133:134], v[59:60], v[33:40] neg_lo:[1,1,0]
	.loc	1 838 37                        ; attention.py:838:37
	v_add_nc_u32_e32 v133, 0x58, v135
	v_add_nc_u32_e32 v134, 0x5c, v135
	v_add_nc_u32_e32 v130, 0x60, v135
	v_add_nc_u32_e32 v128, 0x64, v135
	v_add_nc_u32_e32 v108, 0x68, v135
	v_add_nc_u32_e32 v117, 0x6c, v135
	v_add_nc_u32_e32 v126, 0x70, v135
	v_add_nc_u32_e32 v120, 0x74, v135
	v_add_nc_u32_e32 v118, 0x78, v135
	v_cndmask_b32_e32 v107, 0x80000000, v135, vcc_lo
	.loc	1 825 73                        ; attention.py:825:73
	v_cmp_gt_i32_e64 s22, s67, v149
	v_cmp_gt_i32_e64 s23, s67, v151
	v_cmp_gt_i32_e64 s24, s67, v153
	v_cmp_gt_i32_e64 s25, s67, v156
	v_cmp_gt_i32_e64 s26, s67, v155
	v_cmp_gt_i32_e64 s27, s67, v159
	.loc	1 838 37                        ; attention.py:838:37
	v_cndmask_b32_e64 v114, 0x80000000, v137, s6
	v_cndmask_b32_e64 v110, 0x80000000, v110, s0
	v_cndmask_b32_e64 v132, 0x80000000, v132, s21
	v_cndmask_b32_e64 v173, 0x80000000, v133, s22
	v_cndmask_b32_e64 v174, 0x80000000, v134, s23
	v_cndmask_b32_e64 v175, 0x80000000, v130, s24
	v_cndmask_b32_e64 v176, 0x80000000, v128, s25
	v_cndmask_b32_e64 v177, 0x80000000, v126, s26
	v_cndmask_b32_e64 v178, 0x80000000, v120, s27
	v_cndmask_b32_e64 v179, 0x80000000, v118, s28
	v_cndmask_b32_e64 v180, 0x80000000, v117, s29
	v_cndmask_b32_e64 v181, 0x80000000, v116, s30
	v_cndmask_b32_e64 v182, 0x80000000, v113, s31
	v_cndmask_b32_e64 v183, 0x80000000, v109, s34
	v_cndmask_b32_e64 v184, 0x80000000, v111, s33
	v_cndmask_b32_e64 v185, 0x80000000, v108, s35
	s_clause 0x1f
	buffer_load_u16 v118, v107, s[72:75], 0 offen
	buffer_load_u16 v117, v112, s[72:75], 0 offen
	buffer_load_u16 v120, v114, s[72:75], 0 offen
	buffer_load_u16 v116, v115, s[72:75], 0 offen
	buffer_load_u16 v115, v119, s[72:75], 0 offen
	buffer_load_u16 v114, v121, s[72:75], 0 offen
	buffer_load_u16 v113, v122, s[72:75], 0 offen
	buffer_load_u16 v112, v123, s[72:75], 0 offen
	buffer_load_u16 v137, v124, s[72:75], 0 offen
	buffer_load_u16 v135, v125, s[72:75], 0 offen
	buffer_load_u16 v134, v127, s[72:75], 0 offen
	buffer_load_u16 v133, v129, s[72:75], 0 offen
	buffer_load_u16 v131, v131, s[72:75], 0 offen
	buffer_load_u16 v130, v136, s[72:75], 0 offen
	buffer_load_u16 v129, v138, s[72:75], 0 offen
	buffer_load_u16 v128, v171, s[72:75], 0 offen
	buffer_load_u16 v127, v172, s[72:75], 0 offen
	buffer_load_u16 v126, v132, s[72:75], 0 offen
	buffer_load_u16 v124, v173, s[72:75], 0 offen
	buffer_load_u16 v123, v174, s[72:75], 0 offen
	buffer_load_u16 v122, v175, s[72:75], 0 offen
	buffer_load_u16 v121, v176, s[72:75], 0 offen
	buffer_load_u16 v109, v177, s[72:75], 0 offen
	buffer_load_u16 v107, v178, s[72:75], 0 offen
	buffer_load_u16 v108, v179, s[72:75], 0 offen
	buffer_load_u16 v111, v180, s[72:75], 0 offen
	buffer_load_u16 v132, v181, s[72:75], 0 offen
	buffer_load_u16 v138, v182, s[72:75], 0 offen
	buffer_load_u16 v119, v183, s[72:75], 0 offen
	buffer_load_u16 v136, v184, s[72:75], 0 offen
	buffer_load_u16 v125, v185, s[72:75], 0 offen
	buffer_load_u16 v110, v110, s[72:75], 0 offen
	.loc	1 861 25                        ; attention.py:861:25
	s_and_b32 s1, s2, s17
	.loc	1 863 17                        ; attention.py:863:17
	v_cmp_ne_u32_e32 vcc_lo, 1, v77
	.loc	1 861 25                        ; attention.py:861:25
	v_writelane_b32 v186, s1, 12
	s_and_b32 s78, s2, s9
	s_and_b32 s99, s2, s10
	s_and_b32 s94, s2, s12
	s_and_b32 s1, s2, s30
	s_and_b32 s81, s2, s18
	s_and_b32 s86, s2, s20
	s_and_b32 s87, s2, s21
	s_and_b32 s4, s2, s22
	s_and_b32 s80, s2, s23
	s_and_b32 s85, s2, s24
	s_and_b32 s84, s2, s25
	s_and_b32 s51, s2, s35
	s_and_b32 s5, s2, s29
	s_and_b32 s75, s2, s26
	s_and_b32 s39, s2, s27
	s_and_b32 s72, s2, s28
	s_and_b32 s71, s2, s0
	v_writelane_b32 v186, s1, 13
	.loc	1 863 17                        ; attention.py:863:17
	s_cbranch_vccnz .LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e32 vcc_lo, v139, v81
	v_cmp_le_i32_e64 s0, v141, v81
	v_cmp_le_i32_e64 s1, v142, v81
	v_cmp_le_i32_e64 s6, v143, v81
	v_cmp_le_i32_e64 s7, v144, v81
	v_cmp_le_i32_e64 s8, v145, v81
	.loc	1 864 21 is_stmt 0              ; attention.py:864:21
	s_and_b32 s36, vcc_lo, s37
	s_and_b32 s0, s0, s38
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s9, v146, v81
	v_cmp_le_i32_e64 s10, v150, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s1, s1, s76
	s_and_b32 s6, s6, s100
	s_and_not1_b32 s37, s37, exec_lo
	s_and_b32 s36, s36, exec_lo
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s0, s0, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s11, v170, v81
	v_cmp_le_i32_e64 s12, v169, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s7, s7, s79
	s_and_b32 s8, s8, s78
	s_or_b32 s37, s37, s36
	s_or_b32 s38, s38, s0
	s_and_not1_b32 s0, s76, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_not1_b32 s36, s100, exec_lo
	s_and_b32 s6, s6, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s13, v148, v81
	v_cmp_le_i32_e64 s14, v152, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s9, s9, s99
	s_and_b32 s10, s10, s98
	s_or_b32 s76, s0, s1
	s_or_b32 s100, s36, s6
	s_and_not1_b32 s0, s79, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s78, exec_lo
	s_and_b32 s7, s8, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s15, v154, v81
	v_cmp_le_i32_e64 s16, v158, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s11, s11, s52
	s_and_b32 s12, s12, s95
	s_or_b32 s79, s0, s1
	s_or_b32 s78, s6, s7
	s_and_not1_b32 s0, s99, exec_lo
	s_and_b32 s1, s9, exec_lo
	s_and_not1_b32 s6, s98, exec_lo
	s_and_b32 s7, s10, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s17, v161, v81
	v_cmp_le_i32_e64 s18, v164, v81
	v_readlane_b32 s3, v186, 12
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s13, s13, s94
	s_and_b32 s14, s14, s65
	s_or_b32 s99, s0, s1
	s_or_b32 s98, s6, s7
	s_and_not1_b32 s0, s52, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s6, s95, exec_lo
	s_and_b32 s7, s12, exec_lo
	s_and_b32 s15, s15, s92
	s_and_b32 s16, s16, s90
	s_or_b32 s52, s0, s1
	s_or_b32 s95, s6, s7
	s_and_not1_b32 s0, s94, exec_lo
	s_and_b32 s1, s13, exec_lo
	s_and_not1_b32 s6, s65, exec_lo
	s_and_b32 s7, s14, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s19, v167, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s17, s17, s88
	s_and_b32 s18, s18, s3
	v_readlane_b32 s2, v186, 13
	s_or_b32 s94, s0, s1
	s_or_b32 s65, s6, s7
	s_and_not1_b32 s0, s92, exec_lo
	s_and_b32 s1, s15, exec_lo
	s_and_not1_b32 s6, s90, exec_lo
	s_and_b32 s7, s16, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s20, v168, v81
	s_or_b32 s92, s0, s1
	s_or_b32 s90, s6, s7
	s_and_not1_b32 s0, s88, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s3, exec_lo
	s_and_b32 s7, s18, exec_lo
	v_cmp_le_i32_e64 s21, v157, v81
	v_cmp_le_i32_e64 s22, v160, v81
	s_or_b32 s88, s0, s1
	s_or_b32 s0, s6, s7
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s19, s19, s2
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s23, v163, v81
	v_cmp_le_i32_e64 s24, v147, v81
	v_writelane_b32 v186, s0, 12
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s20, s20, s97
	s_and_not1_b32 s0, s2, exec_lo
	s_and_b32 s1, s19, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s25, v149, v81
	v_cmp_le_i32_e64 s26, v151, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s21, s21, s81
	s_and_b32 s22, s22, s77
	s_and_not1_b32 s6, s97, exec_lo
	s_and_b32 s7, s20, exec_lo
	s_or_b32 s0, s0, s1
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s27, v153, v81
	v_cmp_le_i32_e64 s28, v156, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s23, s23, s86
	s_and_b32 s24, s24, s87
	v_writelane_b32 v186, s0, 13
	s_or_b32 s97, s6, s7
	s_and_not1_b32 s0, s81, exec_lo
	s_and_b32 s1, s21, exec_lo
	s_and_not1_b32 s3, s77, exec_lo
	s_and_b32 s6, s22, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s29, v166, v81
	v_cmp_le_i32_e64 s30, v165, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s25, s25, s4
	s_and_b32 s26, s26, s80
	s_or_b32 s81, s0, s1
	s_or_b32 s77, s3, s6
	s_and_not1_b32 s0, s86, exec_lo
	s_and_b32 s1, s23, exec_lo
	s_and_not1_b32 s6, s87, exec_lo
	s_and_b32 s7, s24, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s31, v155, v81
	v_cmp_le_i32_e64 s33, v159, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s27, s27, s85
	s_and_b32 s28, s28, s84
	s_or_b32 s86, s0, s1
	s_or_b32 s87, s6, s7
	s_and_not1_b32 s0, s4, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s80, exec_lo
	s_and_b32 s7, s26, exec_lo
	.loc	1 864 30                        ; attention.py:864:30
	v_cmp_le_i32_e64 s34, v162, v81
	v_cmp_le_i32_e64 s35, v140, v81
	.loc	1 864 21                        ; attention.py:864:21
	s_and_b32 s29, s29, s51
	s_and_b32 s30, s30, s5
	s_or_b32 s4, s0, s1
	s_or_b32 s80, s6, s7
	s_and_not1_b32 s0, s85, exec_lo
	s_and_b32 s1, s27, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s7, s28, exec_lo
	s_and_b32 s31, s31, s75
	s_and_b32 s33, s33, s39
	s_or_b32 s85, s0, s1
	s_or_b32 s84, s6, s7
	s_and_not1_b32 s0, s51, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s5, exec_lo
	s_and_b32 s7, s30, exec_lo
	s_and_b32 s34, s34, s72
	s_and_b32 s35, s35, s71
	s_or_b32 s51, s0, s1
	s_or_b32 s5, s6, s7
	s_and_not1_b32 s0, s75, exec_lo
	s_and_b32 s1, s31, exec_lo
	s_and_not1_b32 s6, s39, exec_lo
	s_and_b32 s7, s33, exec_lo
	s_or_b32 s75, s0, s1
	s_or_b32 s39, s6, s7
	s_and_not1_b32 s0, s72, exec_lo
	s_and_b32 s1, s34, exec_lo
	s_and_not1_b32 s6, s71, exec_lo
	s_and_b32 s7, s35, exec_lo
	s_or_b32 s72, s0, s1
	s_or_b32 s71, s6, s7
.LBB0_9:                                ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 865 17 is_stmt 1              ; attention.py:865:17
	s_and_not1_b32 vcc_lo, exec_lo, s89
	s_cbranch_vccnz .LBB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v170, v83
	v_cmp_ge_i32_e64 s9, v143, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s10, v143, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s17, v150, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s18, v150, v84
	v_writelane_b32 v186, s2, 14
	v_cmp_le_i32_e64 s2, v170, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s31, v161, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s33, v161, v84
	s_mov_b32 s36, s68
	s_mov_b32 s68, s48
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v186, s2, 15
	v_cmp_ge_i32_e64 s2, v169, v83
	v_cmp_ge_i32_e64 s48, v151, v83
	v_cmp_ge_i32_e64 s15, v146, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s16, v146, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s9, s10
	.loc	1 867 30                        ; attention.py:867:30
	v_writelane_b32 v186, s2, 16
	v_cmp_le_i32_e64 s2, v169, v84
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s1, v141, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s73, v141, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s11, v144, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s12, v144, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_writelane_b32 v186, s2, 17
	v_cmp_ge_i32_e64 s2, v167, v83
	v_cmp_ge_i32_e64 s3, v145, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s14, v145, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s23, v148, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s24, v148, v84
	v_writelane_b32 v186, s2, 18
	v_cmp_le_i32_e64 s2, v167, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s25, v152, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s26, v152, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s29, v158, v83
	v_writelane_b32 v186, s5, 19
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s30, v158, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s40, v157, v83
	s_mov_b32 s20, s47
	v_cmp_ge_i32_e64 s47, v149, v83
	v_writelane_b32 v186, s51, 20
	s_mov_b32 s22, s65
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s6, v149, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s65, s10, s100
	s_and_b32 s10, s17, s18
	v_writelane_b32 v186, s2, 21
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v168, v83
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s17, s31, s33
	s_and_b32 s15, s15, s16
	s_and_b32 s1, s1, s73
	s_and_b32 s11, s11, s12
	v_writelane_b32 v186, s2, 22
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v168, v84
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s12, s3, s14
	s_and_b32 s14, s23, s24
	s_and_b32 s23, s29, s30
	v_writelane_b32 v186, s39, 23
	s_mov_b32 s39, s90
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s90, v166, v84
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s30, s47, s6
	s_mov_b32 s19, s96
	v_writelane_b32 v186, s52, 24
	s_mov_b32 s52, s99
	s_mov_b32 s99, s41
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s41, v157, v84
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s73, s15, s52
	v_writelane_b32 v186, s2, 25
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s2, v166, v83
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s15, s25, s26
	s_and_b32 s26, s40, s41
	s_mov_b32 s5, s37
	v_writelane_b32 v186, s71, 26
	s_mov_b32 s37, s69
	s_mov_b32 s69, s49
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s49, v153, v83
	s_mov_b32 s96, s66
	v_writelane_b32 v186, s2, 27
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s2, v151, v84
	s_mov_b32 s66, s60
	v_cmp_le_i32_e64 s60, v153, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s70, v139, v83
	.loc	1 867 21                        ; attention.py:867:21
	v_readlane_b32 s6, v186, 21
	s_and_b32 s31, s48, s2
	v_readlane_b32 s2, v186, 27
	s_mov_b32 s48, s68
	s_mov_b32 s68, s36
	.loc	1 867 30 is_stmt 0              ; attention.py:867:30
	v_cmp_le_i32_e64 s0, v139, v84
	s_mov_b32 s21, s53
	.loc	1 867 21                        ; attention.py:867:21
	s_and_b32 s40, s2, s90
	v_readlane_b32 s2, v186, 18
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s53, v155, v83
	s_mov_b32 s13, s94
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s94, v155, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s29, s49, s60
	s_and_b32 s36, s2, s6
	v_readlane_b32 s2, v186, 22
	v_readlane_b32 s6, v186, 25
	s_mov_b32 s60, s66
	s_mov_b32 s66, s96
	s_mov_b32 s49, s69
	s_mov_b32 s69, s37
	s_mov_b32 s96, s19
	s_and_b32 s37, s2, s6
	v_readlane_b32 s6, v186, 16
	v_readlane_b32 s19, v186, 17
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s7, v142, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s8, v142, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s34, v164, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s35, v164, v84
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s83, v165, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s91, v165, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s0, s70, s0
	s_and_b32 s33, s53, s94
	s_mov_b32 s53, s21
	s_and_b32 s21, s6, s19
	v_readlane_b32 s6, v186, 14
	v_readlane_b32 s19, v186, 15
	s_and_b32 s8, s7, s8
	s_and_b32 s0, s0, s5
	s_and_b32 s1, s1, s38
	s_and_b32 s8, s8, s76
	s_mov_b32 s47, s20
	s_and_b32 s20, s21, s95
	s_and_b32 s21, s37, s97
	s_and_not1_b32 s37, s5, exec_lo
	s_and_b32 s0, s0, exec_lo
	s_and_not1_b32 s38, s38, exec_lo
	s_and_b32 s1, s1, exec_lo
	s_and_b32 s16, s34, s35
	s_and_b32 s35, s83, s91
	v_readlane_b32 s83, v186, 24
	s_and_b32 s11, s11, s79
	s_and_b32 s12, s12, s78
	s_and_b32 s19, s6, s19
	s_or_b32 s37, s37, s0
	s_or_b32 s38, s38, s1
	s_and_not1_b32 s0, s76, exec_lo
	s_and_b32 s1, s8, exec_lo
	s_and_not1_b32 s6, s100, exec_lo
	s_and_b32 s8, s65, exec_lo
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s27, v154, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s28, v154, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s10, s10, s98
	s_or_b32 s76, s0, s1
	s_or_b32 s100, s6, s8
	s_and_not1_b32 s0, s79, exec_lo
	s_and_b32 s1, s11, exec_lo
	s_and_not1_b32 s6, s78, exec_lo
	s_and_b32 s8, s12, exec_lo
	s_and_b32 s19, s19, s83
	s_or_b32 s79, s0, s1
	s_or_b32 s78, s6, s8
	s_and_not1_b32 s0, s52, exec_lo
	s_and_b32 s1, s73, exec_lo
	s_and_not1_b32 s6, s98, exec_lo
	s_and_b32 s8, s10, exec_lo
	v_readlane_b32 s3, v186, 12
	s_mov_b32 s104, s44
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s44, v163, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s45, v163, v84
	s_mov_b32 s74, s92
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s14, s14, s13
	s_and_b32 s15, s15, s22
	s_and_b32 s18, s27, s28
	s_mov_b32 s41, s99
	s_or_b32 s99, s0, s1
	s_or_b32 s98, s6, s8
	s_and_not1_b32 s0, s83, exec_lo
	s_and_b32 s1, s19, exec_lo
	s_and_not1_b32 s6, s95, exec_lo
	s_and_b32 s8, s20, exec_lo
	s_mov_b32 s92, s54
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s54, v159, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s9, v159, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s18, s18, s74
	s_and_b32 s23, s23, s39
	s_or_b32 s52, s0, s1
	s_or_b32 s95, s6, s8
	s_and_not1_b32 s0, s13, exec_lo
	s_and_b32 s1, s14, exec_lo
	s_and_not1_b32 s6, s22, exec_lo
	s_and_b32 s8, s15, exec_lo
	s_mov_b32 s51, s55
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s55, v162, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s7, v162, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s17, s17, s88
	s_and_b32 s16, s16, s3
	v_readlane_b32 s2, v186, 13
	s_or_b32 s94, s0, s1
	s_or_b32 s65, s6, s8
	s_and_not1_b32 s0, s74, exec_lo
	s_and_b32 s1, s18, exec_lo
	s_and_not1_b32 s6, s39, exec_lo
	s_and_b32 s8, s23, exec_lo
	s_mov_b32 s101, s42
	.loc	1 866 30 is_stmt 1              ; attention.py:866:30
	v_cmp_ge_i32_e64 s42, v160, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s103, v160, v84
	s_mov_b32 s71, s46
	.loc	1 866 30                        ; attention.py:866:30
	v_cmp_ge_i32_e64 s46, v147, v83
	s_mov_b32 s89, s50
	v_cmp_ge_i32_e64 s50, v156, v83
	s_mov_b32 s102, s56
	v_cmp_ge_i32_e64 s56, v140, v83
	.loc	1 867 30                        ; attention.py:867:30
	v_cmp_le_i32_e64 s57, v147, v84
	v_cmp_le_i32_e32 vcc_lo, v156, v84
	v_cmp_le_i32_e64 s70, v140, v84
	.loc	1 867 21 is_stmt 0              ; attention.py:867:21
	s_and_b32 s25, s44, s45
	s_mov_b32 s44, s104
	v_readlane_b32 s104, v186, 20
	s_and_b32 s9, s54, s9
	s_mov_b32 s54, s92
	s_or_b32 s92, s0, s1
	s_or_b32 s90, s6, s8
	s_and_not1_b32 s0, s88, exec_lo
	s_and_b32 s1, s17, exec_lo
	s_and_not1_b32 s6, s3, exec_lo
	s_and_b32 s8, s16, exec_lo
	s_and_b32 s7, s55, s7
	s_or_b32 s88, s0, s1
	s_or_b32 s0, s6, s8
	s_and_b32 s36, s36, s2
	s_and_b32 s24, s46, s57
	s_mov_b32 s46, s71
	s_and_b32 s27, s42, s103
	s_mov_b32 s42, s101
	s_and_b32 s28, s50, vcc_lo
	s_mov_b32 s50, s89
	v_readlane_b32 s101, v186, 23
	s_and_b32 s34, s56, s70
	v_readlane_b32 s70, v186, 7
	s_mov_b32 s56, s102
	s_and_b32 s7, s7, s72
	s_mov_b32 vcc_lo, s72
	v_readlane_b32 s102, v186, 10
	v_readlane_b32 s103, v186, 19
	v_readlane_b32 s89, v186, 9
	s_and_b32 s71, s40, s104
	v_readlane_b32 s40, v186, 8
	v_readlane_b32 s72, v186, 26
	v_writelane_b32 v186, s0, 12
	s_and_not1_b32 s0, s2, exec_lo
	s_and_b32 s1, s36, exec_lo
	s_and_b32 s26, s26, s81
	s_and_b32 s27, s27, s77
	s_and_not1_b32 s6, s97, exec_lo
	s_and_b32 s8, s21, exec_lo
	s_or_b32 s0, s0, s1
	s_and_b32 s25, s25, s86
	s_and_b32 s24, s24, s87
	v_writelane_b32 v186, s0, 13
	s_or_b32 s97, s6, s8
	s_and_not1_b32 s0, s81, exec_lo
	s_and_b32 s1, s26, exec_lo
	s_and_not1_b32 s3, s77, exec_lo
	s_and_b32 s6, s27, exec_lo
	s_and_b32 s30, s30, s4
	s_and_b32 s31, s31, s80
	s_or_b32 s81, s0, s1
	s_or_b32 s77, s3, s6
	s_and_not1_b32 s0, s86, exec_lo
	s_and_b32 s1, s25, exec_lo
	s_and_not1_b32 s6, s87, exec_lo
	s_and_b32 s8, s24, exec_lo
	s_and_b32 s29, s29, s85
	s_and_b32 s28, s28, s84
	s_or_b32 s86, s0, s1
	s_or_b32 s87, s6, s8
	s_and_not1_b32 s0, s4, exec_lo
	s_and_b32 s1, s30, exec_lo
	s_and_not1_b32 s6, s80, exec_lo
	s_and_b32 s8, s31, exec_lo
	s_and_b32 s35, s35, s103
	s_or_b32 s4, s0, s1
	s_or_b32 s80, s6, s8
	s_and_not1_b32 s0, s85, exec_lo
	s_and_b32 s1, s29, exec_lo
	s_and_not1_b32 s6, s84, exec_lo
	s_and_b32 s8, s28, exec_lo
	s_and_b32 s33, s33, s75
	s_and_b32 s9, s9, s101
	s_or_b32 s85, s0, s1
	s_or_b32 s84, s6, s8
	s_and_not1_b32 s0, s104, exec_lo
	s_and_b32 s1, s71, exec_lo
	s_and_not1_b32 s6, s103, exec_lo
	s_and_b32 s8, s35, exec_lo
	s_mov_b32 s55, s51
	s_and_b32 s34, s34, s72
	s_or_b32 s51, s0, s1
	s_or_b32 s5, s6, s8
	s_and_not1_b32 s0, s75, exec_lo
	s_and_b32 s1, s33, exec_lo
	s_and_not1_b32 s6, s101, exec_lo
	s_and_b32 s8, s9, exec_lo
	s_or_b32 s75, s0, s1
	s_or_b32 s39, s6, s8
	s_and_not1_b32 s0, vcc_lo, exec_lo
	s_and_b32 s1, s7, exec_lo
	s_and_not1_b32 s6, s72, exec_lo
	s_and_b32 s7, s34, exec_lo
	s_or_b32 s72, s0, s1
	s_or_b32 s71, s6, s7
	s_branch .LBB0_6
.LBB0_11:
	.loc	1 0 21                          ; attention.py:0:21
	v_mov_b32_e32 v8, 0
	s_delay_alu instid0(VALU_DEP_1)
	v_dual_mov_b32 v32, 0xff800000 :: v_dual_mov_b32 v7, v8
	v_mov_b32_e32 v6, v8
	v_mov_b32_e32 v5, v8
	v_mov_b32_e32 v4, v8
	v_mov_b32_e32 v3, v8
	s_waitcnt vmcnt(0)
	v_mov_b32_e32 v2, v8
	v_mov_b32_e32 v1, v8
	v_mov_b32_e32 v17, v8
	s_branch .LBB0_13
.LBB0_12:                               ; %Flow
	v_readlane_b32 s16, v187, 1
	v_readlane_b32 s26, v187, 6
	v_readlane_b32 s27, v187, 7
	v_readlane_b32 s28, v187, 5
	v_readlane_b32 s17, v187, 2
	v_readlane_b32 s18, v187, 3
	v_readlane_b32 s19, v187, 4
.LBB0_13:                               ; %._crit_edge
	.loc	1 1028 26 is_stmt 1             ; attention.py:1028:26
	v_cmp_eq_u32_e32 vcc_lo, 0, v68
	.loc	1 1025 31                       ; attention.py:1025:31
	s_mul_i32 s1, s28, s27
	.loc	1 1024 32                       ; attention.py:1024:32
	s_add_i32 s0, s41, 2
	.loc	1 1025 31                       ; attention.py:1025:31
	s_add_i32 s1, s26, s1
	.loc	1 1036 13                       ; attention.py:1036:13
	s_mov_b32 s3, exec_lo
	.loc	1 1028 17                       ; attention.py:1028:17
	v_dual_cndmask_b32 v9, 0xff800000, v32 :: v_dual_cndmask_b32 v2, 0, v2
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v1, 0, v1 :: v_dual_cndmask_b32 v14, 0, v6
	v_dual_cndmask_b32 v13, 0, v5 :: v_dual_cndmask_b32 v16, 0, v8
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp31:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_dual_mov_b32 v10, v9 :: v_dual_cndmask_b32 v11, 0, v17
.Ltmp32:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v9, v9, v9 :: v_dual_cndmask_b32 v12, 0, v4
.Ltmp33:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_dual_cndmask_b32 v15, 0, v7 :: v_dual_mov_b32 v6, v1
	s_delay_alu instid0(VALU_DEP_3)
.Ltmp34:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp35:
	.loc	1 1033 17                       ; attention.py:1033:17
	v_cndmask_b32_e32 v3, 0, v3, vcc_lo
	.loc	1 1025 30                       ; attention.py:1025:30
	s_mul_i32 s0, s1, s0
.Ltmp36:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v18, v14
	v_mov_b32_dpp v6, v6 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp37:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v10, v10 :: v_dual_mov_b32 v5, v11
.Ltmp38:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v7, v2 :: v_dual_mov_b32 v8, v3
	v_mov_b32_e32 v20, v16
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp39:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v4, v9, v4
.Ltmp40:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v5, v5 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4)
.Ltmp41:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	v_mov_b32_dpp v18, v18 row_xmask:8 row_mask:0xf bank_mask:0xf
.Ltmp42:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v11, v5
.Ltmp43:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v9, v4
.Ltmp44:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v3, v3, v8
	v_dual_add_f32 v1, v1, v6 :: v_dual_add_f32 v2, v2, v7
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp45:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_e32 v6, v5
.Ltmp46:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp47:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v20, v20 row_xmask:8 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp48:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp49:
	.loc	2 170 12 is_stmt 1              ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v9, v9
.Ltmp50:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v10, v3
.Ltmp51:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
	s_delay_alu instid0(VALU_DEP_3) | instskip(SKIP_1) | instid1(VALU_DEP_4)
.Ltmp52:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v4, v4, v8 :: v_dual_mov_b32 v7, v1
.Ltmp53:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v5, v5, v6
.Ltmp54:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp55:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_e32 v6, v4
.Ltmp56:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v7, v7 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp57:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v6, v6 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp58:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v7
.Ltmp59:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v9, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp60:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v6, v6, v6
.Ltmp61:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v8, v1
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v9, v9 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v8, v8 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp62:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v2, v2, v9 :: v_dual_add_f32 v9, v3, v10
.Ltmp63:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_dual_mov_b32 v3, v5 :: v_dual_mov_b32 v10, v2
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp64:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v1, v1, v8
.Ltmp65:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v3, v3 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp66:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v8, v4, v6
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp67:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp68:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v7, v5, v3
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp69:
	.loc	2 263 12 is_stmt 0              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v3, v2, v10 :: v_dual_mov_b32 v2, v1
.Ltmp70:
	.loc	2 293 12 is_stmt 1              ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v11, v9 :: v_dual_mov_b32 v10, v8
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v2, v2 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v11, v11 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp71:
	.loc	2 191 16                        ; standard.py:191:16 @[ attention.py:1027:29 ]
	v_mov_b32_dpp v10, v10 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp72:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v4, v9, v11 :: v_dual_mov_b32 v9, v7
.Ltmp73:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v11, v13
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_dual_mov_b32 v5, v3 :: v_dual_mov_b32 v6, v4
.Ltmp74:
	.loc	2 293 12 is_stmt 0              ; standard.py:293:12 @[ attention.py:1031:29 ]
	v_mov_b32_dpp v9, v9 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp75:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v11, v11 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v5, v5 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v6, v6 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp76:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v11, v13, v11
	v_add_f32_e32 v13, v14, v18
	s_delay_alu instid0(VALU_DEP_1) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp77:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v19, v15 :: v_dual_mov_b32 v18, v13
	v_mov_b32_dpp v19, v19 row_xmask:8 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v17, v12
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v18, v18 row_xmask:4 row_mask:0xf bank_mask:0xf
.Ltmp78:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v14, v15, v19 :: v_dual_add_f32 v15, v16, v20
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
.Ltmp79:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_dual_mov_b32 v19, v14 :: v_dual_mov_b32 v20, v15
	v_mov_b32_e32 v16, v11
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_3)
.Ltmp80:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v12, v12, v17
.Ltmp81:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v19, v19 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v20, v20 row_xmask:4 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v16, v16 row_xmask:4 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_e32 v17, v12
.Ltmp82:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v11, v11, v16 :: v_dual_add_f32 v16, v13, v18
	v_add_f32_e32 v18, v14, v19
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_1)
.Ltmp83:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_dpp v17, v17 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp84:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v13, v12, v17
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_dual_add_f32 v19, v15, v20 :: v_dual_mov_b32 v20, v16
.Ltmp85:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_dual_mov_b32 v14, v13 :: v_dual_mov_b32 v21, v18
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_e32 v22, v19
	v_mov_b32_dpp v20, v20 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v14, v14 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v21, v21 row_xmask:2 row_mask:0xf bank_mask:0xf
	v_mov_b32_e32 v15, v11
	v_mov_b32_dpp v22, v22 row_xmask:2 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_2) | instskip(NEXT) | instid1(VALU_DEP_2)
	v_mov_b32_dpp v15, v15 row_xmask:2 row_mask:0xf bank_mask:0xf
.Ltmp86:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_add_f32_e32 v17, v19, v22
	s_delay_alu instid0(VALU_DEP_2) | instskip(SKIP_1) | instid1(VALU_DEP_3)
	v_add_f32_e32 v11, v11, v15
	v_dual_add_f32 v15, v16, v20 :: v_dual_add_f32 v16, v18, v21
.Ltmp87:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v20, v17
.Ltmp88:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_or_b32_e32 v21, v63, v49
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_4)
.Ltmp89:
	.loc	2 293 12                        ; standard.py:293:12 @[ attention.py:1032:29 ]
	v_mov_b32_e32 v12, v11
	v_dual_mov_b32 v18, v15 :: v_dual_mov_b32 v19, v16
	s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
	v_mov_b32_dpp v20, v20 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v12, v12 row_xmask:1 row_mask:0xf bank_mask:0xf
	s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_4)
	v_mov_b32_dpp v18, v18 row_xmask:1 row_mask:0xf bank_mask:0xf
	v_mov_b32_dpp v19, v19 row_xmask:1 row_mask:0xf bank_mask:0xf
.Ltmp90:
	.loc	1 1036 13                       ; attention.py:1036:13
	v_cmpx_eq_u32_e32 0, v21
	s_cbranch_execz .LBB0_15
; %bb.14:
.Ltmp91:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_dual_max_f32 v10, v10, v10 :: v_dual_max_f32 v21, v8, v8
.Ltmp92:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_ashr_i32 s1, s0, 31
.Ltmp93:
	.loc	2 263 12                        ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1031:29 ] ]
	v_add_f32_e32 v8, v7, v9
.Ltmp94:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_lshl_b64 s[4:5], s[0:1], 2
	v_mov_b32_e32 v9, 0
.Ltmp95:
	.loc	2 170 12                        ; standard.py:170:12 @[ standard.py:191:16 @[ attention.py:1027:29 ] ]
	v_max_f32_e32 v7, v21, v10
.Ltmp96:
	.loc	1 1036 13                       ; attention.py:1036:13
	s_add_u32 s4, s16, s4
	s_addc_u32 s5, s17, s5
	.loc	1 1037 13                       ; attention.py:1037:13
	global_store_b64 v9, v[7:8], s[4:5]
.LBB0_15:                               ; %.critedge
	.loc	1 0 13 is_stmt 0                ; attention.py:0:13
	s_or_b32 exec_lo, exec_lo, s3
.Ltmp97:
	.loc	2 263 12 is_stmt 1              ; standard.py:263:12 @[ standard.py:293:12 @[ attention.py:1032:29 ] ]
	v_dual_add_f32 v7, v15, v18 :: v_dual_lshlrev_b32 v10, 2, v0
	v_dual_add_f32 v9, v17, v20 :: v_dual_add_f32 v8, v16, v19
	v_add_f32_e32 v16, v13, v14
	v_dual_add_f32 v15, v4, v6 :: v_dual_add_f32 v14, v3, v5
	v_dual_add_f32 v13, v1, v2 :: v_dual_lshlrev_b32 v0, 5, v0
	v_dual_add_f32 v6, v11, v12 :: v_dual_and_b32 v3, 0xc0, v10
.Ltmp98:
	.loc	1 1038 13                       ; attention.py:1038:13
	v_cmp_eq_u32_e32 vcc_lo, 0, v65
	v_and_b32_e32 v4, 0xe0, v64
	v_and_b32_e32 v1, 28, v64
	s_delay_alu instid0(VALU_DEP_4)
	v_add_nc_u32_e32 v2, 0, v3
	s_waitcnt lgkmcnt(0)
	s_and_b32 vcc_lo, vcc_lo, s70
	v_and_b32_e32 v0, 32, v0
	v_add_nc_u32_e32 v3, 0, v4
	s_barrier
	ds_store_b128 v3, v[13:16]
	ds_store_b128 v3, v[6:9] offset:16
	v_add3_u32 v0, v2, v0, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	.loc	1 1039 17                       ; attention.py:1039:17
	v_add_nc_u32_e32 v1, s0, v50
	.loc	1 1038 13                       ; attention.py:1038:13
	s_and_b32 s17, s17, 0xffff
	ds_load_b32 v0, v0
	s_mov_b32 s19, 0x31027000
	s_mov_b32 s18, 0x7ffffffe
	v_lshl_add_u32 v1, v1, 2, 8
	s_delay_alu instid0(VALU_DEP_1)
	v_cndmask_b32_e32 v1, 0x80000000, v1, vcc_lo
	s_waitcnt lgkmcnt(0)
	buffer_store_b32 v0, v1, s[16:19], 0 offen
	.loc	1 691 5                         ; attention.py:691:5
	s_nop 0
	s_sendmsg sendmsg(MSG_DEALLOC_VGPRS)
	s_endpgm
.Ltmp99:
	.section	.rodata,"a",@progbits
	.p2align	6, 0x0
	.amdhsa_kernel amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
		.amdhsa_next_free_vgpr 188
		.amdhsa_next_free_sgpr 105
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
	.size	amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8, .Lfunc_end0-amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
	.cfi_endproc
                                        ; -- End function
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_vgpr, 188
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_agpr, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.numbered_sgpr, 105
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.num_named_barrier, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.private_seg_size, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_vcc, 1
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.uses_flat_scratch, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_dyn_sized_stack, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_recursion, 0
	.set amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.has_indirect_call, 0
	.section	.AMDGPU.csdata,"",@progbits
; Kernel info:
; codeLenInByte = 14796
; TotalNumSgprs: 107
; NumVgprs: 188
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 0
; VGPRBlocks: 23
; NumSGPRsForWavesPerEU: 107
; NumVGPRsForWavesPerEU: 188
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
	.byte	1                               ; DW_CHILDREN_yes
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
	.byte	7                               ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0xc5 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x30:0x9f DW_TAG_subprogram
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       ; DW_AT_high_pc
	.long	42                              ; DW_AT_abstract_origin
	.byte	4                               ; Abbrev [4] 0x41:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	883                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x4e:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x5b:0x23 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp27                         ; DW_AT_low_pc
	.long	.Ltmp30-.Ltmp27                 ; DW_AT_high_pc
	.byte	1                               ; DW_AT_call_file
	.short	887                             ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x70:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x7e:0x1a DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1027                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x8b:0xc DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	191                             ; DW_AT_call_line
	.byte	16                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x98:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1032                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xa5:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	12                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb3:0x1b DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	1                               ; DW_AT_call_file
	.short	1031                            ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xc0:0xd DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
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
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
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
	.asciz	"amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8"                        ; string offset=88 ; amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
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
        .size:           4
        .value_kind:     by_value
      - .offset:         128
        .size:           1
        .value_kind:     by_value
      - .offset:         129
        .size:           1
        .value_kind:     by_value
      - .offset:         132
        .size:           4
        .value_kind:     by_value
      - .offset:         136
        .size:           4
        .value_kind:     by_value
      - .offset:         140
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
    .name:           amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8
    .private_segment_fixed_size: 0
    .sgpr_count:     107
    .sgpr_spill_count: 64
    .symbol:         amd_strix_halo_gfx1151_attention_fwd_int4xbf16_none_runtime_float32_d64_dv64_shaperuntime_bm16_bn64_w4_s1_ds8.kd
    .uniform_work_group_size: 1
    .uses_dynamic_stack: false
    .vgpr_count:     188
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
